EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 13
Title "4-BIT SHIFTER"
Date "2021-12-20"
Rev "0"
Comp "IEEE Student Branch 1019"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS153 U?
U 1 1 61D904D6
P 4100 2700
AR Path="/618C41DF/61C13D4C/61D904D6" Ref="U?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D904D6" Ref="U?"  Part="1" 
F 0 "U?" H 4250 3700 50  0000 C CNN
F 1 "74HC153" H 4350 3600 50  0000 C CNN
F 2 "" H 4100 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS153" H 4100 2700 50  0001 C CNN
	1    4100 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61D904DC
P 4100 1300
AR Path="/618C41DF/618C425E/61D904DC" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D904DC" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D904DC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 1150 50  0001 C CNN
F 1 "VCC" H 4115 1473 50  0000 C CNN
F 2 "" H 4100 1300 50  0001 C CNN
F 3 "" H 4100 1300 50  0001 C CNN
	1    4100 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61D904E2
P 4450 1500
AR Path="/618C41DF/618C425E/61D904E2" Ref="C?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D904E2" Ref="C?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D904E2" Ref="C?"  Part="1" 
F 0 "C?" V 4198 1500 50  0000 C CNN
F 1 "100n" V 4289 1500 50  0000 C CNN
F 2 "" H 4488 1350 50  0001 C CNN
F 3 "~" H 4450 1500 50  0001 C CNN
	1    4450 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 1300 4100 1500
Wire Wire Line
	4300 1500 4100 1500
$Comp
L power:GND #PWR?
U 1 1 61D904EA
P 4600 1500
AR Path="/618C41DF/618C425E/61D904EA" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D904EA" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D904EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 1250 50  0001 C CNN
F 1 "GND" V 4605 1372 50  0000 R CNN
F 2 "" H 4600 1500 50  0001 C CNN
F 3 "" H 4600 1500 50  0001 C CNN
	1    4600 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 1700 4100 1500
Connection ~ 4100 1500
$Comp
L power:GND #PWR?
U 1 1 61D904F2
P 4100 3800
AR Path="/618C41DF/618C425E/61D904F2" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D904F2" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D904F2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 3550 50  0001 C CNN
F 1 "GND" V 4200 3850 50  0000 R CNN
F 2 "" H 4100 3800 50  0001 C CNN
F 3 "" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS153 U?
U 1 1 61D91A8C
P 4100 5750
AR Path="/618C41DF/61C13D4C/61D91A8C" Ref="U?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D91A8C" Ref="U?"  Part="1" 
F 0 "U?" H 4250 6750 50  0000 C CNN
F 1 "74HC153" H 4350 6650 50  0000 C CNN
F 2 "" H 4100 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS153" H 4100 5750 50  0001 C CNN
	1    4100 5750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61D91A92
P 4100 4350
AR Path="/618C41DF/618C425E/61D91A92" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D91A92" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D91A92" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 4200 50  0001 C CNN
F 1 "VCC" H 4115 4523 50  0000 C CNN
F 2 "" H 4100 4350 50  0001 C CNN
F 3 "" H 4100 4350 50  0001 C CNN
	1    4100 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61D91A98
P 4450 4550
AR Path="/618C41DF/618C425E/61D91A98" Ref="C?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D91A98" Ref="C?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D91A98" Ref="C?"  Part="1" 
F 0 "C?" V 4198 4550 50  0000 C CNN
F 1 "100n" V 4289 4550 50  0000 C CNN
F 2 "" H 4488 4400 50  0001 C CNN
F 3 "~" H 4450 4550 50  0001 C CNN
	1    4450 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4350 4100 4550
Wire Wire Line
	4300 4550 4100 4550
$Comp
L power:GND #PWR?
U 1 1 61D91AA0
P 4600 4550
AR Path="/618C41DF/618C425E/61D91AA0" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D91AA0" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D91AA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 4300 50  0001 C CNN
F 1 "GND" V 4605 4422 50  0000 R CNN
F 2 "" H 4600 4550 50  0001 C CNN
F 3 "" H 4600 4550 50  0001 C CNN
	1    4600 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 4750 4100 4550
