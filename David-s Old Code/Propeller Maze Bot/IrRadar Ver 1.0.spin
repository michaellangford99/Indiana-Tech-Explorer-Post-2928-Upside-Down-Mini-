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
    Long stack, ir_results, state, state2, stateofpin, speed, servo0, servo1

PUB Start

Pulsout.Start
IrRadar.init(3, 25, 4)
Debug.Start(9600)
go

Pub go
repeat

  ir_results := IrRadar.distance
  Debug.clear
  Debug.dec(ir_results)

  if ir_results <200
         servo0 := 1000
         servo1 := 0
  else 
         servo0 := 0
         servo1 := 2000
  
  Pulsout.Set(0, servo0)
  Pulsout.Set(1, servo1) 
{{  
  if state == 0
      Pulsout.Set(0, 1000)
      Pulsout.Set(1, 0)
  if state == 1
      Pulsout.Set(0, 0)
      Pulsout.Set(1, 2000)    

  }}
      