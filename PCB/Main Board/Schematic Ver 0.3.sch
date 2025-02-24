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
LIBS:Schematic Ver 0.3-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "22 dec 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4400 3800 2    60   Input ~ 0
IR_Tx
Text GLabel 5100 3800 0    60   Input ~ 0
IR_Tx
Text GLabel 4550 4550 2    60   Input ~ 0
IR_Tx
Text GLabel 6050 5000 1    60   Input ~ 0
IR_Tx
Text GLabel 7000 4300 0    60   Input ~ 0
IR_Tx
Text Label 6500 3400 0    60   ~ 0
LCD
Text Label 6650 3300 0    60   ~ 0
P1
Text Label 6650 3000 0    60   ~ 0
P2
Text Label 7650 2700 0    60   ~ 0
P3
Text Label 7150 2600 0    60   ~ 0
P4
$Comp
L CONN_2 P9
U 1 1 576F5D4B
P 6550 1600
F 0 "P9" H 6550 1750 50  0000 C CNN
F 1 "CLK" V 6650 1600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6550 1600 50  0001 C CNN
F 3 "" H 6550 1600 50  0000 C CNN
	1    6550 1600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P8
U 1 1 576F5DA2
P 6550 1000
F 0 "P8" H 6550 1150 50  0000 C CNN
F 1 "GND" V 6650 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6550 1000 50  0001 C CNN
F 3 "" H 6550 1000 50  0000 C CNN
	1    6550 1000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P6
U 1 1 576F5DE5
P 6050 1000
F 0 "P6" H 6050 1150 50  0000 C CNN
F 1 "5V" V 6150 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6050 1000 50  0001 C CNN
F 3 "" H 6050 1000 50  0000 C CNN
	1    6050 1000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P7
U 1 1 576F5E2B
P 6050 1600
F 0 "P7" H 6050 1750 50  0000 C CNN
F 1 "DAT" V 6150 1600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6050 1600 50  0001 C CNN
F 3 "" H 6050 1600 50  0000 C CNN
	1    6050 1600
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 576F6449
P 5950 2350
F 0 "R1" V 6030 2350 50  0000 C CNN
F 1 "100 Ohm" V 5950 2350 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5880 2350 50  0001 C CNN
F 3 "" H 5950 2350 50  0000 C CNN
	1    5950 2350
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 576F6494
P 5700 1700
F 0 "R2" V 5780 1700 50  0000 C CNN
F 1 "10 kOhm" V 5700 1700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5630 1700 50  0001 C CNN
F 3 "" H 5700 1700 50  0000 C CNN
	1    5700 1700
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 576F64EB
P 6300 1700
F 0 "R3" V 6380 1700 50  0000 C CNN
F 1 "10 kOhm" V 6300 1700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 6230 1700 50  0001 C CNN
F 3 "" H 6300 1700 50  0000 C CNN
	1    6300 1700
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 576F7D1F
P 6300 2450
F 0 "R4" V 6380 2450 50  0000 C CNN
F 1 "100 Ohm" V 6300 2450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 6230 2450 50  0001 C CNN
F 3 "" H 6300 2450 50  0000 C CNN
	1    6300 2450
	-1   0    0    1   
$EndComp
NoConn ~ 5200 3600
NoConn ~ 5900 3600
NoConn ~ 5900 3500
$Comp
L PWR_FLAG #FLG01
U 1 1 576FCA32
P 4000 1750
F 0 "#FLG01" H 4000 1845 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 1930 50  0000 C CNN
F 2 "" H 4000 1750 50  0000 C CNN
F 3 "" H 4000 1750 50  0000 C CNN
	1    4000 1750
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 576FCA7A
P 3750 1750
F 0 "#FLG02" H 3750 1845 50  0001 C CNN
F 1 "PWR_FLAG" H 3750 1930 50  0000 C CNN
F 2 "" H 3750 1750 50  0000 C CNN
F 3 "" H 3750 1750 50  0000 C CNN
	1    3750 1750
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 576EDD0E
P 3650 3700
F 0 "D1" H 3650 3800 50  0000 C CNN
F 1 "LED" H 3650 3600 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 3650 3700 50  0001 C CNN
F 3 "" H 3650 3700 50  0000 C CNN
	1    3650 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 576F4DCF
