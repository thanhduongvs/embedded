EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:oxidized_flash-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR04
U 1 1 5C4458C7
P 1600 3100
F 0 "#PWR04" H 1600 2850 50  0001 C CNN
F 1 "GND" H 1605 2927 50  0000 C CNN
F 2 "" H 1600 3100 50  0001 C CNN
F 3 "" H 1600 3100 50  0001 C CNN
	1    1600 3100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 5C4462D8
P 1600 1200
F 0 "U1" H 1600 1442 50  0000 C CNN
F 1 "LM1117-3.3" H 1600 1351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 1600 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 1600 1200 50  0001 C CNN
	1    1600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2400 1950 2400
$Comp
L power:+5V #PWR05
U 1 1 5C44928E
P 1950 1950
F 0 "#PWR05" H 1950 1800 50  0001 C CNN
F 1 "+5V" H 1965 2123 50  0000 C CNN
F 2 "" H 1950 1950 50  0001 C CNN
F 3 "" H 1950 1950 50  0001 C CNN
	1    1950 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5C449717
P 950 1050
F 0 "#PWR01" H 950 900 50  0001 C CNN
F 1 "+5V" H 965 1223 50  0000 C CNN
F 2 "" H 950 1050 50  0001 C CNN
F 3 "" H 950 1050 50  0001 C CNN
	1    950  1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1050 950  1200
$Comp
L power:+3.3V #PWR07
U 1 1 5C44A106
P 2100 1200
F 0 "#PWR07" H 2100 1050 50  0001 C CNN
F 1 "+3.3V" V 2115 1328 50  0000 L CNN
F 2 "" H 2100 1200 50  0001 C CNN
F 3 "" H 2100 1200 50  0001 C CNN
	1    2100 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C44A3FB
P 1600 1500
F 0 "#PWR03" H 1600 1250 50  0001 C CNN
F 1 "GND" H 1605 1327 50  0000 C CNN
F 2 "" H 1600 1500 50  0001 C CNN
F 3 "" H 1600 1500 50  0001 C CNN
	1    1600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3600 4500 3600
Wire Wire Line
	4400 3700 4750 3700
Wire Wire Line
	4400 3800 5000 3800
Wire Wire Line
	4400 3900 5250 3900
$Comp
L Device:R_Small R3
U 1 1 5C456B33
P 4500 3400
F 0 "R3" H 4550 3450 50  0000 L CNN
F 1 "10K" H 4550 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4500 3400 50  0001 C CNN
F 3 "~" H 4500 3400 50  0001 C CNN
	1    4500 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5C456FA0
P 4750 3400
F 0 "R4" H 4800 3450 50  0000 L CNN
F 1 "10K" H 4800 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4750 3400 50  0001 C CNN
F 3 "~" H 4750 3400 50  0001 C CNN
	1    4750 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5C457C31
P 5000 3400
F 0 "R5" H 5050 3450 50  0000 L CNN
F 1 "10K" H 5050 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5000 3400 50  0001 C CNN
F 3 "~" H 5000 3400 50  0001 C CNN
	1    5000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5C45807C
P 5250 3400
F 0 "R7" H 5300 3450 50  0000 L CNN
F 1 "10K" H 5300 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5250 3400 50  0001 C CNN
F 3 "~" H 5250 3400 50  0001 C CNN
	1    5250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3600 4500 3500
Connection ~ 4500 3600
Wire Wire Line
	4500 3300 4500 3200
$Comp
L power:+3.3V #PWR014
U 1 1 5C45A88F
P 4500 3200
F 0 "#PWR014" H 4500 3050 50  0001 C CNN
F 1 "+3.3V" H 4515 3373 50  0000 C CNN
F 2 "" H 4500 3200 50  0001 C CNN
F 3 "" H 4500 3200 50  0001 C CNN
	1    4500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3300 4750 3200
Wire Wire Line
	4750 3200 4500 3200
Connection ~ 4500 3200
Wire Wire Line
	5000 3300 5000 3200
Wire Wire Line
	5000 3200 4750 3200
Connection ~ 4750 3200
Wire Wire Line
	5250 3300 5250 3200
Wire Wire Line
	5250 3200 5000 3200
Connection ~ 5000 3200
Wire Wire Line
	4500 3600 5550 3600
