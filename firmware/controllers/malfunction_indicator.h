/**
 * @file malfunction_indicator.h
 * @brief We can blink out OBD-II error codes using Malfunction Indicator Light (MIL)
 *
 *
 * @date Dec 20, 2013
 * @author Konstantin Nikonenko
 * @author Andrey Belomutskiy, (c) 2012-2015
 */

#ifndef MALFUNCTION_INDICATOR_H_
#define MALFUNCTION_INDICATOR_H_

#include "main.h"
#include "engine.h"

#if EFI_MALFUNCTIONAL_INDICATOR

void initMalfunctionIndicator(Engine *engine);

#endif /* EFI_MALFUNCTIONAL_INDICATOR */

#endif /* MALFUNCTION_INDICATOR_H_ */