P 3650 4300
F 0 "R5" V 3730 4300 50  0000 C CNN
F 1 "100 Ohm" V 3650 4300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3580 4300 50  0001 C CNN
F 3 "" H 3650 4300 50  0000 C CNN
	1    3650 4300
	1    0    0    -1  
$EndComp
$Comp
L DIL40 P4
U 1 1 576F725D
P 5550 3550
F 0 "P4" H 5550 4600 50  0000 C CNN
F 1 "DIL40" V 5550 3550 50  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm" H 5550 3550 50  0001 C CNN
F 3 "" H 5550 3550 50  0000 C CNN
	1    5550 3550
	1    0    0    -1  
$EndComp
NoConn ~ 3400 2600
NoConn ~ 3400 2700
NoConn ~ 3400 2800
NoConn ~ 3400 2900
NoConn ~ 3400 3000
NoConn ~ 3400 3100
NoConn ~ 3400 3200
NoConn ~ 3400 3300
NoConn ~ 3400 3400
NoConn ~ 3400 3500
Text GLabel 4600 2500 2    60   Input ~ 0
5V
Text GLabel 5050 3700 0    60   Input ~ 0
5V
Text GLabel 6650 3500 0    60   Input ~ 0
5V
Text GLabel 5700 1350 1    60   Input ~ 0
5V
Text GLabel 3650 4700 3    60   Input ~ 0
5V
$Comp
L CONN_10 P12
U 1 1 57747695
P 4050 2950
F 0 "P12" V 4000 2950 60  0000 C CNN
F 1 "CONN_10" V 4100 2950 60  0000 C CNN
F 2 "" H 4050 2950 60  0000 C CNN
F 3 "" H 4050 2950 60  0000 C CNN
	1    4050 2950
	-1   0    0    1   
$EndComp
$Comp
L CONN_10 P3
U 1 1 577476A2
P 3050 3050
F 0 "P3" V 3000 3050 60  0000 C CNN
F 1 "CONN_10" V 3100 3050 60  0000 C CNN
F 2 "" H 3050 3050 60  0000 C CNN
F 3 "" H 3050 3050 60  0000 C CNN
	1    3050 3050
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P14
U 1 1 5799805C
P 4600 1450
F 0 "P14" H 4680 1450 40  0000 L CNN
F 1 "CONN_1" H 4600 1505 30  0001 C CNN
F 2 "~" H 4600 1450 60  0000 C CNN
F 3 "~" H 4600 1450 60  0000 C CNN
	1    4600 1450
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P15
U 1 1 57998069
P 4600 1550
F 0 "P15" H 4680 1550 40  0000 L CNN
F 1 "CONN_1" H 4600 1605 30  0001 C CNN
F 2 "~" H 4600 1550 60  0000 C CNN
F 3 "~" H 4600 1550 60  0000 C CNN
	1    4600 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P16
U 1 1 5799806F
P 4600 1650
F 0 "P16" H 4680 1650 40  0000 L CNN
F 1 "CONN_1" H 4600 1705 30  0001 C CNN
F 2 "~" H 4600 1650 60  0000 C CNN
F 3 "~" H 4600 1650 60  0000 C CNN
	1    4600 1650
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P17
U 1 1 57998075
P 4600 1750
F 0 "P17" H 4680 1750 40  0000 L CNN
F 1 "CONN_1" H 4600 1805 30  0001 C CNN
F 2 "~" H 4600 1750 60  0000 C CNN
F 3 "~" H 4600 1750 60  0000 C CNN
	1    4600 1750
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR03
U 1 1 57998278
P 4450 1850
F 0 "#PWR03" H 4450 1850 30  0001 C CNN
F 1 "VSS" H 4450 1780 30  0000 C CNN
F 2 "~" H 4450 1850 60  0000 C CNN
F 3 "~" H 4450 1850 60  0000 C CNN
	1    4450 1850
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR04
U 1 1 579A2A2B
P 5150 3400
F 0 "#PWR04" H 5150 3400 30  0001 C CNN
F 1 "VSS" H 5150 3330 30  0000 C CNN
F 2 "~" H 5150 3400 60  0000 C CNN
F 3 "~" H 5150 3400 60  0000 C CNN
	1    5150 3400
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR05
U 1 1 579A2ABB
P 4600 3400
F 0 "#PWR05" H 4600 3400 30  0001 C CNN
F 1 "VSS" H 4600 3330 30  0000 C CNN
F 2 "~" H 4600 3400 60  0000 C CNN
F 3 "~" H 4600 3400 60  0000 C CNN
	1    4600 3400
	0    -1   -1   0   