Wire Wire Line
	4750 3500 4750 3700
Connection ~ 4750 3700
Wire Wire Line
	4750 3700 5550 3700
Wire Wire Line
	5000 3500 5000 3800
Connection ~ 5000 3800
Wire Wire Line
	5000 3800 5550 3800
Wire Wire Line
	5250 3500 5250 3900
Connection ~ 5250 3900
Wire Wire Line
	5250 3900 5550 3900
NoConn ~ 5550 4000
NoConn ~ 5550 4100
NoConn ~ 5550 4200
NoConn ~ 5550 4300
NoConn ~ 4400 4200
NoConn ~ 4400 4300
Wire Wire Line
	4400 4000 4650 4000
Wire Wire Line
	4650 4000 4650 4500
Wire Wire Line
	4400 4100 4550 4100
Wire Wire Line
	4550 4100 4550 4600
Wire Wire Line
	4550 4600 5550 4600
Wire Wire Line
	4650 4500 5000 4500
$Comp
L Device:R_Small R6
U 1 1 5C4612B8
P 5000 4300
F 0 "R6" H 5059 4346 50  0000 L CNN
F 1 "10K" H 5059 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5000 4300 50  0001 C CNN
F 3 "~" H 5000 4300 50  0001 C CNN
	1    5000 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 5C461CCC
P 5000 4150
F 0 "#PWR016" H 5000 4000 50  0001 C CNN
F 1 "+3.3V" H 5015 4323 50  0000 C CNN
F 2 "" H 5000 4150 50  0001 C CNN
F 3 "" H 5000 4150 50  0001 C CNN
	1    5000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4150 5000 4200
Wire Wire Line
	5000 4400 5000 4500
Connection ~ 5000 4500
Wire Wire Line
	5000 4500 5550 4500
Wire Wire Line
	5550 3500 5450 3500
Wire Wire Line
	5450 3500 5450 4950
$Comp
L Device:C_Small C10
U 1 1 5C464CC6
P 5450 5050
F 0 "C10" H 5542 5096 50  0000 L CNN
F 1 "3u" H 5542 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5450 5050 50  0001 C CNN
F 3 "~" H 5450 5050 50  0001 C CNN
	1    5450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5150 5450 5200
$Comp
L power:GND #PWR019
U 1 1 5C465AF9
P 5450 5200
F 0 "#PWR019" H 5450 4950 50  0001 C CNN
F 1 "GND" H 5455 5027 50  0000 C CNN
F 2 "" H 5450 5200 50  0001 C CNN
F 3 "" H 5450 5200 50  0001 C CNN
	1    5450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4950 3450 5050
$Comp
L power:GND #PWR011
U 1 1 5C44DF79
P 3450 5300
F 0 "#PWR011" H 3450 5050 50  0001 C CNN
F 1 "GND" H 3455 5127 50  0000 C CNN
F 2 "" H 3450 5300 50  0001 C CNN
F 3 "" H 3450 5300 50  0001 C CNN
	1    3450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4950 3550 5050
Wire Wire Line
	3550 5050 3450 5050
Connection ~ 3450 5050
Wire Wire Line
	3450 5050 3450 5300
Wire Wire Line
	3650 4950 3650 5050
Wire Wire Line
	3650 5050 3550 5050
Connection ~ 3550 5050
Wire Wire Line
	3750 4950 3750 5050
Wire Wire Line
	3750 5050 3650 5050
Connection ~ 3650 5050
$Comp
L power:+3.3V #PWR012
U 1 1 5C460A45
P 4250 1150
F 0 "#PWR012" H 4250 1000 50  0001 C CNN
F 1 "+3.3V" H 4265 1323 50  0000 C CNN
F 2 "" H 4250 1150 50  0001 C CNN
F 3 "" H 4250 1150 50  0001 C CNN
	1    4250 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5C46116C
P 4250 1250
F 0 "C4" H 4342 1296 50  0000 L CNN
F 1 "10u" H 4342 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4250 1250 50  0001 C CNN
F 3 "~" H 4250 1250 50  0001 C CNN
	1    4250 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5C463E98
