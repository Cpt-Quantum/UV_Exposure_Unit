EESchema Schematic File Version 2
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
LIBS:PIC
LIBS:Regulators-local
LIBS:UV_Enclosure_Control_board-cache
EELAYER 25 0
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
L Conn_01x06 P?
U 1 1 5996EFE8
P 1650 900
F 0 "P?" H 1650 1250 50  0000 C CNN
F 1 "Programming_Header" V 1750 900 50  0000 C CNN
F 2 "" H 1650 900 50  0000 C CNN
F 3 "" H 1650 900 50  0000 C CNN
	1    1650 900 
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x02 P?
U 1 1 5996F641
P 1000 6600
F 0 "P?" H 1000 6750 50  0000 C CNN
F 1 "Serial header" V 1100 6600 50  0000 C CNN
F 2 "" H 1000 6600 50  0000 C CNN
F 3 "" H 1000 6600 50  0000 C CNN
	1    1000 6600
	0    1    1    0   
$EndComp
$Comp
L PIC18F45K50 U?
U 1 1 5996EF76
P 3200 4300
F 0 "U?" H 3200 3250 60  0000 C CNN
F 1 "PIC18F45K50" H 3250 5350 60  0000 C CNN
F 2 "" H 3200 4300 60  0001 C CNN
F 3 "" H 3200 4300 60  0001 C CNN
	1    3200 4300
	1    0    0    -1  
$EndComp
Text GLabel 4150 3550 2    60   Output ~ 0
D4
Text GLabel 4150 3650 2    60   Output ~ 0
D5
Text GLabel 4150 3750 2    60   Output ~ 0
D6
Text GLabel 4150 3850 2    60   Output ~ 0
D7
Text GLabel 4150 3950 2    60   Output ~ 0
RS
Text GLabel 4150 4050 2    60   Output ~ 0
EN
Text GLabel 2250 4550 0    60   Output ~ 0
TOP
Text GLabel 2250 4650 0    60   Output ~ 0
BOTTOM
$Comp
L +5V #PWR?
U 1 1 5A06F741
P 4200 4250
F 0 "#PWR?" H 4200 4100 50  0001 C CNN
F 1 "+5V" V 4200 4450 50  0000 C CNN
F 2 "" H 4200 4250 50  0001 C CNN
F 3 "" H 4200 4250 50  0001 C CNN
	1    4200 4250
	0    1    1    0   
$EndComp
Text GLabel 2300 3350 0    60   Input ~ 0
V_PP
Text GLabel 4150 3350 2    60   BiDi ~ 0
PGD
Text GLabel 4150 3450 2    60   BiDi ~ 0
PGC
Wire Wire Line
	4150 3450 4000 3450
Wire Wire Line
	4150 3350 4000 3350
Wire Wire Line
	2400 3350 2300 3350
$Comp
L GND #PWR?
U 1 1 5A07070F
P 4200 4150
F 0 "#PWR?" H 4200 3900 50  0001 C CNN
F 1 "GND" V 4200 3950 50  0000 C CNN
F 2 "" H 4200 4150 50  0001 C CNN
F 3 "" H 4200 4150 50  0001 C CNN
	1    4200 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 4150 4000 4150
$Comp
L GND #PWR?
U 1 1 5A070932
P 2300 4350
F 0 "#PWR?" H 2300 4100 50  0001 C CNN
F 1 "GND" V 2300 4150 50  0000 C CNN
F 2 "" H 2300 4350 50  0001 C CNN
F 3 "" H 2300 4350 50  0001 C CNN
	1    2300 4350
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A070954
P 2300 4450
F 0 "#PWR?" H 2300 4300 50  0001 C CNN
F 1 "+5V" V 2300 4650 50  0000 C CNN
F 2 "" H 2300 4450 50  0001 C CNN
F 3 "" H 2300 4450 50  0001 C CNN
	1    2300 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 4250 4200 4250
Wire Wire Line
	2400 4350 2300 4350
Wire Wire Line
	2400 4450 2300 4450
Wire Wire Line
	2400 4550 2250 4550
Wire Wire Line
	2400 4650 2250 4650
Text GLabel 4150 4350 2    60   Output ~ 0
ON_LED
Text GLabel 4150 4450 2    60   Output ~ 0
TOP_LED
Text GLabel 4150 4550 2    60   Output ~ 0
BOTTOM_LED
Text GLabel 4150 4650 2    60   Output ~ 0
SET_TIMER_LED
Text GLabel 2250 4850 0    60   Input ~ 0
ON_BTN_IN
Text GLabel 2250 4950 0    60   Input ~ 0
TOP_BTN_IN
Text GLabel 2250 5150 0    60   Input ~ 0
BOTTOM_BTN_IN
Text GLabel 2250 5250 0    60   Input ~ 0
TMR_DOWN_BTN_IN
Text GLabel 4150 5150 2    60   Input ~ 0
TMR_UP_BTN_IN
Text GLabel 4150 5250 2    60   Input ~ 0
TMR_SET_BTN_IN
Wire Wire Line
	4000 3550 4150 3550
Wire Wire Line
	4000 3650 4150 3650
Wire Wire Line
	4000 3750 4150 3750
Wire Wire Line
	4000 3850 4150 3850
Wire Wire Line
	4000 3950 4150 3950
Wire Wire Line
	4000 4050 4150 4050
Wire Wire Line
	4000 4350 4150 4350
Wire Wire Line
	4000 4450 4150 4450
Wire Wire Line
	4000 4550 4150 4550
Wire Wire Line
	4150 4650 4000 4650
Wire Wire Line
	4150 5150 4000 5150
Wire Wire Line
	4150 5250 4000 5250
Wire Wire Line
	2250 5150 2400 5150
Wire Wire Line
	2400 5250 2250 5250
Wire Wire Line
	2400 4950 2250 4950
Wire Wire Line
	2400 4850 2250 4850
Text GLabel 4150 4750 2    60   Input ~ 0
RX
Text GLabel 4150 4850 2    60   Output ~ 0
TX
Wire Wire Line
	4150 4850 4000 4850
Wire Wire Line
	4150 4750 4000 4750
