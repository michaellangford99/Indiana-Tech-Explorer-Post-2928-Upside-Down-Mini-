''This code example is from Propeller Education Kit Labs: Fundamentals, v1.2.
''A .pdf copy of the book is available from www.parallax.com, and also through
''the Propeller Tool software's Help menu (v1.2.6 or newer).
''
'' IrObjectDetection.spin
'' Detect objects with IR LED and receiver and display with Parallax Serial Terminal.

CON
   
  _clkmode = xtal1 + pll16x                  ' System clock → 80 MHz
  _xinfreq = 5_000_000

OBJ

  SqrWave    : "SquareWave"
  Pulsout    : "Servo32v7 "
  IrRadar    : "IrDetector"
  Debug      : "Parallax Serial Terminal"
    
VAR
    Long stack, distance, ir_results, servo0, servo1, frontsensor, counter

PUB Start

Pulsout.Start
'IrRadar.init(15, 2, 3)
Debug.Start(9600)
counter := 0    
front_sensor

Pub front_sensor

IrRadar.init(14, 5, 4)
frontsensor := IrRadar.distance
Debug.clear
Debug.dec(ir_results)

go

Pub go
repeat
  IrRadar.init(15, 2, 3)
  ir_results := IrRadar.distance
  Debug.clear
  Debug.dec(ir_results)

  IrRadar.init(14, 5, 4)
  frontsensor := IrRadar.distance
  Debug.clear
  Debug.dec(ir_results)

  'if ir_results <110
  '       servo0 := 0
  '       servo1 := 1000
  'if ir_results <120  
  '     servo0 := 0
  '      servo1 := 1000  
  if ir_results <185
         servo0 := 1000
         servo1 := 0
         counter := 0
  elseif ir_results <190
        servo0 := 1000
        servo1 := 1600
        counter := 0
  elseif ir_results <193
         servo0 := 1100
         servo1 := 2000
  elseif ir_results <195
         servo0 := 0
         servo1 := 2000
         counter := 0  
  else
         no_see_logic
         'servo0 := 1550
         'servo1 := 2000

         'servo0 := 0
         'servo1 := 2000
                      
  if frontsensor <= 168
      servo0 := 1000
      servo1 := 1480      
  
  Pulsout.Set(0, servo0)
  Pulsout.Set(1, servo1) 

Pub no_see_logic

'counter += 1
'if counter > 1
  servo0 := 1475
  servo1 := 2000
'else
'  servo0 := 1400
'  servo1 := 2000