P 4550 1250
F 0 "C5" H 4642 1296 50  0000 L CNN
F 1 "10u" H 4642 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4550 1250 50  0001 C CNN
F 3 "~" H 4550 1250 50  0001 C CNN
	1    4550 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5C46712E
P 4850 1250
F 0 "C7" H 4942 1296 50  0000 L CNN
F 1 "10u" H 4942 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4850 1250 50  0001 C CNN
F 3 "~" H 4850 1250 50  0001 C CNN
	1    4850 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5C467B14
P 5150 1250
F 0 "C9" H 5242 1296 50  0000 L CNN
F 1 "10u" H 5242 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5150 1250 50  0001 C CNN
F 3 "~" H 5150 1250 50  0001 C CNN
	1    5150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1150 4550 1150
Connection ~ 4250 1150
Wire Wire Line
	4850 1150 4550 1150
Connection ~ 4550 1150
Wire Wire Line
	5150 1150 4850 1150
Connection ~ 4850 1150
Wire Wire Line
	5150 1350 4850 1350
Wire Wire Line
	4550 1350 4850 1350
Connection ~ 4850 1350
Wire Wire Line
	4550 1350 4250 1350
Connection ~ 4550 1350
$Comp
L ATSAMD:ATSAMD51G18A-MU U2
U 1 1 5C4804F6
P 3600 3350
F 0 "U2" H 2500 2050 50  0000 C CNN
F 1 "ATSAMD51G18A-MU" H 2350 1950 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.3x5.3mm" H 3600 3350 50  0001 C CNN
F 3 "" H 3600 3350 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1600 3450 1500
Wire Wire Line
	1900 2600 2650 2600
Wire Wire Line
	1900 2700 2650 2700
Wire Wire Line
	3550 1600 3550 1500
Wire Wire Line
	3550 1500 3450 1500
Connection ~ 3450 1500
Wire Wire Line
	3650 1600 3650 1500
Wire Wire Line
	3650 1500 3550 1500
Connection ~ 3550 1500
Wire Wire Line
	3750 1600 3750 1500
Wire Wire Line
	3750 1500 3650 1500
Connection ~ 3650 1500
$Comp
L Device:C_Small C8
U 1 1 5C48CB00
P 5100 4850
F 0 "C8" H 5192 4896 50  0000 L CNN
F 1 "0.1u" H 5192 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5100 4850 50  0001 C CNN
F 3 "~" H 5100 4850 50  0001 C CNN
	1    5100 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5C48D06A
P 4750 4850
F 0 "C6" H 4842 4896 50  0000 L CNN
F 1 "4.7u" H 4842 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4750 4850 50  0001 C CNN
F 3 "~" H 4750 4850 50  0001 C CNN
	1    4750 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4650 4750 4750
Wire Wire Line
	4750 4950 4750 5000
$Comp
L power:GND #PWR015
U 1 1 5C491140
P 4750 5050
F 0 "#PWR015" H 4750 4800 50  0001 C CNN
F 1 "GND" H 4755 4877 50  0000 C CNN
F 2 "" H 4750 5050 50  0001 C CNN
F 3 "" H 4750 5050 50  0001 C CNN
	1    4750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4650 5100 4650
Wire Wire Line
	5100 4650 5100 4750
Connection ~ 4750 4650
Wire Wire Line
	5100 4950 5100 5000
Wire Wire Line
	5100 5000 4750 5000
Connection ~ 4750 5000
Wire Wire Line
	4750 5000 4750 5050
$Comp
L power:+3.3V #PWR010
U 1 1 5C49AA7F
P 3450 1050
F 0 "#PWR010" H 3450 900 50  0001 C CNN
F 1 "+3.3V" H 3465 1223 50  0000 C CNN
F 2 "" H 3450 1050 50  0001 C CNN
F 3 "" H 3450 1050 50  0001 C CNN
	1    3450 1050
	1    0    0    -1  
$EndComp
Text Notes 4400 1000 0    50   ~ 0
Place near SAMD
Wire Wire Line
	6000 4900 6000 5050
$Comp
L power:GND #PWR021
U 1 1 5C4A166C
P 6000 5200
F 0 "#PWR021" H 6000 4950 50  0001 C CNN
F 1 "GND" H 6005 5027 50  0000 C CNN
F 2 "" H 6000 5200 50  0001 C CNN
F 3 "" H 6000 5200 50  0001 C CNN
	1    6000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5050 6000 5050
