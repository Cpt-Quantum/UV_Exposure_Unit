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
LIBS:pic16f886
LIBS:PIC
LIBS:UV_Enclosure_PIC_board-cache
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
L PIC18F45K50 U?
U 1 1 5996EF76
P 5000 2950
F 0 "U?" H 5000 1900 60  0000 C CNN
F 1 "PIC18F45K50" H 5050 4000 60  0000 C CNN
F 2 "" H 5000 2950 60  0001 C CNN
F 3 "" H 5000 2950 60  0001 C CNN
	1    5000 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P?
U 1 1 5996EFE8
P 8150 5150
F 0 "P?" H 8150 5500 50  0000 C CNN
F 1 "Programming_Header" V 8250 5150 50  0000 C CNN
F 2 "" H 8150 5150 50  0000 C CNN
F 3 "" H 8150 5150 50  0000 C CNN
	1    8150 5150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X06 P?
U 1 1 5996F07B
P 6900 2450
F 0 "P?" H 6900 2800 50  0000 C CNN
F 1 "LCD_Header" V 7000 2450 50  0000 C CNN
F 2 "" H 6900 2450 50  0000 C CNN
F 3 "" H 6900 2450 50  0000 C CNN
	1    6900 2450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 5996F174
P 6900 3150
F 0 "P?" H 6900 3400 50  0000 C CNN
F 1 "LED_Header" V 7000 3150 50  0000 C CNN
F 2 "" H 6900 3150 50  0000 C CNN
F 3 "" H 6900 3150 50  0000 C CNN
	1    6900 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P?
U 1 1 5996F241
P 6900 3800
F 0 "P?" H 6900 4150 50  0000 C CNN
F 1 "Switch_Header" V 7000 3800 50  0000 C CNN
F 2 "" H 6900 3800 50  0000 C CNN
F 3 "" H 6900 3800 50  0000 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 5996F270
P 7550 3050
F 0 "P?" H 7550 3200 50  0000 C CNN
F 1 "Switch/LED_Power_Header" V 7650 3050 50  0000 C CNN
F 2 "" H 7550 3050 50  0000 C CNN
F 3 "" H 7550 3050 50  0000 C CNN
	1    7550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2700 6700 2700
Wire Wire Line
	5800 2600 6700 2600
Wire Wire Line
	5800 2500 6700 2500
Wire Wire Line
	5800 2400 6700 2400
Wire Wire Line
	5800 2300 6700 2300
Wire Wire Line
	5800 2200 6700 2200
Wire Wire Line
	5800 3000 6700 3000
Wire Wire Line
	5800 3100 6700 3100
Wire Wire Line
	5800 3200 6700 3200
Wire Wire Line
	5800 3300 6700 3300
$Comp
L CONN_01X02 P?
U 1 1 5996F641
P 3300 4050
F 0 "P?" H 3300 4200 50  0000 C CNN
F 1 "Serial header" V 3400 4050 50  0000 C CNN
F 2 "" H 3300 4050 50  0000 C CNN
F 3 "" H 3300 4050 50  0000 C CNN
	1    3300 4050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 59A69938
P 3350 3350
F 0 "P?" H 3350 3500 50  0000 C CNN
F 1 "USB_Header" V 3450 3350 50  0000 C CNN
F 2 "" H 3350 3350 50  0000 C CNN
F 3 "" H 3350 3350 50  0000 C CNN
	1    3350 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 3900 6300 3900
Wire Wire Line
	6300 3900 6300 4050
Wire Wire Line
	6300 4050 6700 4050
Wire Wire Line
	6700 3950 6400 3950
Wire Wire Line
	6400 3950 6400 3800
Wire Wire Line
	6400 3800 5800 3800
Wire Wire Line
	4900 3950 4900 3750
Wire Wire Line
	4850 3850 4850 3650
Wire Wire Line
	4150 3950 4900 3950
Wire Wire Line
	4900 3750 6450 3750
Wire Wire Line
	6450 3750 6450 3850
Wire Wire Line
	6450 3850 6700 3850
Wire Wire Line
	6700 3750 6550 3750
Wire Wire Line
	6550 3750 6550 3650
Wire Wire Line
	6550 3650 4850 3650
Wire Wire Line
	4200 3600 4150 3600
Wire Wire Line
	4150 3600 4150 3550
Wire Wire Line
	4150 3550 6600 3550
Wire Wire Line
	6600 3550 6600 3650
Wire Wire Line
	6600 3650 6700 3650
Wire Wire Line
	6700 3550 6650 3550
Wire Wire Line
	6650 3550 6650 3450
Wire Wire Line
	6650 3450 4150 3450
Wire Wire Line
	4150 3450 4150 3500
Wire Wire Line
	4150 3500 4200 3500
Wire Wire Line
	4850 3850 4150 3850
Wire Wire Line
	4150 3850 4150 3800
Wire Wire Line
	4150 3800 4200 3800
Wire Wire Line
	4200 3900 4150 3900
Wire Wire Line
	4150 3900 4150 3950
Wire Wire Line
	5800 3500 6050 3500
Wire Wire Line
	6050 3500 6050 4350
Wire Wire Line
	6050 4350 3600 4350
Wire Wire Line
	3600 4350 3600 4100
Wire Wire Line
	3600 4100 3500 4100
Wire Wire Line
	5800 3400 6000 3400
Wire Wire Line
	6000 3400 6000 4300
Wire Wire Line
	6000 4300 3700 4300