Text GLabel 4150 4950 2    60   BiDi ~ 0
D+
Text GLabel 4150 5050 2    60   BiDi ~ 0
D-
Wire Wire Line
	4000 4950 4150 4950
Wire Wire Line
	4000 5050 4150 5050
Text GLabel 2300 3450 0    60   BiDi ~ 0
RA0
Text GLabel 2300 3550 0    60   BiDi ~ 0
RA1
Text GLabel 2300 3650 0    60   BiDi ~ 0
RA2
Text GLabel 2300 3750 0    60   BiDi ~ 0
RA3
Text GLabel 2300 3850 0    60   BiDi ~ 0
RA4
Text GLabel 2300 3950 0    60   BiDi ~ 0
RA5
Text GLabel 2300 4050 0    60   BiDi ~ 0
RE0
Text GLabel 2300 4150 0    60   BiDi ~ 0
RE1
Text GLabel 2300 4250 0    60   BiDi ~ 0
RE2
Text GLabel 2250 4750 0    60   BiDi ~ 0
RC0
Wire Wire Line
	2400 3450 2300 3450
Wire Wire Line
	2400 3550 2300 3550
Wire Wire Line
	2400 3650 2300 3650
Wire Wire Line
	2400 3750 2300 3750
Wire Wire Line
	2400 3850 2300 3850
Wire Wire Line
	2400 3950 2300 3950
Wire Wire Line
	2400 4050 2300 4050
Wire Wire Line
	2400 4150 2300 4150
Wire Wire Line
	2400 4250 2300 4250
Text Notes 4500 3400 0    60   ~ 0
Programming Pins
Text Notes 4400 3850 0    60   ~ 0
LCD Control Pins
Text Notes 4850 4500 0    60   ~ 0
LED Outputs
Text Notes 4400 4850 0    60   ~ 0
Serial Pins
Text Notes 4450 5000 0    60   ~ 0
USB Pins
Text Notes 1950 3900 2    60   ~ 0
Spare I/O Pins
Text Notes 2000 3400 2    60   ~ 0
Programming Flash Pin
Text Notes 1800 4600 2    60   ~ 0
LED Panel State Outputs
Text Notes 1850 4800 2    60   ~ 0
Spare I/O Pin
$Comp
L +5V #PWR?
U 1 1 5A072132
P 1750 2150
F 0 "#PWR?" H 1750 2000 50  0001 C CNN
F 1 "+5V" H 1750 2290 50  0000 C CNN
F 2 "" H 1750 2150 50  0001 C CNN
F 3 "" H 1750 2150 50  0001 C CNN
	1    1750 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A07215A
P 1750 2550
F 0 "#PWR?" H 1750 2300 50  0001 C CNN
F 1 "GND" H 1750 2400 50  0000 C CNN
F 2 "" H 1750 2550 50  0001 C CNN
F 3 "" H 1750 2550 50  0001 C CNN
	1    1750 2550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A072176
P 1600 2350
F 0 "C?" H 1625 2450 50  0000 L CNN
F 1 "10 nF" H 1350 2250 50  0000 L CNN
F 2 "" H 1638 2200 50  0001 C CNN
F 3 "" H 1600 2350 50  0001 C CNN
	1    1600 2350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A072249
P 1900 2350
F 0 "C?" H 1925 2450 50  0000 L CNN
F 1 "10 nF" H 1925 2250 50  0000 L CNN
F 2 "" H 1938 2200 50  0001 C CNN
F 3 "" H 1900 2350 50  0001 C CNN
	1    1900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2550 1900 2500
Wire Wire Line
	1600 2550 1900 2550
Wire Wire Line
	1600 2500 1600 2550
Connection ~ 1750 2550
Wire Wire Line
	1900 2150 1900 2200
Wire Wire Line
	1600 2150 1900 2150
Wire Wire Line
	1600 2150 1600 2200
Connection ~ 1750 2150
Text Notes 1250 1950 0    60   ~ 0
Caps on PIC Power Inputs
$Comp
L Conn_01x10 J?
U 1 1 5A07276E
P 2050 6600
F 0 "J?" H 2050 7100 50  0000 C CNN
F 1 "Spare I/O Header" V 2150 6550 50  0000 C CNN
F 2 "" H 2050 6600 50  0001 C CNN
F 3 "" H 2050 6600 50  0001 C CNN
	1    2050 6600
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J?
U 1 1 5A072C00
P 3000 6600
F 0 "J?" H 3000 6700 50  0000 C CNN
F 1 "USB Header" V 3100 6550 50  0000 C CNN
F 2 "" H 3000 6600 50  0001 C CNN
F 3 "" H 3000 6600 50  0001 C CNN
	1    3000 6600
	0    1    1    0   
$EndComp
Text GLabel 3800 6450 3    60   Output ~ 0
TOP
Text GLabel 3850 1200 3    60   Output ~ 0
D4
Text GLabel 3950 1200 3    60   Output ~ 0
D5
Text GLabel 4050 1200 3    60   Output ~ 0
D6
Text GLabel 4150 1200 3    60   Output ~ 0
D7
Text GLabel 1450 1250 3    60   Input ~ 0
V_PP
$Comp
L +5V #PWR?
U 1 1 5A073D2F
P 1550 1250
F 0 "#PWR?" H 1550 1100 50  0001 C CNN
F 1 "+5V" V 1550 1450 50  0000 C CNN
F 2 "" H 1550 1250 50  0001 C CNN
F 3 "" H 1550 1250 50  0001 C CNN
	1    1550 1250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A073D5B
P 1650 1250
F 0 "#PWR?" H 1650 1000 50  0001 C CNN
F 1 "GND" V 1650 1050 50  0000 C CNN
F 2 "" H 1650 1250 50  0001 C CNN
F 3 "" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
Text GLabel 1750 1250 3    60   BiDi ~ 0
PGD
Text GLabel 1850 1250 3    60   BiDi ~ 0
PGC
Wire Wire Line
	1850 1100 1850 1250
Wire Wire Line
	1750 1250 1750 1100
Wire Wire Line
	1650 1250 1650 1100
Wire Wire Line
	1550 1250 1550 1100
Wire Wire Line
	1450 1250 1450 1100