Connection ~ 6000 5050
Wire Wire Line
	6000 5050 6000 5200
Wire Wire Line
	6100 4900 6100 5050
Wire Wire Line
	6200 4900 6200 5050
Wire Wire Line
	6200 5050 6100 5050
Connection ~ 6100 5050
Wire Wire Line
	6300 4900 6300 5050
Wire Wire Line
	6300 5050 6200 5050
Connection ~ 6200 5050
Wire Wire Line
	6400 4900 6400 5050
Wire Wire Line
	6400 5050 6300 5050
Connection ~ 6300 5050
Wire Wire Line
	6500 4900 6500 5050
Wire Wire Line
	6500 5050 6400 5050
Connection ~ 6400 5050
Wire Wire Line
	6600 4900 6600 5050
Wire Wire Line
	6600 5050 6500 5050
Connection ~ 6500 5050
Wire Wire Line
	6700 4900 6700 5050
Connection ~ 6600 5050
Wire Wire Line
	6800 4900 6800 5050
Wire Wire Line
	6600 5050 6700 5050
Connection ~ 6700 5050
Wire Wire Line
	6700 5050 6800 5050
Wire Wire Line
	6900 4900 6900 5050
Wire Wire Line
	6900 5050 6800 5050
Connection ~ 6800 5050
Wire Wire Line
	6000 3150 6000 3000
$Comp
L power:+3.3V #PWR020
U 1 1 5C4B8BCE
P 6000 2850
F 0 "#PWR020" H 6000 2700 50  0001 C CNN
F 1 "+3.3V" H 6015 3023 50  0000 C CNN
F 2 "" H 6000 2850 50  0001 C CNN
F 3 "" H 6000 2850 50  0001 C CNN
	1    6000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3150 6100 3000
Wire Wire Line
	6100 3000 6000 3000
Connection ~ 6000 3000
Wire Wire Line
	6000 3000 6000 2850
Wire Wire Line
	6200 3150 6200 3000
Wire Wire Line
	6200 3000 6100 3000
Connection ~ 6100 3000
Wire Wire Line
	6300 3150 6300 3000
Wire Wire Line
	6300 3000 6200 3000
Connection ~ 6200 3000
Wire Wire Line
	6400 3150 6400 3000
Wire Wire Line
	6400 3000 6300 3000
Connection ~ 6300 3000
Wire Wire Line
	6500 3150 6500 3000
Wire Wire Line
	6500 3000 6400 3000
Connection ~ 6400 3000
Wire Wire Line
	6600 3150 6600 3000
Wire Wire Line
	6600 3000 6500 3000
Connection ~ 6500 3000
Wire Wire Line
	6700 3150 6700 3000
Wire Wire Line
	6700 3000 6600 3000
Connection ~ 6600 3000
Wire Wire Line
	6800 3150 6800 3000
Wire Wire Line
	6800 3000 6700 3000
Connection ~ 6700 3000
$Comp
L Device:C_Small C11
U 1 1 5C4CFA43
P 7600 3600
F 0 "C11" H 7692 3646 50  0000 L CNN
F 1 "3u" H 7692 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7600 3600 50  0001 C CNN
F 3 "~" H 7600 3600 50  0001 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5C4D0326
P 7850 3600
F 0 "C12" H 7942 3646 50  0000 L CNN
F 1 "3u" H 7942 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 3600 50  0001 C CNN
F 3 "~" H 7850 3600 50  0001 C CNN
	1    7850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5C4D0A77
P 8100 3600
F 0 "C13" H 8192 3646 50  0000 L CNN
F 1 "3u" H 8192 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8100 3600 50  0001 C CNN
F 3 "~" H 8100 3600 50  0001 C CNN
	1    8100 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5C4D11ED
P 8350 3600
F 0 "C14" H 8442 3646 50  0000 L CNN
F 1 "3u" H 8442 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8350 3600 50  0001 C CNN
F 3 "~" H 8350 3600 50  0001 C CNN
	1    8350 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 5C4D17ED
P 8600 3600
F 0 "C15" H 8692 3646 50  0000 L CNN
F 1 "3u" H 8692 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8600 3600 50  0001 C CNN
F 3 "~" H 8600 3600 50  0001 C CNN
	1    8600 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5C4D2319
