EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
Wire Wire Line
	5950 2050 5950 2150
Wire Wire Line
	6650 1950 6650 2050
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 driver2
U 1 1 5FB6CB57
P 7050 2050
F 0 "driver2" H 7050 2739 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 7050 2830 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 7250 1250 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 7150 1750 50  0001 C CNN
	1    7050 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 1950 6650 1950
$Comp
L Device:CP C2
U 1 1 5FB7992E
P 7050 3250
F 0 "C2" H 7168 3296 50  0000 L CNN
F 1 "CP" H 7168 3205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 7088 3100 50  0001 C CNN
F 3 "~" H 7050 3250 50  0001 C CNN
	1    7050 3250
	1    0    0    -1  
$EndComp
Wire Notes Line
	8500 500  8500 3450
$Comp
L power:GND #PWR0101
U 1 1 5FBD9FA6
P 6950 1250
F 0 "#PWR0101" H 6950 1000 50  0001 C CNN
F 1 "GND" H 6950 1100 50  0000 C CNN
F 2 "" H 6950 1250 50  0000 C CNN
F 3 "" H 6950 1250 50  0000 C CNN
	1    6950 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FBDC793
P 7050 1250
F 0 "#PWR0102" H 7050 1000 50  0001 C CNN
F 1 "GND" H 7050 1100 50  0000 C CNN
F 2 "" H 7050 1250 50  0000 C CNN
F 3 "" H 7050 1250 50  0000 C CNN
	1    7050 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 1850 6650 1850
Wire Wire Line
	5950 1750 6650 1750
Wire Wire Line
	5950 2150 6650 2150
Wire Wire Line
	7050 2650 7050 3100
Text Label 7450 3100 1    60   ~ 0
Vin
Wire Wire Line
	7050 3100 7450 3100
Connection ~ 7050 3100
$Comp
L power:GND #PWR010
U 1 1 5FBE9018
P 7050 3400
F 0 "#PWR010" H 7050 3150 50  0001 C CNN
F 1 "GND" H 7050 3250 50  0000 C CNN
F 2 "" H 7050 3400 50  0000 C CNN
F 3 "" H 7050 3400 50  0000 C CNN
	1    7050 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5FBE9E5E
P 7450 2250
F 0 "#PWR011" H 7450 2100 50  0001 C CNN
F 1 "+5V" V 7450 2450 50  0000 C CNN
F 2 "" H 7450 2250 50  0000 C CNN
F 3 "" H 7450 2250 50  0000 C CNN
	1    7450 2250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5FBEB321
P 7450 2350
F 0 "#PWR012" H 7450 2200 50  0001 C CNN
F 1 "+5V" V 7450 2550 50  0000 C CNN
F 2 "" H 7450 2350 50  0000 C CNN
F 3 "" H 7450 2350 50  0000 C CNN
	1    7450 2350
	0    1    1    0   
$EndComp
Text Label 7450 1850 0    60   ~ 0
1(Tx)
Text Label 7450 1950 0    60   ~ 0
0(Rx)
Wire Wire Line
	3050 2050 3050 2150
Wire Wire Line
	3750 1950 3750 2050
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 driver1
U 1 1 5FBF13F2
P 4150 2050
F 0 "driver1" H 4150 2739 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 4150 2830 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 4350 1250 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 4250 1750 50  0001 C CNN
	1    4150 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 1950 3750 1950
$Comp
L Device:CP C1
U 1 1 5FBF13FF
P 4150 3250
F 0 "C1" H 4268 3296 50  0000 L CNN
F 1 "CP" H 4268 3205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 4188 3100 50  0001 C CNN
F 3 "~" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FBF1405
P 4050 1250
F 0 "#PWR05" H 4050 1000 50  0001 C CNN
F 1 "GND" H 4050 1100 50  0000 C CNN
F 2 "" H 4050 1250 50  0000 C CNN
F 3 "" H 4050 1250 50  0000 C CNN
	1    4050 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FBF140B
P 4150 1250
F 0 "#PWR06" H 4150 1000 50  0001 C CNN
F 1 "GND" H 4150 1100 50  0000 C CNN
F 2 "" H 4150 1250 50  0000 C CNN
F 3 "" H 4150 1250 50  0000 C CNN
	1    4150 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 1850 3750 1850
Wire Wire Line
	3050 1750 3750 1750
Wire Wire Line
	3050 2150 3750 2150
Wire Wire Line
	4150 2650 4150 3100
Text Label 4550 3100 1    60   ~ 0
Vin
Wire Wire Line
	4150 3100 4550 3100
Connection ~ 4150 3100
$Comp
L power:GND #PWR07
U 1 1 5FBF1418
P 4150 3400
F 0 "#PWR07" H 4150 3150 50  0001 C CNN
F 1 "GND" H 4150 3250 50  0000 C CNN
F 2 "" H 4150 3400 50  0000 C CNN
F 3 "" H 4150 3400 50  0000 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5FBF141E
P 4550 2250
F 0 "#PWR08" H 4550 2100 50  0001 C CNN
F 1 "+5V" V 4550 2450 50  0000 C CNN
F 2 "" H 4550 2250 50  0000 C CNN
F 3 "" H 4550 2250 50  0000 C CNN
	1    4550 2250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5FBF1424
P 4550 2350
F 0 "#PWR09" H 4550 2200 50  0001 C CNN
F 1 "+5V" V 4550 2550 50  0000 C CNN
F 2 "" H 4550 2350 50  0000 C CNN
F 3 "" H 4550 2350 50  0000 C CNN
	1    4550 2350
	0    1    1    0   
$EndComp
Text Label 4550 1950 0    60   ~ 0
2
Text Label 4550 1850 0    60   ~ 0
3(**)
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5FC00373
P 2850 1850
F 0 "J3" H 2768 1525 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2768 1616 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2850 1850 50  0001 C CNN
F 3 "~" H 2850 1850 50  0001 C CNN
	1    2850 1850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5FC3734A
P 2850 2050
F 0 "J1" H 2768 1725 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2768 1816 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2850 2050 50  0001 C CNN
F 3 "~" H 2850 2050 50  0001 C CNN
	1    2850 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5FC3A9FC
P 5750 1850
F 0 "J2" H 5668 1525 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 5668 1616 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 5750 1850 50  0001 C CNN
F 3 "~" H 5750 1850 50  0001 C CNN
	1    5750 1850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5FC3AA02
P 5750 2050
F 0 "J4" H 5668 1725 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 5668 1816 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 5750 2050 50  0001 C CNN
F 3 "~" H 5750 2050 50  0001 C CNN
	1    5750 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 4650 3000 4750
Wire Wire Line
	3000 4550 3700 4550
Wire Wire Line
	3000 4450 3700 4450
Wire Wire Line
	3000 4350 3700 4350
Wire Wire Line
	3000 4750 3700 4750
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5FBBB804
P 2800 4450
F 0 "J5" H 2718 4125 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2718 4216 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2800 4450 50  0001 C CNN
F 3 "~" H 2800 4450 50  0001 C CNN
	1    2800 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5FBBB80A
P 2800 4650
F 0 "J6" H 2718 4325 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2718 4416 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2800 4650 50  0001 C CNN
F 3 "~" H 2800 4650 50  0001 C CNN
	1    2800 4650
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:TIP120 Q1
U 1 1 5FBC084B
P 5200 4500
F 0 "Q1" H 5407 4546 50  0000 L CNN
F 1 "TIP120" H 5407 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5400 4425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/TIP120-D.PDF" H 5200 4500 50  0001 L CNN
	1    5200 4500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
