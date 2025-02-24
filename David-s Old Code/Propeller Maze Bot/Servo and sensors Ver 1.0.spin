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
  
VAR
    Long stack, ir_results, state, state2, stateofpin, speed

PUB Start

Pulsout.Start
go

Pub go
repeat
    
  SqrWave.Freq(0, 3, 38000)                ' 38 kHz signal → P1
  dira[3]~                                 ' Set I/O pin to input when no signal needed
  dira[3]~~                                ' I/O pin → output to transmit 38 kHz
  waitcnt(clkfreq/1000 + cnt)              ' Wait 1 ms
  state := ina[4]                          ' Store I/R detector output
  dira[3]~                                 ' I/O pin → input to stop signal
  
  outa[18] := state           ' display right sensor input
  dira[18] := state
  
  if state == 0
      Pulsout.Set(0, 1000)
      Pulsout.Set(1, 0)
  if state == 1
      Pulsout.Set(0, 0)
      Pulsout.Set(1, 2000)    


      