P 8850 3600
F 0 "C16" H 8942 3646 50  0000 L CNN
F 1 "3u" H 8942 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8850 3600 50  0001 C CNN
F 3 "~" H 8850 3600 50  0001 C CNN
	1    8850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5C4D2776
P 9100 3600
F 0 "C17" H 9192 3646 50  0000 L CNN
F 1 "3u" H 9192 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9100 3600 50  0001 C CNN
F 3 "~" H 9100 3600 50  0001 C CNN
	1    9100 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5C4D2BE6
P 9350 3600
F 0 "C18" H 9442 3646 50  0000 L CNN
F 1 "3u" H 9442 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9350 3600 50  0001 C CNN
F 3 "~" H 9350 3600 50  0001 C CNN
	1    9350 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 5C4D3069
P 9600 3600
F 0 "C19" H 9692 3646 50  0000 L CNN
F 1 "3u" H 9692 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9600 3600 50  0001 C CNN
F 3 "~" H 9600 3600 50  0001 C CNN
	1    9600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3400 7600 3450
$Comp
L power:+3.3V #PWR026
U 1 1 5C4D7575
P 7600 3400
F 0 "#PWR026" H 7600 3250 50  0001 C CNN
F 1 "+3.3V" H 7615 3573 50  0000 C CNN
F 2 "" H 7600 3400 50  0001 C CNN
F 3 "" H 7600 3400 50  0001 C CNN
	1    7600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3700 7600 3750
$Comp
L power:GND #PWR027
U 1 1 5C4DAE0E
P 7600 3800
F 0 "#PWR027" H 7600 3550 50  0001 C CNN
F 1 "GND" H 7605 3627 50  0000 C CNN
F 2 "" H 7600 3800 50  0001 C CNN
F 3 "" H 7600 3800 50  0001 C CNN
	1    7600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3450 7850 3450
Wire Wire Line
	7850 3450 7850 3500
Connection ~ 7600 3450
Wire Wire Line
	7600 3450 7600 3500
Wire Wire Line
	7850 3700 7850 3750
Wire Wire Line
	7850 3750 7600 3750
Connection ~ 7600 3750
Wire Wire Line
	7600 3750 7600 3800
Wire Wire Line
	7850 3450 8100 3450
Wire Wire Line
	8100 3450 8100 3500
Connection ~ 7850 3450
Wire Wire Line
	8100 3450 8350 3450
Wire Wire Line
	8350 3450 8350 3500
Connection ~ 8100 3450
Wire Wire Line
	8350 3450 8600 3450
Wire Wire Line
	8600 3450 8600 3500
Connection ~ 8350 3450
Wire Wire Line
	8600 3450 8850 3450
Wire Wire Line
	8850 3450 8850 3500
Connection ~ 8600 3450
Wire Wire Line
	8850 3450 9100 3450
Wire Wire Line
	9100 3450 9100 3500
Connection ~ 8850 3450
Wire Wire Line
	9100 3450 9350 3450
Wire Wire Line
	9350 3450 9350 3500
Connection ~ 9100 3450
Wire Wire Line
	9350 3450 9600 3450
Wire Wire Line
	9600 3450 9600 3500
Connection ~ 9350 3450
Wire Wire Line
	8100 3700 8100 3750
Wire Wire Line
	8100 3750 7850 3750
Connection ~ 7850 3750
Wire Wire Line
	8350 3700 8350 3750
Wire Wire Line
	8350 3750 8100 3750
Connection ~ 8100 3750
Wire Wire Line
	8600 3700 8600 3750
Wire Wire Line
	8600 3750 8350 3750
Connection ~ 8350 3750
Wire Wire Line
	8850 3700 8850 3750
Wire Wire Line
	8850 3750 8600 3750
Connection ~ 8600 3750
Wire Wire Line
	9100 3700 9100 3750
Wire Wire Line
	9100 3750 8850 3750
Connection ~ 8850 3750
Wire Wire Line
	9350 3700 9350 3750
Wire Wire Line
	9350 3750 9100 3750
Connection ~ 9100 3750
Wire Wire Line
	9600 3700 9600 3750
Wire Wire Line
	9600 3750 9350 3750
