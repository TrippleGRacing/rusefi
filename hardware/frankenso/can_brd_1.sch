EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:176122-6
LIBS:art-electro-conn
LIBS:art-electro-conn_2
LIBS:art-electro-ic
LIBS:art-electro-max
LIBS:art-electro-power
LIBS:LMV324IDR
LIBS:logo
LIBS:logo_flipped
LIBS:MAX9926-9927
LIBS:max9939
LIBS:max31855
LIBS:stm32
LIBS:tc4427
LIBS:lm2596
LIBS:mos_p_numbered-pins
LIBS:rn-41
LIBS:skqucaa010_joystick
LIBS:itead_hc-0X_bluetooth
LIBS:joystick_SKRHAAE010
LIBS:STM32F407IGT6
LIBS:slc_oem
LIBS:frankenso-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 15
Title "Frankenso"
Date "2 may 2015"
Rev ".02"
Comp "rusEFI.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PWR_FLAG #FLG072
U 1 1 52CAD8E7
P 3375 3000
F 0 "#FLG072" H 3375 3095 30  0001 C CNN
F 1 "PWR_FLAG" H 3375 3180 30  0000 C CNN
F 2 "" H 3375 3000 60  0000 C CNN
F 3 "" H 3375 3000 60  0000 C CNN
	1    3375 3000
	1    0    0    -1  
$EndComp
$Comp
L CP1 C472
U 1 1 52CAD8F6
P 3550 3250
F 0 "C472" H 3600 3350 50  0000 L CNN
F 1 "4.7uF" H 3600 3150 50  0000 L CNN
F 2 "SM0805" V 1130 2600 60  0001 C CNN
F 3 "" H 3550 3250 60  0001 C CNN
F 4 "TDK,CGA4J3X5R1H475K125AB" V 1130 2600 60  0001 C CNN "mfg,mfg#"
F 5 "DIGI,445-7882-6-ND" V 1130 2600 60  0001 C CNN "vend1,vend1#"
	1    3550 3250
	-1   0    0    -1  
$EndComp
$Comp
L C C471
U 1 1 52CAD8F7
P 3550 2700
F 0 "C471" H 3600 2800 50  0000 L CNN
F 1 "0.1uF" H 3600 2600 50  0000 L CNN
F 2 "SM0805" V 1130 2600 60  0001 C CNN
F 3 "" H 3550 2700 60  0001 C CNN
F 4 "AVX,08055C104KAT2A" V 1130 2600 60  0001 C CNN "mfg,mfg#"
F 5 "DIGI,478-1395-1-ND" V 1130 2600 60  0001 C CNN "vend1,vend1#"
	1    3550 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR073
U 1 1 52CAD8F8
P 3550 3450
F 0 "#PWR073" H 3550 3450 30  0001 C CNN
F 1 "GND" H 3550 3380 30  0001 C CNN
F 2 "" H 3550 3450 60  0001 C CNN
F 3 "" H 3550 3450 60  0001 C CNN
	1    3550 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR074
U 1 1 52CAD8F9
P 3550 2500
F 0 "#PWR074" H 3550 2500 30  0001 C CNN
F 1 "GND" H 3550 2430 30  0001 C CNN
F 2 "" H 3550 2500 60  0001 C CNN
F 3 "" H 3550 2500 60  0001 C CNN
	1    3550 2500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR075
U 1 1 52CADB40
P 4950 2500
F 0 "#PWR075" H 4950 2500 30  0001 C CNN
F 1 "GND" H 4950 2430 30  0001 C CNN
F 2 "" H 4950 2500 60  0001 C CNN
F 3 "" H 4950 2500 60  0001 C CNN
	1    4950 2500
	1    0    0    -1  
$EndComp
NoConn ~ 4900 1200
$Comp
L R R472
U 1 1 52CADB46
P 4000 1850
F 0 "R472" V 4080 1850 50  0000 C CNN
F 1 "10k" V 4000 1850 50  0000 C CNN
F 2 "SM0805" V 1130 2600 60  0001 C CNN
F 3 "" H 4000 1850 60  0001 C CNN
F 4 "BOURNS,CR0805-FX-1002ELF" V 1130 2600 60  0001 C CNN "mfg,mfg#"
F 5 "DIGI,CR0805-FX-1002ELFCT-ND" V 1130 2600 60  0001 C CNN "vend1,vend1#"
	1    4000 1850
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR076
U 1 1 52CADB51
P 3750 1850
F 0 "#PWR076" H 3750 1850 30  0001 C CNN
F 1 "GND" H 3750 1780 30  0001 C CNN
F 2 "" H 3750 1850 60  0001 C CNN
F 3 "" H 3750 1850 60  0001 C CNN
	1    3750 1850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR077
U 1 1 52CADB3B
P 2200 1650
F 0 "#PWR077" H 2200 1650 30  0001 C CNN
F 1 "GND" H 2200 1580 30  0001 C CNN
F 2 "" H 2200 1650 60  0001 C CNN
F 3 "" H 2200 1650 60  0001 C CNN
	1    2200 1650
	1    0    0    -1  