$EndComp
$Comp
L VSS #PWR06
U 1 1 579A2ACA
P 6650 3600
F 0 "#PWR06" H 6650 3600 30  0001 C CNN
F 1 "VSS" H 6650 3530 30  0000 C CNN
F 2 "~" H 6650 3600 60  0000 C CNN
F 3 "~" H 6650 3600 60  0000 C CNN
	1    6650 3600
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR07
U 1 1 579A2AD9
P 6650 3200
F 0 "#PWR07" H 6650 3200 30  0001 C CNN
F 1 "VSS" H 6650 3130 30  0000 C CNN
F 2 "~" H 6650 3200 60  0000 C CNN
F 3 "~" H 6650 3200 60  0000 C CNN
	1    6650 3200
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR08
U 1 1 579A2AE8
P 6650 2900
F 0 "#PWR08" H 6650 2900 30  0001 C CNN
F 1 "VSS" H 6650 2830 30  0000 C CNN
F 2 "~" H 6650 2900 60  0000 C CNN
F 3 "~" H 6650 2900 60  0000 C CNN
	1    6650 2900
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR09
U 1 1 579A2AF7
P 3650 3400
F 0 "#PWR09" H 3650 3400 30  0001 C CNN
F 1 "VSS" H 3650 3330 30  0000 C CNN
F 2 "~" H 3650 3400 60  0000 C CNN
F 3 "~" H 3650 3400 60  0000 C CNN
	1    3650 3400
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR010
U 1 1 579A2B06
P 7200 3700
F 0 "#PWR010" H 7200 3700 30  0001 C CNN
F 1 "VSS" H 7200 3630 30  0000 C CNN
F 2 "~" H 7200 3700 60  0000 C CNN
F 3 "~" H 7200 3700 60  0000 C CNN
	1    7200 3700
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR011
U 1 1 579A2B15
P 7850 2000
F 0 "#PWR011" H 7850 2000 30  0001 C CNN
F 1 "VSS" H 7850 1930 30  0000 C CNN
F 2 "~" H 7850 2000 60  0000 C CNN
F 3 "~" H 7850 2000 60  0000 C CNN
	1    7850 2000
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR012
U 1 1 579A2B24
P 7850 2300
F 0 "#PWR012" H 7850 2300 30  0001 C CNN
F 1 "VSS" H 7850 2230 30  0000 C CNN
F 2 "~" H 7850 2300 60  0000 C CNN
F 3 "~" H 7850 2300 60  0000 C CNN
	1    7850 2300
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR013
U 1 1 579A2B33
P 6850 1350
F 0 "#PWR013" H 6850 1350 30  0001 C CNN
F 1 "VSS" H 6850 1280 30  0000 C CNN
F 2 "~" H 6850 1350 60  0000 C CNN
F 3 "~" H 6850 1350 60  0000 C CNN
	1    6850 1350
	0    -1   -1   0   