Text GLabel 2450 6300 1    60   BiDi ~ 0
RA0
Text GLabel 2350 6300 1    60   BiDi ~ 0
RA1
Text GLabel 2250 6300 1    60   BiDi ~ 0
RA2
Text GLabel 2150 6300 1    60   BiDi ~ 0
RA3
Text GLabel 2050 6300 1    60   BiDi ~ 0
RA4
Text GLabel 1950 6300 1    60   BiDi ~ 0
RA5
Text GLabel 1850 6300 1    60   BiDi ~ 0
RE0
Text GLabel 1750 6300 1    60   BiDi ~ 0
RE1
Text GLabel 1650 6300 1    60   BiDi ~ 0
RE2
Text GLabel 1550 6300 1    60   BiDi ~ 0
RC0
Wire Wire Line
	2450 6400 2450 6300
Wire Wire Line
	2350 6400 2350 6300
Wire Wire Line
	2250 6400 2250 6300
Wire Wire Line
	2150 6400 2150 6300
Wire Wire Line
	2050 6400 2050 6300
Wire Wire Line
	1950 6400 1950 6300
Wire Wire Line
	1850 6400 1850 6300
Wire Wire Line
	1750 6400 1750 6300
Wire Wire Line
	1650 6400 1650 6300
Wire Wire Line
	1550 6400 1550 6300
Text GLabel 3000 6250 1    60   BiDi ~ 0
D+
Text GLabel 2900 6250 1    60   BiDi ~ 0
D-
Wire Wire Line
	2900 6250 2900 6400
Wire Wire Line
	3000 6250 3000 6400
Text GLabel 900  6250 1    60   Input ~ 0
RX
Text GLabel 1000 6250 1    60   Output ~ 0
TX
Wire Wire Line
	1000 6250 1000 6400
Wire Wire Line
	900  6250 900  6400
Text Notes 2300 5950 2    60   ~ 0
Currently unused I/O
Wire Notes Line
	700  5850 3250 5850
Wire Notes Line
	3250 5850 3250 6800
Wire Notes Line
	3250 6800 700  6800
Wire Notes Line
	700  7200 700  6250
$Comp
L Conn_01x16 J?
U 1 1 5A075272
P 3550 900
F 0 "J?" H 3550 1700 50  0000 C CNN
F 1 "LCD Header" V 3650 850 50  0000 C CNN
F 2 "" H 3550 900 50  0001 C CNN
F 3 "" H 3550 900 50  0001 C CNN
	1    3550 900 
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A0754BF
P 2850 1200
F 0 "#PWR?" H 2850 1050 50  0001 C CNN
F 1 "+5V" V 2850 1400 50  0000 C CNN
F 2 "" H 2850 1200 50  0001 C CNN
F 3 "" H 2850 1200 50  0001 C CNN
	1    2850 1200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A075533
P 2950 1200
F 0 "#PWR?" H 2950 950 50  0001 C CNN
F 1 "GND" V 2950 1000 50  0000 C CNN
F 2 "" H 2950 1200 50  0001 C CNN
F 3 "" H 2950 1200 50  0001 C CNN
	1    2950 1200
	1    0    0    -1  
$EndComp
Text GLabel 3050 1200 3    60   Input ~ 0
V0
Text GLabel 3150 1200 3    60   Output ~ 0
RS
$Comp
L GND #PWR?
U 1 1 5A075638
P 3250 1200
F 0 "#PWR?" H 3250 950 50  0001 C CNN
F 1 "GND" V 3250 1000 50  0000 C CNN
F 2 "" H 3250 1200 50  0001 C CNN
F 3 "" H 3250 1200 50  0001 C CNN
	1    3250 1200
	1    0    0    -1  
$EndComp
Text GLabel 3350 1200 3    60   Output ~ 0
EN
Text Notes 3700 1300 1    60   ~ 0
D2
Text Notes 3800 1300 1    60   ~ 0
D3
Text Notes 3600 1300 1    60   ~ 0
D1
Text Notes 3500 1300 1    60   ~ 0
D0
$Comp
L +5V #PWR?
U 1 1 5A075904
P 4250 1200
F 0 "#PWR?" H 4250 1050 50  0001 C CNN
F 1 "+5V" V 4250 1400 50  0000 C CNN
F 2 "" H 4250 1200 50  0001 C CNN
F 3 "" H 4250 1200 50  0001 C CNN
	1    4250 1200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A075933
P 4350 1200
F 0 "#PWR?" H 4350 950 50  0001 C CNN
F 1 "GND" V 4350 1000 50  0000 C CNN
F 2 "" H 4350 1200 50  0001 C CNN
F 3 "" H 4350 1200 50  0001 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1200 2850 1100
Wire Wire Line
	2950 1200 2950 1100
Wire Wire Line
	3050 1200 3050 1100
Wire Wire Line
	3150 1200 3150 1100
Wire Wire Line
	3250 1200 3250 1100
Wire Wire Line
	3350 1200 3350 1100
Wire Wire Line
	3850 1200 3850 1100
Wire Wire Line
	3950 1200 3950 1100
Wire Wire Line
	4050 1200 4050 1100
Wire Wire Line
	4150 1200 4150 1100
Wire Wire Line
	4250 1200 4250 1100
Wire Wire Line
	4350 1200 4350 1100
Text GLabel 5050 6450 3    60   Output ~ 0
BOTTOM
Wire Wire Line
	2400 4750 2250 4750
$Comp
L Conn_01x04 J?
U 1 1 5A0765D4
P 3700 6150
F 0 "J?" H 3700 6350 50  0000 C CNN
F 1 "Top Panel 1" V 3800 6100 50  0000 C CNN
F 2 "" H 3700 6150 50  0001 C CNN
F 3 "" H 3700 6150 50  0001 C CNN
	1    3700 6150
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A07665C
P 3600 6450
F 0 "#PWR?" H 3600 6300 50  0001 C CNN
F 1 "+12V" V 3600 6650 50  0000 C CNN
F 2 "" H 3600 6450 50  0001 C CNN
F 3 "" H 3600 6450 50  0001 C CNN
	1    3600 6450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A0766F3
P 3900 6450
F 0 "#PWR?" H 3900 6200 50  0001 C CNN
F 1 "GND" V 3900 6250 50  0000 C CNN
F 2 "" H 3900 6450 50  0001 C CNN
F 3 "" H 3900 6450 50  0001 C CNN
	1    3900 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6450 3600 6350