Connection ~ 9350 3750
Text Notes 7950 3250 0    50   ~ 0
Place near MMC card
$Comp
L Custom_LED:APA102 D2
U 1 1 5C5453FD
P 5450 2350
F 0 "D2" H 5050 2150 50  0000 C CNN
F 1 "APA102" H 5000 2250 50  0000 C CNN
F 2 "Custom_LED:APA102-2020" H 5450 2350 50  0001 C CNN
F 3 "" H 5450 2350 50  0001 C CNN
	1    5450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2250 4400 2250
Wire Wire Line
	5050 2350 4400 2350
Wire Wire Line
	5850 2250 5950 2250
Wire Wire Line
	5850 2350 5950 2350
Wire Wire Line
	5450 2000 5450 1900
$Comp
L power:+5V #PWR017
U 1 1 5C5A357D
P 5450 1900
F 0 "#PWR017" H 5450 1750 50  0001 C CNN
F 1 "+5V" H 5465 2073 50  0000 C CNN
F 2 "" H 5450 1900 50  0001 C CNN
F 3 "" H 5450 1900 50  0001 C CNN
	1    5450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2000 6350 1900
$Comp
L power:+5V #PWR022
U 1 1 5C5A932B
P 6350 1900
F 0 "#PWR022" H 6350 1750 50  0001 C CNN
F 1 "+5V" H 6365 2073 50  0000 C CNN
F 2 "" H 6350 1900 50  0001 C CNN
F 3 "" H 6350 1900 50  0001 C CNN
	1    6350 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5C5B5348
P 5450 2750
F 0 "#PWR018" H 5450 2500 50  0001 C CNN
F 1 "GND" H 5455 2577 50  0000 C CNN
F 2 "" H 5450 2750 50  0001 C CNN
F 3 "" H 5450 2750 50  0001 C CNN
	1    5450 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5C5BBA03
P 6350 2750
F 0 "#PWR023" H 6350 2500 50  0001 C CNN
F 1 "GND" H 6355 2577 50  0000 C CNN
F 2 "" H 6350 2750 50  0001 C CNN
F 3 "" H 6350 2750 50  0001 C CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2700 6350 2750
Wire Wire Line
	5450 2700 5450 2750
Text Label 4650 2250 0    50   ~ 0
MOSI
Text Label 4650 2350 0    50   ~ 0
SCK
Wire Wire Line
	1950 1950 1950 2400
Wire Wire Line
	2650 3200 2200 3200
$Comp
L power:+3.3V #PWR08
U 1 1 5C4FCE6C
P 2200 2950
F 0 "#PWR08" H 2200 2800 50  0001 C CNN
F 1 "+3.3V" H 2215 3123 50  0000 C CNN
F 2 "" H 2200 2950 50  0001 C CNN
F 3 "" H 2200 2950 50  0001 C CNN
	1    2200 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C4FD9DC
P 2200 3050
F 0 "R2" H 2259 3096 50  0000 L CNN
F 1 "1k" H 2259 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2200 3050 50  0001 C CNN
F 3 "~" H 2200 3050 50  0001 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3150 2200 3200
$Comp
L Device:C_Small C3
U 1 1 5C505A11
P 2200 3400
F 0 "C3" H 2292 3446 50  0000 L CNN
F 1 "0.1u" H 2292 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2200 3400 50  0001 C CNN
F 3 "~" H 2200 3400 50  0001 C CNN
	1    2200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3200 2200 3300
Connection ~ 2200 3200
Wire Wire Line
	2200 3500 2200 3600
$Comp
L power:GND #PWR09
U 1 1 5C515550
P 2200 3600
F 0 "#PWR09" H 2200 3350 50  0001 C CNN
F 1 "GND" H 2205 3427 50  0000 C CNN
F 2 "" H 2200 3600 50  0001 C CNN
F 3 "" H 2200 3600 50  0001 C CNN
	1    2200 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5C5173B9
P 1050 4450
F 0 "R1" H 1109 4496 50  0000 L CNN
F 1 "1k" H 1109 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1050 4450 50  0001 C CNN
F 3 "~" H 1050 4450 50  0001 C CNN
	1    1050 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5C517C1C