$EndComp
$Comp
L VSS #PWR014
U 1 1 579A2B42
P 3750 1550
F 0 "#PWR014" H 3750 1550 30  0001 C CNN
F 1 "VSS" H 3750 1480 30  0000 C CNN
F 2 "~" H 3750 1550 60  0000 C CNN
F 3 "~" H 3750 1550 60  0000 C CNN
	1    3750 1550
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR015
U 1 1 579A2B51
P 6650 4900
F 0 "#PWR015" H 6650 4900 30  0001 C CNN
F 1 "VSS" H 6650 4830 30  0000 C CNN
F 2 "~" H 6650 4900 60  0000 C CNN
F 3 "~" H 6650 4900 60  0000 C CNN
	1    6650 4900
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR016
U 1 1 579A2B60
P 4650 5150
F 0 "#PWR016" H 4650 5150 30  0001 C CNN
F 1 "VSS" H 4650 5080 30  0000 C CNN
F 2 "~" H 4650 5150 60  0000 C CNN
F 3 "~" H 4650 5150 60  0000 C CNN
	1    4650 5150
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR017
U 1 1 579A2B6F
P 4000 1550
F 0 "#PWR017" H 4000 1650 30  0001 C CNN
F 1 "VDD" H 4000 1660 30  0000 C CNN
F 2 "~" H 4000 1550 60  0000 C CNN
F 3 "~" H 4000 1550 60  0000 C CNN
	1    4000 1550
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR018
U 1 1 579A2B7E
P 7850 1900
F 0 "#PWR018" H 7850 2000 30  0001 C CNN
F 1 "VDD" H 7850 2010 30  0000 C CNN
F 2 "~" H 7850 1900 60  0000 C CNN
F 3 "~" H 7850 1900 60  0000 C CNN
	1    7850 1900
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR019
U 1 1 579A2B8D
P 7850 2200
F 0 "#PWR019" H 7850 2300 30  0001 C CNN
F 1 "VDD" H 7850 2310 30  0000 C CNN
F 2 "~" H 7850 2200 60  0000 C CNN
F 3 "~" H 7850 2200 60  0000 C CNN
	1    7850 2200
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR020
U 1 1 579A2B9C
P 6650 2800
F 0 "#PWR020" H 6650 2900 30  0001 C CNN
F 1 "VDD" H 6650 2910 30  0000 C CNN
F 2 "~" H 6650 2800 60  0000 C CNN
F 3 "~" H 6650 2800 60  0000 C CNN
	1    6650 2800
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR021
U 1 1 579A2BAB
P 6650 3100
F 0 "#PWR021" H 6650 3200 30  0001 C CNN
F 1 "VDD" H 6650 3210 30  0000 C CNN
F 2 "~" H 6650 3100 60  0000 C CNN
F 3 "~" H 6650 3100 60  0000 C CNN
	1    6650 3100
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR022
U 1 1 579A2BC9
P 6050 3400
F 0 "#PWR022" H 6050 3500 30  0001 C CNN
F 1 "VDD" H 6050 3510 30  0000 C CNN
F 2 "~" H 6050 3400 60  0000 C CNN
F 3 "~" H 6050 3400 60  0000 C CNN
	1    6050 3400
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR023
U 1 1 579A2C05
P 4400 4400
F 0 "#PWR023" H 4400 4400 30  0001 C CNN
F 1 "VSS" H 4400 4330 30  0000 C CNN
F 2 "~" H 4400 4400 60  0000 C CNN
F 3 "~" H 4400 4400 60  0000 C CNN
	1    4400 4400
	0    -1   -1   0   
$EndComp
Text Label 6050 1000 0    60   ~ 0
PS2_Adapter
$Comp
L VSS #PWR024
U 1 1 579A396F
P 5950 3700
F 0 "#PWR024" H 5950 3700 30  0001 C CNN
F 1 "VSS" H 5950 3630 30  0000 C CNN
F 2 "~" H 5950 3700 60  0000 C CNN
F 3 "~" H 5950 3700 60  0000 C CNN
	1    5950 3700
	0    -1   -1   0   
$EndComp
$Comp
L CONN_9 P11
U 1 1 576F2F28
P 7100 3200
F 0 "P11" H 7100 3600 50  0000 C CNN
F 1 "LCD_Interface" V 7200 3200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x09" H 7100 3200 50  0001 C CNN
F 3 "" H 7100 3200 50  0000 C CNN
	1    7100 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P13
U 1 1 576F464D
P 8400 2150
F 0 "P13" H 8400 2500 50  0000 C CNN
F 1 "Start Buttons" V 8500 2150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 8400 2150 50  0001 C CNN
F 3 "" H 8400 2150 50  0000 C CNN
	1    8400 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_7 P10
U 1 1 57709756
P 7650 4000
F 0 "P10" H 7650 4400 50  0000 C CNN
F 1 "CONN_01X07" V 7750 4000 50  0000 C CNN
F 2 "" H 7650 4000 50  0000 C CNN
F 3 "" H 7650 4000 50  0000 C CNN
	1    7650 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_7 P5
U 1 1 57709658
P 6350 5400
F 0 "P5" H 6350 5800 50  0000 C CNN
F 1 "CONN_01X07" V 6450 5400 50  0000 C CNN
F 2 "" H 6350 5400 50  0000 C CNN
F 3 "" H 6350 5400 50  0000 C CNN
	1    6350 5400
	0    1    1    0   
$EndComp
$Comp
L CONN_7 P1
U 1 1 577094B3
P 3950 4100
F 0 "P1" H 3950 4500 50  0000 C CNN
F 1 "CONN_01X07" V 4050 4100 50  0000 C CNN
F 2 "" H 3950 4100 50  0000 C CNN
F 3 "" H 3950 4100 50  0000 C CNN
	1    3950 4100
	-1   0    0    1   