Wire Wire Line
	3800 6450 3800 6350
Wire Wire Line
	3900 6450 3900 6350
Text GLabel 4400 6450 3    60   Output ~ 0
TOP
$Comp
L Conn_01x04 J?
U 1 1 5A076950
P 4300 6150
F 0 "J?" H 4300 6350 50  0000 C CNN
F 1 "Top Panel 2" V 4400 6100 50  0000 C CNN
F 2 "" H 4300 6150 50  0001 C CNN
F 3 "" H 4300 6150 50  0001 C CNN
	1    4300 6150
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A076956
P 4200 6450
F 0 "#PWR?" H 4200 6300 50  0001 C CNN
F 1 "+12V" V 4200 6650 50  0000 C CNN
F 2 "" H 4200 6450 50  0001 C CNN
F 3 "" H 4200 6450 50  0001 C CNN
	1    4200 6450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A07695C
P 4500 6450
F 0 "#PWR?" H 4500 6200 50  0001 C CNN
F 1 "GND" V 4500 6250 50  0000 C CNN
F 2 "" H 4500 6450 50  0001 C CNN
F 3 "" H 4500 6450 50  0001 C CNN
	1    4500 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6450 4200 6350
Wire Wire Line
	4400 6450 4400 6350
Wire Wire Line
	4500 6450 4500 6350
$Comp
L Conn_01x04 J?
U 1 1 5A076A4A
P 4950 6150
F 0 "J?" H 4950 6350 50  0000 C CNN
F 1 "Bottom Panel 1" V 5050 6100 50  0000 C CNN
F 2 "" H 4950 6150 50  0001 C CNN
F 3 "" H 4950 6150 50  0001 C CNN
	1    4950 6150
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A076A50
P 4850 6450
F 0 "#PWR?" H 4850 6300 50  0001 C CNN
F 1 "+12V" V 4850 6650 50  0000 C CNN
F 2 "" H 4850 6450 50  0001 C CNN
F 3 "" H 4850 6450 50  0001 C CNN
	1    4850 6450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A076A56
P 5150 6450
F 0 "#PWR?" H 5150 6200 50  0001 C CNN
F 1 "GND" V 5150 6250 50  0000 C CNN
F 2 "" H 5150 6450 50  0001 C CNN
F 3 "" H 5150 6450 50  0001 C CNN
	1    5150 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6450 4850 6350
Wire Wire Line
	5050 6450 5050 6350
Wire Wire Line
	5150 6450 5150 6350
Text GLabel 5700 6450 3    60   Output ~ 0
BOTTOM
$Comp
L Conn_01x04 J?
U 1 1 5A076B5D
P 5600 6150
F 0 "J?" H 5600 6350 50  0000 C CNN
F 1 "Bottom Panel 2" V 5700 6100 50  0000 C CNN
F 2 "" H 5600 6150 50  0001 C CNN
F 3 "" H 5600 6150 50  0001 C CNN
	1    5600 6150
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A076B63
P 5500 6450
F 0 "#PWR?" H 5500 6300 50  0001 C CNN
F 1 "+12V" V 5500 6650 50  0000 C CNN
F 2 "" H 5500 6450 50  0001 C CNN
F 3 "" H 5500 6450 50  0001 C CNN
	1    5500 6450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A076B69
P 5800 6450
F 0 "#PWR?" H 5800 6200 50  0001 C CNN
F 1 "GND" V 5800 6250 50  0000 C CNN
F 2 "" H 5800 6450 50  0001 C CNN
F 3 "" H 5800 6450 50  0001 C CNN
	1    5800 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6450 5500 6350
Wire Wire Line
	5700 6450 5700 6350
Wire Wire Line
	5800 6450 5800 6350
Text Notes 5200 5950 2    60   ~ 0
LED Panel Output Connectors
Wire Notes Line
	3400 5800 3400 7050
Wire Notes Line
	3400 7050 6000 7050
Wire Notes Line
	6000 7050 6000 5800
Wire Notes Line
	6000 5800 3400 5800
$Comp
L Barrel_Jack J?
U 1 1 5A077B67
P 6250 1500
F 0 "J?" H 6250 1710 50  0000 C CNN
F 1 "Barrel_Jack" H 6250 1325 50  0000 C CNN
F 2 "" H 6300 1460 50  0001 C CNN
F 3 "" H 6300 1460 50  0001 C CNN
	1    6250 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A077C1D
P 6750 1600
F 0 "#PWR?" H 6750 1350 50  0001 C CNN
F 1 "GND" H 6750 1450 50  0000 C CNN
F 2 "" H 6750 1600 50  0001 C CNN
F 3 "" H 6750 1600 50  0001 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1600 6750 1600
$Comp
L Polyfuse F?
U 1 1 5A0781B4
P 6800 1400
F 0 "F?" V 6700 1400 50  0000 C CNN
F 1 "Polyfuse" V 6900 1400 50  0000 C CNN
F 2 "" H 6850 1200 50  0001 L CNN
F 3 "" H 6800 1400 50  0001 C CNN
	1    6800 1400
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A0783C6
P 7050 1400
F 0 "#PWR?" H 7050 1250 50  0001 C CNN
F 1 "+12V" H 7050 1540 50  0000 C CNN
F 2 "" H 7050 1400 50  0001 C CNN
F 3 "" H 7050 1400 50  0001 C CNN
	1    7050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1400 6650 1400
$Comp
L L78S05 U?
U 1 1 5A0788C7
P 7850 1400
F 0 "U?" H 7700 1525 50  0000 C CNN
F 1 "L78S05" H 7850 1525 50  0000 L CNN
F 2 "" H 7850 1650 50  0001 C CIN
F 3 "" H 7850 1400 50  0001 C CNN
	1    7850 1400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A0789D3
P 7450 1400
F 0 "#PWR?" H 7450 1250 50  0001 C CNN
F 1 "+12V" H 7450 1540 50  0000 C CNN
F 2 "" H 7450 1400 50  0001 C CNN
F 3 "" H 7450 1400 50  0001 C CNN
	1    7450 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A078A14
