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

PUB IrDetect | state

  'Start 38 kHz square wave
  SqrWave.Freq(0, 1, 38000)                  ' 38 kHz signal → P1
  dira[1]~                                   ' Set I/O pin to input when no signal needed

  'Start Parallax Serial Terminal
  'pst.Start(115_200)                          

  repeat

    ' Detect object.
    dira[1]~~                                ' I/O pin → output to transmit 38 kHz
    waitcnt(clkfreq/1000 + cnt)              ' Wait 1 ms
    state := ina[0]                          ' Store I/R detector output
    dira[1]~                                 ' I/O pin → input to stop signal
    dira[16]~~
    outa[16] := state
    waitcnt(clkfreq/100 + cnt) 