$EndComp
$Comp
L CONN_7 P2
U 1 1 5770957C
P 4200 4850
F 0 "P2" H 4200 5250 50  0000 C CNN
F 1 "CONN_01X07" V 4300 4850 50  0000 C CNN
F 2 "" H 4200 4850 50  0000 C CNN
F 3 "" H 4200 4850 50  0000 C CNN
	1    4200 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 3000 5200 3000
Wire Wire Line
	4400 3100 5200 3100
Wire Wire Line
	4400 3200 5200 3200
Wire Wire Line
	4400 3300 5200 3300
Wire Wire Line
	4300 3800 4400 3800
Wire Wire Line
	5100 3800 5200 3800
Wire Wire Line
	4300 3900 5200 3900
Wire Wire Line
	4300 4000 5200 4000
Wire Wire Line
	4300 4100 5200 4100
Wire Wire Line
	4300 4200 5200 4200
Wire Wire Line
	4300 4300 4400 4300
Wire Wire Line
	4550 4550 4550 4550
Wire Wire Line
	4550 4950 5200 4950
Wire Wire Line
	4550 5050 4650 5050
Wire Wire Line
	6050 5050 6050 5000
Wire Wire Line
	6450 4100 6450 5050
Wire Wire Line
	6550 5050 6550 4900
Wire Wire Line
	7200 3800 7300 3800
Wire Wire Line
	7000 3900 7300 3900
Wire Wire Line
	6650 3500 6750 3500
Wire Wire Line
	6650 3600 6750 3600
Wire Wire Line
	6650 2900 6750 2900
Wire Wire Line
	6650 3200 6750 3200
Wire Wire Line
	6650 2800 6750 2800
Wire Wire Line
	6650 3100 6750 3100
Wire Wire Line
	8050 2400 8050 2700
Wire Wire Line
	8050 2700 6450 2700
Wire Wire Line
	6450 2700 6450 2900
Wire Wire Line
	6450 2900 5900 2900
Wire Wire Line
	8050 2100 7450 2100
Wire Wire Line
	7450 2100 7450 2600
Wire Wire Line
	7450 2600 6400 2600
Wire Wire Line
	6400 2600 6400 2800
Wire Wire Line
	6400 2800 5900 2800
Wire Wire Line
	7850 1900 8050 1900
Wire Wire Line
	7850 2000 8050 2000
Wire Wire Line
	7850 2200 8050 2200
Wire Wire Line
	7850 2300 8050 2300
Wire Wire Line
	4000 1750 4000 1550
Wire Wire Line
	5050 3700 5200 3700
Wire Wire Line
	3650 3400 3650 3500
Wire Wire Line
	3750 1750 3750 1550
Wire Wire Line
	5150 3400 5200 3400
Wire Wire Line
	4400 3400 4600 3400
Wire Wire Line
	6750 3000 5900 3000
Wire Wire Line
	6750 3300 6400 3300
Wire Wire Line
	6400 3300 6400 3100
Wire Wire Line
	6400 3100 5900 3100
Wire Wire Line
	6750 3400 6350 3400
Wire Wire Line
	6350 3400 6350 3200
Wire Wire Line
	6350 3200 5900 3200
Wire Wire Line
	6300 3300 5900 3300
Wire Wire Line
	7300 4000 6900 4000
Wire Wire Line
	6900 4000 6900 3800
Wire Wire Line
	6900 3800 5900 3800
Wire Wire Line
	7300 4100 6800 4100
Wire Wire Line
	6800 4100 6800 3900
Wire Wire Line
	6800 3900 5900 3900
Wire Wire Line
	7300 4200 6700 4200
Wire Wire Line
	6700 4200 6700 4000
Wire Wire Line
	6700 4000 5900 4000
Wire Wire Line
	7300 4300 7000 4300
Wire Wire Line
	6250 5050 6250 4300
Wire Wire Line
	6250 4300 5900 4300
Wire Wire Line
	6150 5050 6150 4400
Wire Wire Line
	6150 4400 5900 4400
Wire Wire Line
	5900 4500 6100 4500
Wire Wire Line
	4550 4850 5100 4850
Wire Wire Line
	5100 4850 5100 4500
Wire Wire Line
	5100 4500 5200 4500