P 7850 1850
F 0 "#PWR?" H 7850 1600 50  0001 C CNN
F 1 "GND" H 7850 1700 50  0000 C CNN
F 2 "" H 7850 1850 50  0001 C CNN
F 3 "" H 7850 1850 50  0001 C CNN
	1    7850 1850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A078A55
P 8300 1400
F 0 "#PWR?" H 8300 1250 50  0001 C CNN
F 1 "+5V" H 8300 1540 50  0000 C CNN
F 2 "" H 8300 1400 50  0001 C CNN
F 3 "" H 8300 1400 50  0001 C CNN
	1    8300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1400 8150 1400
Wire Wire Line
	7450 1400 7550 1400
Wire Wire Line
	7850 1700 7850 1850
$Comp
L C C?
U 1 1 5A078C0A
P 7500 1600
F 0 "C?" H 7525 1700 50  0000 L CNN
F 1 "0.33 uF" H 7525 1500 50  0000 L CNN
F 2 "" H 7538 1450 50  0001 C CNN
F 3 "" H 7500 1600 50  0001 C CNN
	1    7500 1600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A078C4F
P 8200 1600
F 0 "C?" H 8225 1700 50  0000 L CNN
F 1 "0.1 uF" H 8225 1500 50  0000 L CNN
F 2 "" H 8238 1450 50  0001 C CNN
F 3 "" H 8200 1600 50  0001 C CNN
	1    8200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1850 8200 1750
Wire Wire Line
	7500 1750 7500 1850
Wire Wire Line
	7500 1850 8200 1850
Connection ~ 7850 1850
Wire Wire Line
	7500 1450 7500 1400
Connection ~ 7500 1400
Wire Wire Line
	8200 1450 8200 1400
Connection ~ 8200 1400
Wire Wire Line
	6950 1400 7050 1400
$Comp
L LED D?
U 1 1 5A0795C9
P 8850 1550
F 0 "D?" H 8850 1650 50  0000 C CNN
F 1 "LED" H 8850 1450 50  0000 C CNN
F 2 "" H 8850 1550 50  0001 C CNN
F 3 "" H 8850 1550 50  0001 C CNN
	1    8850 1550
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A079734
P 8700 1400
F 0 "#PWR?" H 8700 1250 50  0001 C CNN
F 1 "+12V" H 8700 1540 50  0000 C CNN
F 2 "" H 8700 1400 50  0001 C CNN
F 3 "" H 8700 1400 50  0001 C CNN
	1    8700 1400
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5A0797DC
P 9200 1550
F 0 "D?" H 9200 1650 50  0000 C CNN
F 1 "LED" H 9200 1450 50  0000 C CNN
F 2 "" H 9200 1550 50  0001 C CNN
F 3 "" H 9200 1550 50  0001 C CNN
	1    9200 1550
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 5A079830
P 9550 1550
F 0 "D?" H 9550 1650 50  0000 C CNN
F 1 "LED" H 9550 1450 50  0000 C CNN
F 2 "" H 9550 1550 50  0001 C CNN
F 3 "" H 9550 1550 50  0001 C CNN
	1    9550 1550
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 5A079885
P 9900 1550
F 0 "D?" H 9900 1650 50  0000 C CNN
F 1 "LED" H 9900 1450 50  0000 C CNN
F 2 "" H 9900 1550 50  0001 C CNN
F 3 "" H 9900 1550 50  0001 C CNN
	1    9900 1550
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 5A0798DF
P 10250 1550
F 0 "D?" H 10250 1650 50  0000 C CNN
F 1 "LED" H 10250 1450 50  0000 C CNN
F 2 "" H 10250 1550 50  0001 C CNN
F 3 "" H 10250 1550 50  0001 C CNN
	1    10250 1550
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5A07997C
P 10500 1700
F 0 "R?" V 10580 1700 50  0000 C CNN
F 1 "220R" V 10500 1700 50  0000 C CNN
F 2 "" V 10430 1700 50  0001 C CNN
F 3 "" H 10500 1700 50  0001 C CNN
	1    10500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1400 8700 1550
Wire Wire Line
	9000 1550 9050 1550
Wire Wire Line
	9350 1550 9400 1550
Wire Wire Line
	9700 1550 9750 1550
Wire Wire Line
	10050 1550 10100 1550
Wire Wire Line
	10400 1550 10500 1550
$Comp
L GND #PWR?
U 1 1 5A079DB9
P 10500 1900
F 0 "#PWR?" H 10500 1650 50  0001 C CNN
F 1 "GND" H 10500 1750 50  0000 C CNN
F 2 "" H 10500 1900 50  0001 C CNN
F 3 "" H 10500 1900 50  0001 C CNN
	1    10500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1850 10500 1900
Text Notes 9900 1300 2    60   ~ 0
Power On LEDs
Text Notes 8350 1150 2    60   ~ 0
Power Supply Section
Wire Notes Line
	5900 1000 5900 2150
Wire Notes Line
	5900 2150 10650 2150
Wire Notes Line
	10650 2150 10650 1000
Wire Notes Line
	10650 1000 5900 1000
Text GLabel 6900 3000 0    60   Output ~ 0
ON_LED
Text GLabel 6900 3350 0    60   Output ~ 0
TOP_LED
Text GLabel 9500 3050 0    60   Output ~ 0
BOTTOM_LED
Text GLabel 9500 3400 0    60   Output ~ 0
SET_TIMER_LED
Text GLabel 9850 4700 2    60   Input ~ 0
TMR_UP_BTN_IN
Text GLabel 9900 3950 2    60   Input ~ 0
TMR_SET_BTN_IN
Text GLabel 7700 5500 2    60   Input ~ 0
BOTTOM_BTN_IN
Text GLabel 7700 3950 2    60   Input ~ 0
ON_BTN_IN
Text GLabel 7700 4700 2    60   Input ~ 0
TOP_BTN_IN
Text GLabel 9850 5500 2    60   Input ~ 0
TMR_DOWN_BTN_IN
$Comp
L LED D?
U 1 1 5A07C51B
P 7150 3000
F 0 "D?" H 7150 3100 50  0000 C CNN
F 1 "LED" H 7150 2900 50  0000 C CNN
F 2 "" H 7150 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0001 C CNN
	1    7150 3000
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5A07C5FC
P 7550 3000
F 0 "R?" V 7630 3000 50  0000 C CNN
F 1 "R" V 7550 3000 50  0000 C CNN
F 2 "" V 7480 3000 50  0001 C CNN
F 3 "" H 7550 3000 50  0001 C CNN
	1    7550 3000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A07C664
