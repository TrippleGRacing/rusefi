/*
 * @file test_nissan_vq_vvt.cpp
 *
 *  Created on: Jul 2, 2021
 * @author Andrey Belomutskiy, (c) 2012-2021
 */

#include "engine_test_helper.h"
#include "trigger_nissan.h"
#include "nissan_vq.h"

class TriggerCallback {
public:
	Engine *engine;
	int toothIndex;
	TriggerWaveform *form;
	bool isVvt;
	int vvtBankIndex;
};

static void func(TriggerCallback *callback) {
	int formIndex = callback->toothIndex % callback->form->getSize();
	Engine *engine = callback->engine;
	EXPAND_Engine;

	int value = callback->form->wave.channels[0].getState(formIndex);
	efitick_t nowNt = getTimeNowNt();
	if (callback->isVvt) {
		trigger_value_e v = value ? TV_RISE : TV_FALL;
		hwHandleVvtCamSignal(v, nowNt, callback->vvtBankIndex * CAMS_PER_BANK PASS_ENGINE_PARAMETER_SUFFIX);
	} else {
		handleShaftSignal(0, value, nowNt PASS_ENGINE_PARAMETER_SUFFIX);
	}
}


static void scheduleTriggerEvents(TriggerWaveform *shape,
		float timeScale,
		int count,
		bool isVvt,
		int vvtBankIndex,
		int vvtOffset
		DECLARE_ENGINE_PARAMETER_SUFFIX) {
	int totalIndex = 0;

	/**
	 * yet another approach to trigger testing: let's schedule a huge list of events from heap
	 * and then execute those one
	 */
	for (int r = 0; r < count; r++) {
		for (size_t i = 0; i < shape->getSize(); i++) {
			float angle = vvtOffset + shape->getAngle(totalIndex);
			TriggerCallback *param = new TriggerCallback();
			param->engine = engine;
			param->toothIndex = totalIndex;
			param->form = shape;
			param->isVvt = isVvt;
			param->vvtBankIndex = vvtBankIndex;

			scheduling_s *sch = new scheduling_s();
			engine->executor.scheduleByTimestamp(sch, timeScale * 1000 * angle, { func, param });
			totalIndex++;
		}
	}
}


TEST(nissan, vq_vvt) {
	WITH_ENGINE_TEST_HELPER (HELLEN_121_NISSAN);
	engineConfiguration->isIgnitionEnabled = false;
	engineConfiguration->isInjectionEnabled = false;

	int cyclesCount = 36;

	{
		static TriggerWaveform crank;
		initializeNissanVQcrank(&crank);

		scheduleTriggerEvents(&crank,
				/* timeScale */ 1,
				cyclesCount, false, -1, 0 PASS_ENGINE_PARAMETER_SUFFIX);
	}
	// crank being FOUR_STROKE_THREE_TIMES_CRANK_SENSOR means 120 degrees cycle duration which does not match cam shaft cycle duration
	float vvtTimeScale = 1 / 1.5;

	angle_t testVvtOffset = 2;

	{
		static TriggerWaveform vvt;
		initializeNissanVQvvt(&vvt);

		scheduleTriggerEvents(&vvt,
				/* timeScale */ vvtTimeScale,
				cyclesCount / 6, true,
				/* vvtBankIndex */ 0,
				/* vvtOffset */ testVvtOffset
				PASS_ENGINE_PARAMETER_SUFFIX);
	}

	{
		static TriggerWaveform vvt;
		initializeNissanVQvvt(&vvt);

		scheduleTriggerEvents(&vvt,
				/* timeScale */ vvtTimeScale,
				cyclesCount / 6, true,
				/* vvtBankIndex */1,
				/* vvtOffset */ testVvtOffset + NISSAN_VQ_CAM_OFFSET
				PASS_ENGINE_PARAMETER_SUFFIX);
	}

	scheduling_s *head;
	while ((head = engine->executor.getHead()) != nullptr) {
		eth.setTimeAndInvokeEventsUs(head->momentX);
	}

	ASSERT_EQ(250, GET_RPM());

	TriggerCentral *tc = &engine->triggerCentral;


	ASSERT_TRUE(tc->vvtState[0][0].getShaftSynchronized());
	ASSERT_TRUE(tc->vvtState[1][0].getShaftSynchronized());

	ASSERT_NEAR(-testVvtOffset, tc->vvtPosition[0][0], EPS2D);
	ASSERT_NEAR(0/*-testVvtOffset*/, tc->vvtPosition[1][0], EPS2D);

//todo	EXPECT_EQ(0, eth.recentWarnings()->getCount());
}