P 1050 4150
F 0 "D1" V 1096 4082 50  0000 R CNN
F 1 "OK_Led" V 1005 4082 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 1050 4150 50  0001 C CNN
F 3 "~" V 1050 4150 50  0001 C CNN
	1    1050 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 4050 1050 3850
Text Label 1050 3950 0    50   ~ 0
PA20
Wire Wire Line
	1050 4250 1050 4350
Wire Wire Line
	1050 4550 1050 4700
$Comp
L power:GND #PWR02
U 1 1 5C539677
P 1050 4700
F 0 "#PWR02" H 1050 4450 50  0001 C CNN
F 1 "GND" H 1055 4527 50  0000 C CNN
F 2 "" H 1050 4700 50  0001 C CNN
F 3 "" H 1050 4700 50  0001 C CNN
	1    1050 4700
	1    0    0    -1  
$EndComp
Text Label 2450 3400 0    50   ~ 0
PA20
Wire Wire Line
	2450 3400 2650 3400
Wire Wire Line
	1900 1200 2100 1200
$Comp
L Device:Fuse_Small F1
U 1 1 5C55FA0B
P 1150 1200
F 0 "F1" H 1150 1385 50  0000 C CNN
F 1 "500mA" H 1150 1294 50  0000 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" H 1150 1200 50  0001 C CNN
F 3 "~" H 1150 1200 50  0001 C CNN
	1    1150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1200 1250 1200
Wire Wire Line
	950  1200 1050 1200
$Comp
L Device:L_Small L1
U 1 1 5C57E95B
P 4550 4750
F 0 "L1" V 4350 4750 50  0000 C CNN
F 1 "10uH" V 4450 4750 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" H 4550 4750 50  0001 C CNN
F 3 "~" H 4550 4750 50  0001 C CNN
	1    4550 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 4750 4450 4750
Wire Wire Line
	4650 4750 4750 4750
Connection ~ 4750 4750
Wire Wire Line
	4400 4650 4750 4650
Wire Wire Line
	3450 1050 3450 1500
$Comp
L Custom_LED:APA102 D3
U 1 1 5C545A1F
P 6350 2350
F 0 "D3" H 5950 2150 50  0000 C CNN
F 1 "APA102" H 5900 2250 50  0000 C CNN
F 2 "Custom_LED:APA102-2020" H 6350 2350 50  0001 C CNN
F 3 "" H 6350 2350 50  0001 C CNN
	1    6350 2350
	1    0    0    -1  
$EndComp
NoConn ~ 6750 2250
NoConn ~ 6750 2350
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J2
U 1 1 5C6F27D1
P 2100 6000
F 0 "J2" H 1657 6046 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 1657 5955 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 2150 5450 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 1750 4750 50  0001 C CNN
	1    2100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6600 2000 6700
Wire Wire Line
	2000 6700 2100 6700
Wire Wire Line
	2100 6700 2100 6600
$Comp
L power:GND #PWR0101
U 1 1 5C6FEFCE
P 2100 6800
F 0 "#PWR0101" H 2100 6550 50  0001 C CNN
F 1 "GND" H 2105 6627 50  0000 C CNN
F 2 "" H 2100 6800 50  0001 C CNN
F 3 "" H 2100 6800 50  0001 C CNN
	1    2100 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6700 2100 6800
Connection ~ 2100 6700
Text Label 2650 5700 0    50   ~ 0
SWD_RST
Wire Wire Line
	2600 5700 2950 5700
NoConn ~ 2600 6200
NoConn ~ 2600 6100
Wire Wire Line
	2600 5900 2950 5900
Wire Wire Line
	2600 6000 2950 6000
Text Label 2650 6000 0    50   ~ 0
SWD_IO
Text Label 2650 5900 0    50   ~ 0
SWD_CLK
Wire Wire Line
	2100 5400 2100 5300
$Comp
L power:+3.3V #PWR0102
U 1 1 5C747FA9
P 2100 5300
F 0 "#PWR0102" H 2100 5150 50  0001 C CNN
F 1 "+3.3V" H 2115 5473 50  0000 C CNN
F 2 "" H 2100 5300 50  0001 C CNN
F 3 "" H 2100 5300 50  0001 C CNN
	1    2100 5300
	1    0    0    -1  