Connection ~ 4100 4550
$Comp
L power:GND #PWR?
U 1 1 61D91AA8
P 4100 6850
AR Path="/618C41DF/618C425E/61D91AA8" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D91AA8" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D91AA8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 6600 50  0001 C CNN
F 1 "GND" V 4200 6900 50  0000 R CNN
F 2 "" H 4100 6850 50  0001 C CNN
F 3 "" H 4100 6850 50  0001 C CNN
	1    4100 6850
	1    0    0    -1  
$EndComp
Text HLabel 1200 1450 0    50   Input ~ 0
A[3..0]
Text HLabel 2100 3300 0    50   Input ~ 0
B[3..0]
Wire Bus Line
	1200 1450 2800 1450
Entry Wire Line
	2800 1900 2900 2000
Entry Wire Line
	2800 2000 2900 2100
Entry Wire Line
	2800 2700 2900 2800
Entry Wire Line
	2800 2600 2900 2700
Entry Wire Line
	2800 2900 2900 3000
Entry Wire Line
	2800 5050 2900 5150
Entry Wire Line
	2800 5150 2900 5250
Entry Wire Line
	2800 5250 2900 5350
Entry Wire Line
	2800 5850 2900 5950
Entry Wire Line
	2800 5950 2900 6050
Text HLabel 6050 3950 2    50   Output ~ 0
S[3..0]
Wire Wire Line
	2900 2000 3600 2000
Wire Wire Line
	3600 2100 2900 2100
Wire Wire Line
	2900 2700 3600 2700
Wire Wire Line
	3600 2800 2900 2800
Wire Wire Line
	2900 3000 3600 3000
$Comp
L power:GND #PWR?
U 1 1 61D9A14E
P 3450 6850
AR Path="/618C41DF/618C425E/61D9A14E" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D9A14E" Ref="#PWR?"  Part="1" 
AR Path="/618C41DF/61C13D4C/61D88857/61D9A14E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3450 6600 50  0001 C CNN
F 1 "GND" V 3550 6900 50  0000 R CNN
F 2 "" H 3450 6850 50  0001 C CNN
F 3 "" H 3450 6850 50  0001 C CNN
	1    3450 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6850 3450 6250
Wire Wire Line
	3450 2200 3600 2200
Wire Wire Line
	3600 2300 3450 2300
Connection ~ 3450 2300
Wire Wire Line
	3450 2300 3450 2200
Wire Wire Line
	3600 2500 3450 2500
Connection ~ 3450 2500
Wire Wire Line
	3450 2500 3450 2300
Wire Wire Line
	3600 2900 3450 2900
Connection ~ 3450 2900
Wire Wire Line
	3450 2900 3450 2500
Wire Wire Line
	3600 3200 3450 3200
Connection ~ 3450 3200
Wire Wire Line
	3450 3200 3450 2900
Wire Wire Line
	3600 5050 3450 5050
Connection ~ 3450 5050
Wire Wire Line
	3450 5050 3450 3200
Wire Wire Line
	2900 5150 3600 5150
Wire Wire Line
	3600 5250 2900 5250
Wire Wire Line
	3600 5350 2900 5350
Wire Wire Line
	3600 5550 3450 5550
Connection ~ 3450 5550
Wire Wire Line
	3450 5550 3450 5050
Wire Wire Line
	3600 5750 3450 5750
Connection ~ 3450 5750
Wire Wire Line
	3450 5750 3450 5550
Wire Wire Line
	3600 5850 3450 5850
Connection ~ 3450 5850
Wire Wire Line
	3450 5850 3450 5750
Wire Wire Line
	3600 5950 2900 5950
Wire Wire Line
	2900 6050 3600 6050
Wire Wire Line
	3600 6250 3450 6250
Connection ~ 3450 6250
Wire Wire Line
	3450 6250 3450 5850
Entry Wire Line
	5000 2000 5100 2100
Entry Wire Line
	5000 2700 5100 2800
Entry Wire Line
	5000 5050 5100 4950
Entry Wire Line
	5000 5750 5100 5650
Wire Wire Line
	4600 5750 5000 5750
Wire Wire Line
	5000 5050 4600 5050
Wire Wire Line
	4600 2000 5000 2000
Wire Wire Line
	5000 2700 4600 2700