$EndComp
Text Label 4100 1550 2    60   ~ 0
CAN_TX
Text Label 4100 2150 2    60   ~ 0
CAN_RX
Connection ~ -4675 3450
Wire Wire Line
	3550 2900 3550 3050
Connection ~ 3550 3000
Wire Wire Line
	3250 3000 3650 3000
Connection ~ 3375 3000
Wire Wire Line
	2200 1750 2300 1750
Wire Wire Line
	2200 1850 2300 1850
Wire Wire Line
	2200 1550 2300 1550
Wire Wire Line
	4250 2150 4000 2150
Wire Wire Line
	4250 1550 4000 1550
Text Label 5500 1750 0    60   ~ 0
CANH
Text Label 5500 1950 0    60   ~ 0
CANL
Wire Wire Line
	6200 1750 6100 1750
Wire Wire Line
	6200 1950 6100 1950
Wire Wire Line
	5400 1750 5500 1750
Wire Wire Line
	5400 1950 5500 1950
Text Label 5050 1100 0    60   ~ 0
3.3V
Wire Wire Line
	5050 1200 5050 1100
$Comp
L SN65HVD230 U471
U 1 1 52CD2CA4
P 4800 1850
F 0 "U471" H 4400 2400 60  0000 C CNN
F 1 "SN65HVD230" H 4500 1400 50  0000 C CNN
F 2 "SO8E" H 4800 1850 60  0001 C CNN
F 3 "" H 4800 1850 60  0000 C CNN
F 4 "TI,SN65HVD230QD" H 4800 1850 60  0001 C CNN "mfg,mfg#"
F 5 "DIGI,296-13123-5-ND" H 4800 1850 60  0001 C CNN "vend1,vend1#"
	1    4800 1850
	1    0    0    -1  
$EndComp
$Comp
L R R473
U 1 1 52CD2DE2
P 5975 2625
F 0 "R473" V 6055 2625 50  0000 C CNN
F 1 "120" V 5975 2625 50  0000 C CNN
F 2 "SM0805" V 1130 2600 60  0001 C CNN
F 3 "" H 5975 2625 60  0001 C CNN
F 4 "ECG,ERA6AEB121V" V 1130 2600 60  0001 C CNN "mfg,mfg#"
F 5 "DIGI,P120DACT-ND" V 1130 2600 60  0001 C CNN "vend1,vend1#"
	1    5975 2625
	0    1    -1   0   
$EndComp
$Comp
L JUMPER JP471
U 1 1 52CD2DEF
P 6650 2625
F 0 "JP471" H 6650 2775 60  0000 C CNN
F 1 "JUMPER" H 6650 2545 40  0000 C CNN
F 2 "JUMPER-2" V 1130 2600 60  0001 C CNN
F 3 "" H 6650 2625 60  0001 C CNN
F 4 "JUMPER-WIRE,0R" V 1130 2600 60  0001 C CNN "mfg,mfg#"
F 5 "JUMPER-WIRE,0R" V 1130 2600 60  0001 C CNN "vend1,vend1#"
	1    6650 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 2625 6350 2625
Text Label 5600 2625 2    60   ~ 0
CANH
Text Label 7050 2625 0    60   ~ 0
CANL
Wire Wire Line
	6950 2625 7050 2625
Wire Wire Line
	5725 2625 5600 2625
Text Notes 5950 4200 0    160  ~ 0
CAN level shifter
Text Notes 6250 1600 0    60   ~ 0
pins
Text HLabel 6100 1950 0    60   Input ~ 0
CANH
Text HLabel 6100 1750 0    60   Input ~ 0
CANL
Wire Wire Line
	2200 1650 2300 1650
Text HLabel 2300 1550 2    60   Input ~ 0
3.3V
Text HLabel 2300 1650 2    60   Input ~ 0
GND
Text HLabel 2300 1750 2    60   Input ~ 0
CAN_RX
Text HLabel 2300 1850 2    60   Input ~ 0
CAN_TX
Text Label 3250 3000 2    60   ~ 0
3.3V
$Comp
L CONN_4 P401
U 1 1 54959C46
P 6700 3150
F 0 "P401" V 6650 3150 50  0000 C CNN
F 1 "CONN_4" V 6750 3150 50  0000 C CNN
F 2 "SIL-4" H 6700 3150 60  0001 C CNN
F 3 "" H 6700 3150 60  0000 C CNN
	1    6700 3150
	1    0    0    -1  
$EndComp
Text Label 6350 3200 2    60   ~ 0
CANL
Text Label 6350 3100 2    60   ~ 0
CANH
$Comp
L GND #PWR078
U 1 1 54959C55
P 6350 3300
F 0 "#PWR078" H 6350 3300 30  0001 C CNN
F 1 "GND" H 6350 3230 30  0001 C CNN
F 2 "" H 6350 3300 60  0001 C CNN
F 3 "" H 6350 3300 60  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
Text Label 6350 3000 2    60   ~ 0
5V
Text HLabel 6050 3000 0    60   Input ~ 0
5V
Wire Wire Line
	6350 3000 6050 3000
$EndSCHEMATC
