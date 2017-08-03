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
L PIC16F886 IC?
U 1 1 58E90E5A
P 5600 3250
F 0 "IC?" H 5650 3200 60  0000 C CNN
F 1 "PIC16F886" H 5550 4200 60  0000 C CNN
F 2 "" H 5600 3250 60  0001 C CNN
F 3 "" H 5600 3250 60  0001 C CNN
	1    5600 3250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P?
U 1 1 58E90F37
P 4050 1350
F 0 "P?" H 4050 1700 50  0000 C CNN
F 1 "CONN_01X06" V 4150 1350 50  0000 C CNN
F 2 "" H 4050 1350 50  0000 C CNN
F 3 "" H 4050 1350 50  0000 C CNN
	1    4050 1350
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 58E911CF
P 8100 1450
F 0 "P?" H 8100 1600 50  0000 C CNN
F 1 "CONN_01X02" V 8200 1450 50  0000 C CNN
F 2 "" H 8100 1450 50  0000 C CNN
F 3 "" H 8100 1450 50  0000 C CNN
	1    8100 1450
	0    -1   -1   0   
$EndComp
Text Notes 7700 1500 0    60   ~ 0
GND
Text Notes 8300 1500 0    60   ~ 0
5V
$Comp
L CONN_01X06 P?
U 1 1 58E9138E
P 3550 2800
F 0 "P?" H 3550 3150 50  0000 C CNN
F 1 "CONN_01X06" V 3650 2800 50  0000 C CNN
F 2 "" H 3550 2800 50  0000 C CNN
F 3 "" H 3550 2800 50  0000 C CNN
	1    3550 2800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 58E913DF
P 3550 3400
F 0 "P?" H 3550 3650 50  0000 C CNN
F 1 "CONN_01X04" V 3650 3400 50  0000 C CNN
F 2 "" H 3550 3400 50  0000 C CNN
F 3 "" H 3550 3400 50  0000 C CNN
	1    3550 3400
	-1   0    0    1   
$EndComp
Text Notes 2750 2800 0    60   ~ 0
Button inputs
Text Notes 2800 3450 0    60   ~ 0
LED outputs
Text Notes 3750 1150 0    60   ~ 0
ICSP Header
Text Notes 7700 1200 0    60   ~ 0
Power Input Connector
$Comp
L CONN_01X06 P?
U 1 1 59839819
P 8550 2900
F 0 "P?" H 8550 3250 50  0000 C CNN
F 1 "CONN_01X06" V 8650 2900 50  0000 C CNN
F 2 "" H 8550 2900 50  0000 C CNN
F 3 "" H 8550 2900 50  0000 C CNN
	1    8550 2900
	1    0    0    -1  
$EndComp
Text Notes 8750 2950 0    60   ~ 0
LCD Control Lines
Wire Wire Line
	4750 2400 4300 2400
Wire Wire Line
	4300 2400 4300 1550
Wire Wire Line
	6500 3600 8150 3600
Wire Wire Line
	7000 1650 7000 3600
Wire Wire Line
	7000 1650 4200 1650
Wire Wire Line
	4200 1650 4200 1550
Wire Wire Line
	7100 3750 7100 1750
Wire Wire Line
	7100 1750 4100 1750
Wire Wire Line
	4100 1750 4100 1550
Wire Wire Line
	6500 2400 6850 2400
Wire Wire Line
	6850 2400 6850 1850
Wire Wire Line
	6850 1850 4000 1850
Wire Wire Line
	4000 1850 4000 1550
Wire Wire Line
	6500 2550 6750 2550
Wire Wire Line
	6750 2550 6750 1950
Wire Wire Line
	6750 1950 3900 1950
Wire Wire Line
	3900 1950 3900 1550
Connection ~ 7100 3750
Connection ~ 7000 3600
Wire Wire Line
	8150 3600 8150 1650
Wire Wire Line
	8050 3750 8050 1650
Wire Wire Line
	8050 3750 6500 3750
Wire Wire Line
	4750 2550 3750 2550
Wire Wire Line
	4750 2700 4450 2700
Wire Wire Line
	4450 2700 4450 2650
Wire Wire Line
	4450 2650 3750 2650
Wire Wire Line
	4750 2850 4400 2850
Wire Wire Line
	4400 2850 4400 2750
Wire Wire Line
	4400 2750 3750 2750
Wire Wire Line
	4750 3000 4350 3000
Wire Wire Line
	4350 3000 4350 2850
Wire Wire Line
	4350 2850 3750 2850
Wire Wire Line
	4750 3150 4300 3150
Wire Wire Line
	4300 3150 4300 2950
Wire Wire Line
	4300 2950 3750 2950
Wire Wire Line
	4750 3300 4250 3300
Wire Wire Line
	4250 3300 4250 3050
Wire Wire Line
	4250 3050 3750 3050
Wire Wire Line
	4750 3900 4100 3900
Wire Wire Line
	4100 3900 4100 3250
Wire Wire Line
	4100 3250 3750 3250
Wire Wire Line
	4750 4050 4050 4050
Wire Wire Line
	4050 4050 4050 3350
Wire Wire Line
	4050 3350 3750 3350
Wire Wire Line
	4750 4200 4000 4200
Wire Wire Line
	4000 4200 4000 3450
Wire Wire Line
	4000 3450 3750 3450
Wire Wire Line
	4750 4350 3950 4350
Wire Wire Line
	3950 4350 3950 3550
Wire Wire Line
	3950 3550 3750 3550
Wire Wire Line
	6500 2700 7600 2700
Wire Wire Line
	7600 2700 7600 2650
Wire Wire Line
	7600 2650 8350 2650
Wire Wire Line
	8350 2750 7800 2750
Wire Wire Line
	7800 2750 7800 2850
Wire Wire Line
	7800 2850 6500 2850
Wire Wire Line
	8350 2850 7950 2850
Wire Wire Line
	7950 2850 7950 3000
Wire Wire Line
	7950 3000 6500 3000
Wire Wire Line
	8350 2950 8200 2950
Wire Wire Line
	8200 2950 8200 3150
Wire Wire Line
	8200 3150 6500 3150
Wire Wire Line
	8350 3050 8250 3050
Wire Wire Line
	8250 3050 8250 3300
Wire Wire Line
	8250 3300 6500 3300
Wire Wire Line
	8350 3150 8350 3450
Wire Wire Line
	8350 3450 6500 3450
$EndSCHEMATC
