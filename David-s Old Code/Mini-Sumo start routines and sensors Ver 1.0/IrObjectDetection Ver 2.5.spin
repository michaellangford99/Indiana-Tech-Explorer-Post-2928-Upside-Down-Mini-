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
  
VAR
    Long stack, ir_results, state
    
PUB Start

dira[17..19]~~
repeat
    
  SqrWave.Freq(0, 9, 38000)                ' 38 kHz signal → P1
  dira[9]~                                 ' Set I/O pin to input when no signal needed
  !dira[9]                                 ' I/O pin → output to transmit 38 kHz
  waitcnt(clkfreq/1000 + cnt)              ' Wait 1 ms
  state := ina[8]                          ' Store I/R detector output
  !dira[9]                                 ' I/O pin → input to stop signal
  ir_results.byte[2] := state              ' store input in ir_results
    
  'Start 38 kHz square wave
  SqrWave.Freq(0, 11, 38000)                ' 38 kHz signal → P3                    
  dira[11]~                                 ' Set I/O pin to input when no signal needed
  dira[11]~~                                ' I/O pin → output to transmit 38 kHz
  waitcnt(clkfreq/1000 + cnt)               ' Wait 1 ms
  state := ina[10]                          ' Store I/R detector output
  ir_results.byte[0] := state               ' Store input in ir_results
  dira[11]~                                 ' I/O pin → input to stop signal

  SqrWave.Freq(0, 13, 38000)
  dira[13]~
                                'DAVID IF YOU PUT AN EXCLAMATION POINT IN FRONT
                                'OF A VARABLE IT BECOMES THE OPPOSITE!!!!!!!!
  dira[13]~~
  waitcnt(clkfreq/1000 + cnt)
  state := ina[12]
  ir_results.byte[1] := state
  outa[17] := ir_results.byte[0]            ' display left sensor input
  outa[18] := ir_results.byte[1]            ' display right sensor input
  outa[19] := ir_results.byte[2]

 case ir_results                          'spin equivalent of branch
   %000  : state  := 23                   'if both see, turn led on p23 on
   %111  : state  := 21
   other : state  := 22                   'otherwise turn led on p22 on

 dira[state] := 1
 outa[state] := 1
 waitcnt(clkfreq/1000 + cnt)
 dira[21..23]~       