P 7800 3050
F 0 "#PWR?" H 7800 2800 50  0001 C CNN
F 1 "GND" H 7800 2900 50  0000 C CNN
F 2 "" H 7800 3050 50  0001 C CNN
F 3 "" H 7800 3050 50  0001 C CNN
	1    7800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3000 7000 3000
Wire Wire Line
	7300 3000 7400 3000
Wire Wire Line
	7700 3000 7800 3000
Wire Wire Line
	7800 3000 7800 3050
$Comp
L LED D?
U 1 1 5A07C9C4
P 7150 3350
F 0 "D?" H 7150 3450 50  0000 C CNN
F 1 "LED" H 7150 3250 50  0000 C CNN
F 2 "" H 7150 3350 50  0001 C CNN
F 3 "" H 7150 3350 50  0001 C CNN
	1    7150 3350
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5A07C9CA
P 7550 3350
F 0 "R?" V 7630 3350 50  0000 C CNN
F 1 "R" V 7550 3350 50  0000 C CNN
F 2 "" V 7480 3350 50  0001 C CNN
F 3 "" H 7550 3350 50  0001 C CNN
	1    7550 3350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A07C9D0
P 7800 3400
F 0 "#PWR?" H 7800 3150 50  0001 C CNN
F 1 "GND" H 7800 3250 50  0000 C CNN
F 2 "" H 7800 3400 50  0001 C CNN
F 3 "" H 7800 3400 50  0001 C CNN
	1    7800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3350 7000 3350
Wire Wire Line
	7300 3350 7400 3350
Wire Wire Line
	7700 3350 7800 3350
Wire Wire Line
	7800 3350 7800 3400
$Comp
L LED D?
U 1 1 5A07CB05
P 9750 3050
F 0 "D?" H 9750 3150 50  0000 C CNN
F 1 "LED" H 9750 2950 50  0000 C CNN
F 2 "" H 9750 3050 50  0001 C CNN
F 3 "" H 9750 3050 50  0001 C CNN
	1    9750 3050
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5A07CB0B
P 10150 3050
F 0 "R?" V 10230 3050 50  0000 C CNN
F 1 "R" V 10150 3050 50  0000 C CNN
F 2 "" V 10080 3050 50  0001 C CNN
F 3 "" H 10150 3050 50  0001 C CNN
	1    10150 3050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A07CB11
P 10400 3100
F 0 "#PWR?" H 10400 2850 50  0001 C CNN
F 1 "GND" H 10400 2950 50  0000 C CNN
F 2 "" H 10400 3100 50  0001 C CNN
F 3 "" H 10400 3100 50  0001 C CNN
	1    10400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3050 9600 3050
Wire Wire Line
	9900 3050 10000 3050
Wire Wire Line
	10300 3050 10400 3050
Wire Wire Line
	10400 3050 10400 3100
$Comp
L LED D?
U 1 1 5A07CC33
P 9750 3400
F 0 "D?" H 9750 3500 50  0000 C CNN
F 1 "LED" H 9750 3300 50  0000 C CNN
F 2 "" H 9750 3400 50  0001 C CNN
F 3 "" H 9750 3400 50  0001 C CNN
	1    9750 3400
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5A07CC39
P 10150 3400
F 0 "R?" V 10230 3400 50  0000 C CNN
F 1 "R" V 10150 3400 50  0000 C CNN
F 2 "" V 10080 3400 50  0001 C CNN
F 3 "" H 10150 3400 50  0001 C CNN
	1    10150 3400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A07CC3F
P 10400 3450
F 0 "#PWR?" H 10400 3200 50  0001 C CNN
F 1 "GND" H 10400 3300 50  0000 C CNN
F 2 "" H 10400 3450 50  0001 C CNN
F 3 "" H 10400 3450 50  0001 C CNN
	1    10400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3400 9600 3400
Wire Wire Line
	9900 3400 10000 3400
Wire Wire Line
	10300 3400 10400 3400
Wire Wire Line
	10400 3400 10400 3450
$Comp
L SW_Push SW?
U 1 1 5A07D3E5
P 6850 3950
F 0 "SW?" H 6900 4050 50  0000 L CNN
F 1 "SW_Push" H 6850 3890 50  0000 C CNN
F 2 "" H 6850 4150 50  0001 C CNN
F 3 "" H 6850 4150 50  0001 C CNN
	1    6850 3950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A07D666
P 6450 3950
F 0 "#PWR?" H 6450 3800 50  0001 C CNN
F 1 "+5V" H 6450 4090 50  0000 C CNN
F 2 "" H 6450 3950 50  0001 C CNN
F 3 "" H 6450 3950 50  0001 C CNN
	1    6450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3950 6650 3950
$Comp
L R R?
U 1 1 5A07D7A7
P 7200 4100
F 0 "R?" V 7280 4100 50  0000 C CNN
F 1 "10kR" V 7200 4100 50  0000 C CNN
F 2 "" V 7130 4100 50  0001 C CNN
F 3 "" H 7200 4100 50  0001 C CNN
	1    7200 4100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A07D827
P 7450 3950
F 0 "R?" V 7530 3950 50  0000 C CNN
F 1 "10kR" V 7450 3950 50  0000 C CNN
F 2 "" V 7380 3950 50  0001 C CNN
F 3 "" H 7450 3950 50  0001 C CNN
	1    7450 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 3950 7300 3950
Connection ~ 7200 3950
$Comp
L GND #PWR?
U 1 1 5A07DA08
P 7200 4300
F 0 "#PWR?" H 7200 4050 50  0001 C CNN
F 1 "GND" H 7200 4150 50  0000 C CNN
F 2 "" H 7200 4300 50  0001 C CNN
F 3 "" H 7200 4300 50  0001 C CNN
	1    7200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4250 7200 4300