Wire Wire Line
	4550 4750 5000 4750
Wire Wire Line
	5000 4750 5000 4400
Wire Wire Line
	5000 4400 5200 4400
Wire Wire Line
	4550 4650 4900 4650
Wire Wire Line
	4900 4650 4900 4300
Wire Wire Line
	4900 4300 5200 4300
Wire Wire Line
	4300 4400 4400 4400
Wire Wire Line
	4550 5150 4650 5150
Wire Wire Line
	6350 5050 6350 4200
Wire Wire Line
	6350 4200 5900 4200
Wire Wire Line
	6650 5050 6650 4900
Wire Wire Line
	6450 4100 5900 4100
Wire Wire Line
	7200 3700 7300 3700
Wire Wire Line
	7000 3750 6300 3750
Wire Wire Line
	6300 3750 6300 3300
Wire Wire Line
	5200 4950 5200 4600
Wire Wire Line
	5200 4600 6100 4600
Wire Wire Line
	6100 4600 6100 4500
Wire Wire Line
	5900 3400 6050 3400
Wire Wire Line
	3650 4050 3650 3900
Wire Wire Line
	3650 4700 3650 4550
Wire Wire Line
	4450 1450 4450 1850
Connection ~ 4450 1650
Connection ~ 4450 1550
Connection ~ 4450 1750
Wire Wire Line
	5200 3400 5200 3500
Wire Wire Line
	6300 1950 6300 2200
Wire Wire Line
	5900 2600 5950 2600
Wire Wire Line
	5900 2700 6300 2700
Wire Wire Line
	5900 3700 5950 3700
Wire Wire Line
	4400 2500 4600 2500
Wire Wire Line
	6450 1350 6850 1350
Connection ~ 6650 1350
Wire Wire Line
	5700 1350 6300 1350
Connection ~ 5950 1350
Wire Wire Line
	6300 1950 6650 1950
Connection ~ 6450 1950
Wire Wire Line
	5950 1950 5950 2100
Wire Wire Line
	5700 1950 6150 1950
Wire Wire Line
	6300 1350 6300 1450
Connection ~ 6150 1350
Wire Wire Line
	5700 1450 5700 1350
Connection ~ 5950 1950
Wire Wire Line
	7000 3900 7000 3750
$Comp
L VDD #PWR025
U 1 1 583D7A37
P 4650 5050
F 0 "#PWR025" H 4650 5150 30  0001 C CNN
F 1 "VDD" H 4650 5160 30  0000 C CNN
F 2 "~" H 4650 5050 60  0000 C CNN
F 3 "~" H 4650 5050 60  0000 C CNN
	1    4650 5050
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR026
U 1 1 583D7A3D
P 6550 4900
F 0 "#PWR026" H 6550 5000 30  0001 C CNN
F 1 "VDD" H 6550 5010 30  0000 C CNN
F 2 "~" H 6550 4900 60  0000 C CNN
F 3 "~" H 6550 4900 60  0000 C CNN
	1    6550 4900
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR027
U 1 1 583D7A43
P 7200 3800
F 0 "#PWR027" H 7200 3900 30  0001 C CNN
F 1 "VDD" H 7200 3910 30  0000 C CNN
F 2 "~" H 7200 3800 60  0000 C CNN
F 3 "~" H 7200 3800 60  0000 C CNN
	1    7200 3800
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR028
U 1 1 583D7A49
P 4400 4300
F 0 "#PWR028" H 4400 4400 30  0001 C CNN
F 1 "VDD" H 4400 4410 30  0000 C CNN
F 2 "~" H 4400 4300 60  0000 C CNN
F 3 "~" H 4400 4300 60  0000 C CNN
	1    4400 4300
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P18
U 1 1 585B20A8
P 4750 2750
F 0 "P18" V 4700 2750 50  0000 C CNN
F 1 "CONN_4" V 4800 2750 50  0000 C CNN
F 2 "~" H 4750 2750 60  0000 C CNN
F 3 "~" H 4750 2750 60  0000 C CNN
	1    4750 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 2600 5200 2600
Wire Wire Line
	5200 2700 5100 2700
Wire Wire Line
	5100 2800 5200 2800
Wire Wire Line
	5200 2900 5100 2900
NoConn ~ 4400 2600
NoConn ~ 4400 2700
NoConn ~ 4400 2800
NoConn ~ 4400 2900
$EndSCHEMATC