Wire Wire Line
	3700 4300 3700 4000
Wire Wire Line
	3700 4000 3500 4000
Wire Wire Line
	5800 3700 5950 3700
Wire Wire Line
	5950 3700 5950 4200
Wire Wire Line
	5950 4200 3750 4200
Wire Wire Line
	3750 3400 3550 3400
Wire Wire Line
	5800 3600 5900 3600
Wire Wire Line
	5900 3600 5900 4150
Wire Wire Line
	5900 4150 3800 4150
Wire Wire Line
	3800 3300 3550 3300
$Comp
L CONN_01X02 P?
U 1 1 59A6A711
P 3450 1100
F 0 "P?" H 3450 1250 50  0000 C CNN
F 1 "Power Input" V 3550 1100 50  0000 C CNN
F 2 "" H 3450 1100 50  0000 C CNN
F 3 "" H 3450 1100 50  0000 C CNN
	1    3450 1100
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 59A6A742
P 7100 1100
F 0 "P?" H 7100 1250 50  0000 C CNN
F 1 "Power Output" V 7200 1100 50  0000 C CNN
F 2 "" H 7100 1100 50  0000 C CNN
F 3 "" H 7100 1100 50  0000 C CNN
	1    7100 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59A6B117
P 3750 1050
F 0 "#PWR?" H 3750 800 50  0001 C CNN
F 1 "GND" H 3750 900 50  0000 C CNN
F 2 "" H 3750 1050 50  0000 C CNN
F 3 "" H 3750 1050 50  0000 C CNN
	1    3750 1050
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 59A6B13F
P 3750 1150
F 0 "#PWR?" H 3750 1000 50  0001 C CNN
F 1 "+5V" H 3750 1290 50  0000 C CNN
F 2 "" H 3750 1150 50  0000 C CNN
F 3 "" H 3750 1150 50  0000 C CNN
	1    3750 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 1150 6900 1150
Connection ~ 3750 1150
Wire Wire Line
	3650 1050 6900 1050
Connection ~ 3750 1050
Wire Wire Line
	6150 1800 7250 1800
Wire Wire Line
	7250 1800 7250 3000
Wire Wire Line
	7250 3000 7350 3000
Wire Wire Line
	6100 1850 7200 1850
Wire Wire Line
	7200 1850 7200 3100
Wire Wire Line
	7200 3100 7350 3100
Wire Wire Line
	4200 2000 2950 2000
Wire Wire Line
	2950 2000 2950 4650
Wire Wire Line
	2950 4650 7900 4650
Wire Wire Line
	7900 4650 7900 4950
Wire Wire Line
	6150 1800 6150 1050
Connection ~ 6150 1050
Wire Wire Line
	6100 1850 6100 1150
Connection ~ 6100 1150
Wire Wire Line
	6600 1050 6600 1550
Wire Wire Line
	6600 1550 8100 1550
Wire Wire Line
	8100 1550 8100 4950
Connection ~ 6600 1050
Wire Wire Line
	6550 1150 6550 1600
Wire Wire Line
	6550 1600 8000 1600
Wire Wire Line
	8000 1600 8000 4950
Connection ~ 6550 1150
Wire Wire Line
	5800 2000 8200 2000
Wire Wire Line
	8200 2000 8200 4950
Wire Wire Line
	5800 2100 8300 2100
Wire Wire Line
	8300 2100 8300 4950
Wire Wire Line
	6350 1150 6350 2900
Wire Wire Line
	6350 2900 5800 2900
Connection ~ 6350 1150
Wire Wire Line
	6300 1050 6300 2800
Wire Wire Line
	6300 2800 5800 2800
Connection ~ 6300 1050
Wire Wire Line
	4000 1050 4000 3100
Wire Wire Line
	4000 3100 4200 3100
Connection ~ 4000 1050
Wire Wire Line
	4200 3000 4050 3000
Wire Wire Line
	4050 3000 4050 1150
Connection ~ 4050 1150
Wire Wire Line
	3750 4200 3750 3400
Wire Wire Line
	3800 4150 3800 3300
$Comp
L CONN_01X03 P?
U 1 1 59A6CA89
P 3950 3300
F 0 "P?" H 3950 3500 50  0000 C CNN
F 1 "Spare I/O" V 4050 3300 50  0000 C CNN
F 2 "" H 3950 3300 50  0000 C CNN
F 3 "" H 3950 3300 50  0000 C CNN
	1    3950 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 3200 4150 3200
Wire Wire Line
	4200 3300 4150 3300
Wire Wire Line
	4200 3400 4150 3400
$Comp
L CONN_01X09 P?
U 1 1 59A6CC61
P 3750 2500
F 0 "P?" H 3750 3000 50  0000 C CNN
F 1 "Spare I/O" V 3850 2500 50  0000 C CNN
F 2 "" H 3750 2500 50  0000 C CNN
F 3 "" H 3750 2500 50  0000 C CNN
	1    3750 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 2100 3950 2100
Wire Wire Line
	4200 2200 3950 2200
Wire Wire Line
	4200 2300 3950 2300
Wire Wire Line
	4200 2400 3950 2400
Wire Wire Line
	4200 2500 3950 2500
Wire Wire Line
	4200 2600 3950 2600
Wire Wire Line
	4200 2700 3950 2700
Wire Wire Line
	4200 2800 3950 2800
Wire Wire Line
	4200 2900 3950 2900
$EndSCHEMATC