$Comp
L SW_Push SW?
U 1 1 5A07ECC0
P 9000 3950
F 0 "SW?" H 9050 4050 50  0000 L CNN
F 1 "SW_Push" H 9000 3890 50  0000 C CNN
F 2 "" H 9000 4150 50  0001 C CNN
F 3 "" H 9000 4150 50  0001 C CNN
	1    9000 3950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A07ECC6
P 8600 3950
F 0 "#PWR?" H 8600 3800 50  0001 C CNN
F 1 "+5V" H 8600 4090 50  0000 C CNN
F 2 "" H 8600 3950 50  0001 C CNN
F 3 "" H 8600 3950 50  0001 C CNN
	1    8600 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3950 8800 3950
$Comp
L R R?
U 1 1 5A07ECCD
P 9350 4100
F 0 "R?" V 9430 4100 50  0000 C CNN
F 1 "10kR" V 9350 4100 50  0000 C CNN
F 2 "" V 9280 4100 50  0001 C CNN
F 3 "" H 9350 4100 50  0001 C CNN
	1    9350 4100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A07ECD3
P 9600 3950
F 0 "R?" V 9680 3950 50  0000 C CNN
F 1 "10kR" V 9600 3950 50  0000 C CNN
F 2 "" V 9530 3950 50  0001 C CNN
F 3 "" H 9600 3950 50  0001 C CNN
	1    9600 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3950 9450 3950
Connection ~ 9350 3950
$Comp
L GND #PWR?
U 1 1 5A07ECDB
P 9350 4300
F 0 "#PWR?" H 9350 4050 50  0001 C CNN
F 1 "GND" H 9350 4150 50  0000 C CNN
F 2 "" H 9350 4300 50  0001 C CNN
F 3 "" H 9350 4300 50  0001 C CNN
	1    9350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4250 9350 4300
$Comp
L SW_Push SW?
U 1 1 5A07ECE2
P 9000 4700
F 0 "SW?" H 9050 4800 50  0000 L CNN
F 1 "SW_Push" H 9000 4640 50  0000 C CNN
F 2 "" H 9000 4900 50  0001 C CNN
F 3 "" H 9000 4900 50  0001 C CNN
	1    9000 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A07ECE8
P 8600 4700
F 0 "#PWR?" H 8600 4550 50  0001 C CNN
F 1 "+5V" H 8600 4840 50  0000 C CNN
F 2 "" H 8600 4700 50  0001 C CNN
F 3 "" H 8600 4700 50  0001 C CNN
	1    8600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4700 8800 4700
$Comp
L R R?
U 1 1 5A07ECEF
P 9350 4850
F 0 "R?" V 9430 4850 50  0000 C CNN
F 1 "10kR" V 9350 4850 50  0000 C CNN
F 2 "" V 9280 4850 50  0001 C CNN
F 3 "" H 9350 4850 50  0001 C CNN
	1    9350 4850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A07ECF5
P 9600 4700
F 0 "R?" V 9680 4700 50  0000 C CNN
F 1 "10kR" V 9600 4700 50  0000 C CNN
F 2 "" V 9530 4700 50  0001 C CNN
F 3 "" H 9600 4700 50  0001 C CNN
	1    9600 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 4700 9450 4700
Connection ~ 9350 4700
$Comp
L GND #PWR?
U 1 1 5A07ECFD
P 9350 5050
F 0 "#PWR?" H 9350 4800 50  0001 C CNN
F 1 "GND" H 9350 4900 50  0000 C CNN
F 2 "" H 9350 5050 50  0001 C CNN
F 3 "" H 9350 5050 50  0001 C CNN
	1    9350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5000 9350 5050
$Comp
L SW_Push SW?
U 1 1 5A08007C
P 6850 5500
F 0 "SW?" H 6900 5600 50  0000 L CNN
F 1 "SW_Push" H 6850 5440 50  0000 C CNN
F 2 "" H 6850 5700 50  0001 C CNN
F 3 "" H 6850 5700 50  0001 C CNN
	1    6850 5500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A080082
P 6450 5500
F 0 "#PWR?" H 6450 5350 50  0001 C CNN
F 1 "+5V" H 6450 5640 50  0000 C CNN
F 2 "" H 6450 5500 50  0001 C CNN
F 3 "" H 6450 5500 50  0001 C CNN
	1    6450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5500 6650 5500
$Comp
L R R?
U 1 1 5A080089
P 7200 5650
F 0 "R?" V 7280 5650 50  0000 C CNN
F 1 "10kR" V 7200 5650 50  0000 C CNN
F 2 "" V 7130 5650 50  0001 C CNN
F 3 "" H 7200 5650 50  0001 C CNN
	1    7200 5650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A08008F
P 7450 5500
F 0 "R?" V 7530 5500 50  0000 C CNN
F 1 "10kR" V 7450 5500 50  0000 C CNN
F 2 "" V 7380 5500 50  0001 C CNN
F 3 "" H 7450 5500 50  0001 C CNN
	1    7450 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 5500 7300 5500
Connection ~ 7200 5500
$Comp
L GND #PWR?
U 1 1 5A080097
P 7200 5850
F 0 "#PWR?" H 7200 5600 50  0001 C CNN
F 1 "GND" H 7200 5700 50  0000 C CNN
F 2 "" H 7200 5850 50  0001 C CNN
F 3 "" H 7200 5850 50  0001 C CNN
	1    7200 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5800 7200 5850
$Comp
L SW_Push SW?
U 1 1 5A0800A4
P 9000 5500
F 0 "SW?" H 9050 5600 50  0000 L CNN
F 1 "SW_Push" H 9000 5440 50  0000 C CNN
F 2 "" H 9000 5700 50  0001 C CNN
F 3 "" H 9000 5700 50  0001 C CNN
	1    9000 5500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A0800AA
P 8600 5500
F 0 "#PWR?" H 8600 5350 50  0001 C CNN
F 1 "+5V" H 8600 5640 50  0000 C CNN
F 2 "" H 8600 5500 50  0001 C CNN
F 3 "" H 8600 5500 50  0001 C CNN
	1    8600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5500 8800 5500
