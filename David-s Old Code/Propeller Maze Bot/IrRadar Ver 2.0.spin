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
    Long stack, distance, ir_results, servo0, servo1, frontsensor

PUB Start

Pulsout.Start
IrRadar.init(3, 25, 4)
Debug.Start(9600)
go

Pub go
repeat
  IrRadar.init(2, 15, 3)
  ir_results := IrRadar.distance
  Debug.clear
  Debug.dec(ir_results)

  IrRadar.init(5, 14, 4)
  frontsensor := IrRadar.distance

  if frontsensor <170
        servo0 := 1000
        servo1 := 1000  
  elseif ir_results <140
         servo0 := 1000
         servo1 := 0
  elseif ir_results <145
         servo0 := 1000
         servo1 := 0
  elseif ir_results <145
         servo0 :=1000
         servo1 := 0
  elseif ir_results <150
         servo0 := 1400
         servo1 := 1400
  elseif ir_results <155
         servo0 := 1000
         servo1 := 0
  elseif ir_results <160
         servo0 := 1000
         servo1 := 1600
  elseif ir_results <165
         servo0 := 1000
         servo1 := 1800
  elseif ir_results <170
         servo0 := 1100
         servo1 := 2000
  elseif ir_results <180
         servo0 := 1200
         servo1 := 2000
  elseif ir_results <185
         servo0 := 1300
         servo1 := 2000
  elseif ir_results <190
         servo0 := 1400
         servo1 := 2000
  elseif ir_results <200
         servo0 := 0
         servo1 := 2000      
  else 
         corner

  Pulsout.Set(0, servo0)
  Pulsout.Set(1, servo1) 

Pub corner

Pulsout.Set(0, 1000)
Pulsout.Set(1, 2000)
waitcnt(clkfreq/5 + cnt)
Pulsout.Set(0, 1480)
Pulsout.Set(1, 2000)
waitcnt(clkfreq/2 + cnt)
Pulsout.Set(0, 1000)
Pulsout.Set(1, 2000)
waitcnt(clkfreq/15 + cnt)
go