$EndComp
Text Label 2000 4100 0    50   ~ 0
SWD_CLK
$Comp
L Device:R_Small R9
U 1 1 5C752F56
P 2400 3950
F 0 "R9" H 2459 3996 50  0000 L CNN
F 1 "10k" H 2459 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2400 3950 50  0001 C CNN
F 3 "~" H 2400 3950 50  0001 C CNN
	1    2400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4100 2400 4100
Wire Wire Line
	2400 4100 2400 4050
Connection ~ 2400 4100
Wire Wire Line
	2400 4100 2650 4100
Wire Wire Line
	2400 3850 2400 3800
$Comp
L power:+3.3V #PWR0103
U 1 1 5C770522
P 2400 3800
F 0 "#PWR0103" H 2400 3650 50  0001 C CNN
F 1 "+3.3V" H 2415 3973 50  0000 C CNN
F 2 "" H 2400 3800 50  0001 C CNN
F 3 "" H 2400 3800 50  0001 C CNN
	1    2400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4200 2000 4200
Text Label 2000 4200 0    50   ~ 0
SWD_IO
Wire Wire Line
	2200 3200 1850 3200
Text Label 1850 3200 0    50   ~ 0
SWD_RST
$Comp
L Device:LED_Small D4
U 1 1 5C791600
P 1550 4150
F 0 "D4" V 1596 4082 50  0000 R CNN
F 1 "PWR_LED" V 1505 4082 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 1550 4150 50  0001 C CNN
F 3 "~" V 1550 4150 50  0001 C CNN
	1    1550 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5C7A5007
P 1550 3900
F 0 "#PWR0104" H 1550 3750 50  0001 C CNN
F 1 "+3.3V" H 1565 4073 50  0000 C CNN
F 2 "" H 1550 3900 50  0001 C CNN
F 3 "" H 1550 3900 50  0001 C CNN
	1    1550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4050 1550 3900
$Comp
L Device:R_Small R8
U 1 1 5C7AE489
P 1550 4450
F 0 "R8" H 1609 4496 50  0000 L CNN
F 1 "1k" H 1609 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1550 4450 50  0001 C CNN
F 3 "~" H 1550 4450 50  0001 C CNN
	1    1550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4350 1550 4250
Wire Wire Line
	1550 4550 1550 4700
$Comp
L power:GND #PWR0105
U 1 1 5C7C0C91
P 1550 4700
F 0 "#PWR0105" H 1550 4450 50  0001 C CNN
F 1 "GND" H 1555 4527 50  0000 C CNN
F 2 "" H 1550 4700 50  0001 C CNN
F 3 "" H 1550 4700 50  0001 C CNN
	1    1550 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J1
U 1 1 5C7CB7A2
P 1600 2600
F 0 "J1" H 1657 3067 50  0000 C CNN
F 1 "USB_A" H 1657 2976 50  0000 C CNN
F 2 "Custom_USB:Molex_48037_USB_A_Male" H 1750 2550 50  0001 C CNN
F 3 " ~" H 1750 2550 50  0001 C CNN
	1    1600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3000 1600 3050
Wire Wire Line
	1500 3000 1500 3050
Wire Wire Line
	1500 3050 1600 3050
Connection ~ 1600 3050
Wire Wire Line
	1600 3050 1600 3100
$Comp
L power:GND #PWR0106
U 1 1 5C829A14
P 4250 1350
F 0 "#PWR0106" H 4250 1100 50  0001 C CNN
F 1 "GND" H 4255 1177 50  0000 C CNN
F 2 "" H 4250 1350 50  0001 C CNN
F 3 "" H 4250 1350 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
Connection ~ 4250 1350
$Comp
L eMMC:IS21ES U3
U 1 1 5C43BCCB
P 6000 4100
F 0 "U3" H 7228 4221 50  0000 L CNN
F 1 "IS21ES" H 7228 4130 50  0000 L CNN
F 2 "Custom_BGA:FBGA-153_14x14_11.5x13.0mm" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 4100 50  0001 C CNN
	1    6000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4400 5200 4400
Text Label 5200 4400 0    50   ~ 0
MC_RST
Wire Wire Line
	2650 3500 2450 3500
Text Label 2450 3500 0    50   ~ 0
MC_RST
$EndSCHEMATC