Text Label 1650 1450 0    50   ~ 0
A[3..0]
Text Label 5400 3950 0    50   ~ 0
S[3..0]
Wire Bus Line
	5100 3950 6050 3950
Connection ~ 5100 3950
Text Label 3100 2000 0    50   ~ 0
A2
Text Label 3100 2100 0    50   ~ 0
A1
Text Label 3100 2700 0    50   ~ 0
A3
Text Label 3100 2800 0    50   ~ 0
A2
Text Label 3100 3000 0    50   ~ 0
A0
Text Label 3100 5150 0    50   ~ 0
A3
Text Label 3100 5250 0    50   ~ 0
A0
Text Label 3100 5350 0    50   ~ 0
A1
Text Label 3100 5950 0    50   ~ 0
A1
Text Label 3100 6050 0    50   ~ 0
A2
Wire Bus Line
	2100 3300 2400 3300
Entry Wire Line
	2400 3300 2500 3400
Entry Wire Line
	2400 3400 2500 3500
Entry Wire Line
	2400 6450 2500 6550
Entry Wire Line
	2400 6350 2500 6450
Wire Wire Line
	2500 6450 3600 6450
Wire Wire Line
	3600 6550 2500 6550
Wire Wire Line
	2500 3400 3600 3400
Wire Wire Line
	3600 3500 2500 3500
Text Label 2900 3400 0    50   ~ 0
B0
Text Label 2900 3500 0    50   ~ 0
B3
Text Label 2900 6450 0    50   ~ 0
B0
Text Label 2900 6550 0    50   ~ 0
B3
Wire Bus Line
	5100 2000 5100 3950
Wire Bus Line
	5100 3950 5100 5750
Wire Bus Line
	2400 3300 2400 6550
Wire Bus Line
	2800 1450 2800 6650
Text Label 2400 4150 1    50   ~ 0
B[3..0]
Text Notes 6600 5600 0    50   ~ 0
Questo circuito effettua lo shift logico del valore di A di una o due posizioni\nin funzione del valore di B.\nLe limitazioni del circuito sono:\n  - Non è possibile effettuare uno shift aritmetico\n  - Non è possibile effettuare shift di zero posizioni\nPer motivi di complessità utiliziamo il seguente circuito invece che uno shifter completo.\n\nLa tabella di verità del circuito è la seguente.\nConsiderando l'input A come [A3 A2 A1 A0]\n\n+---------+---------+\n|       B       | S = A <> B |\n| B3 B2 B1 B0 | S3 S2 S1 S0 | \n+---------+---------+\n|  0  0  0  1  |  0  A3 A2 A1 |  S = A >> 1\n|  0  0  1  0  |  0  0  A3 A2 |  S = A >> 2\n|  1  0  0  1  |  A2 A1 A0  0 |  S = A << 1\n|  1  0  1  0  |  A1 A0  0  0 |  S = A << 2\n+---------+---------+\n\nCome è possibile notare gli effettivi bit di B utilizzati per lo shift sono B3 per la direzione e B0 per l'ammontare.\nQuesto comporta che eventuali combinazioni non legali \ndiano i seguenti risultati.\n\n+---------+---------+\n|       B       | S = A <> B |\n| B3 B2 B1 B0 | S3 S2 S1 S0 | \n+---------+---------+\n|  0  0  0  0  |  0  0  A3 A2 |  S = A >> 2\n|  0  0  1  1  |  0  A3 A2 A1 |  S = A >> 1\n|  0  1  0  0  |  0  0  A3 A2 |  S = A >> 2\n|  0  1  0  1  |  0  A3 A2 A1 |  S = A >> 1\n|  0  1  1  0  |  0  0  A3 A2 |  S = A >> 2\n|  0  1  1  1  |  0  A3 A2 A1 |  S = A >> 1\n|  1  0  0  0  |  A1 A0  0  0 |  S = A << 2\n|  1  0  1  1  |  A2 A1 A0  0 |  S = A << 1\n|  1  1  0  0  |  A1 A0  0  0 |  S = A << 2\n|  1  1  0  1  |  A2 A1 A0  0 |  S = A << 1\n|  1  1  1  0  |  A1 A0  0  0 |  S = A << 2\n|  1  1  1  1  |  A2 A1 A0  0 |  S = A << 1\n+---------+---------+
$EndSCHEMATC