$Comp
L R R?
U 1 1 5A0800B1
P 9350 5650
F 0 "R?" V 9430 5650 50  0000 C CNN
F 1 "10kR" V 9350 5650 50  0000 C CNN
F 2 "" V 9280 5650 50  0001 C CNN
F 3 "" H 9350 5650 50  0001 C CNN
	1    9350 5650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A0800B7
P 9600 5500
F 0 "R?" V 9680 5500 50  0000 C CNN
F 1 "10kR" V 9600 5500 50  0000 C CNN
F 2 "" V 9530 5500 50  0001 C CNN
F 3 "" H 9600 5500 50  0001 C CNN
	1    9600 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 5500 9450 5500
Connection ~ 9350 5500
$Comp
L GND #PWR?
U 1 1 5A0800BF
P 9350 5850
F 0 "#PWR?" H 9350 5600 50  0001 C CNN
F 1 "GND" H 9350 5700 50  0000 C CNN
F 2 "" H 9350 5850 50  0001 C CNN
F 3 "" H 9350 5850 50  0001 C CNN
	1    9350 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5800 9350 5850
$Comp
L SW_Push SW?
U 1 1 5A080BDA
P 6850 4700
F 0 "SW?" H 6900 4800 50  0000 L CNN
F 1 "SW_Push" H 6850 4640 50  0000 C CNN
F 2 "" H 6850 4900 50  0001 C CNN
F 3 "" H 6850 4900 50  0001 C CNN
	1    6850 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A080BE0
P 6450 4700
F 0 "#PWR?" H 6450 4550 50  0001 C CNN
F 1 "+5V" H 6450 4840 50  0000 C CNN
F 2 "" H 6450 4700 50  0001 C CNN
F 3 "" H 6450 4700 50  0001 C CNN
	1    6450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4700 6650 4700
$Comp
L R R?
U 1 1 5A080BE7
P 7200 4850
F 0 "R?" V 7280 4850 50  0000 C CNN
F 1 "10kR" V 7200 4850 50  0000 C CNN
F 2 "" V 7130 4850 50  0001 C CNN
F 3 "" H 7200 4850 50  0001 C CNN
	1    7200 4850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A080BED
P 7450 4700
F 0 "R?" V 7530 4700 50  0000 C CNN
F 1 "10kR" V 7450 4700 50  0000 C CNN
F 2 "" V 7380 4700 50  0001 C CNN
F 3 "" H 7450 4700 50  0001 C CNN
	1    7450 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 4700 7300 4700
Connection ~ 7200 4700
$Comp
L GND #PWR?
U 1 1 5A080BF5
P 7200 5050
F 0 "#PWR?" H 7200 4800 50  0001 C CNN
F 1 "GND" H 7200 4900 50  0000 C CNN
F 2 "" H 7200 5050 50  0001 C CNN
F 3 "" H 7200 5050 50  0001 C CNN
	1    7200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5000 7200 5050
Wire Wire Line
	7600 3950 7700 3950
Wire Wire Line
	7600 4700 7700 4700
Wire Wire Line
	7600 5500 7700 5500
Wire Wire Line
	9750 3950 9900 3950
Wire Wire Line
	9750 4700 9850 4700
Wire Wire Line
	9750 5500 9850 5500
Text Notes 9250 2800 2    60   ~ 0
User Interface Section (Buttons and LEDs)
Wire Notes Line
	6250 2650 6250 6150
Wire Notes Line
	6250 6150 10900 6150
Wire Notes Line
	10900 6150 10900 2600
Wire Notes Line
	10900 2600 6250 2600
Wire Notes Line
	6250 2600 6250 2700
Text GLabel 3600 2050 2    60   Input ~ 0
V0
$Comp
L +5V #PWR?
U 1 1 5A0887F5
P 3100 2250
F 0 "#PWR?" H 3100 2100 50  0001 C CNN
F 1 "+5V" H 3100 2390 50  0000 C CNN
F 2 "" H 3100 2250 50  0001 C CNN
F 3 "" H 3100 2250 50  0001 C CNN
	1    3100 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A088939
P 3950 2350
F 0 "#PWR?" H 3950 2100 50  0001 C CNN
F 1 "GND" H 3950 2200 50  0000 C CNN
F 2 "" H 3950 2350 50  0001 C CNN
F 3 "" H 3950 2350 50  0001 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A088A75
P 3750 2300
F 0 "R?" V 3830 2300 50  0000 C CNN
F 1 "R" V 3750 2300 50  0000 C CNN
F 2 "" V 3680 2300 50  0001 C CNN
F 3 "" H 3750 2300 50  0001 C CNN
	1    3750 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5A089338
P 3350 2400
F 0 "R?" V 3430 2400 50  0000 C CNN
F 1 "R" V 3350 2400 50  0000 C CNN
F 2 "" V 3280 2400 50  0001 C CNN
F 3 "" H 3350 2400 50  0001 C CNN
	1    3350 2400
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5A0893EC
P 3350 2200
F 0 "R?" V 3430 2200 50  0000 C CNN
F 1 "R" V 3350 2200 50  0000 C CNN
F 2 "" V 3280 2200 50  0001 C CNN
F 3 "" H 3350 2200 50  0001 C CNN
	1    3350 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 2200 3200 2400
Wire Wire Line
	3100 2300 3200 2300
Connection ~ 3200 2300
Wire Wire Line
	3500 2400 3500 2200
Wire Wire Line
	3600 2300 3500 2300
Connection ~ 3500 2300
Wire Wire Line
	3550 2300 3550 2050
Connection ~ 3550 2300
Wire Wire Line
	3900 2300 3950 2300
Wire Wire Line
	3550 2050 3600 2050
Wire Wire Line
	3950 2300 3950 2350
Wire Wire Line
	3100 2250 3100 2300
Text Notes 4150 1950 2    60   ~ 0
LCD Contrast Voltage Divider
Wire Notes Line
	2700 1800 2700 2600
Wire Notes Line
	2700 2600 4300 2600
Wire Notes Line
	4300 2600 4300 1800
Wire Notes Line
	4300 1800 2700 1800
Wire Notes Line
	1150 2850 2550 2850
Wire Notes Line
	2550 2850 2550 1800
Wire Notes Line
	2550 1800 1150 1800
Wire Notes Line
	1150 1800 1150 2850
$EndSCHEMATC
