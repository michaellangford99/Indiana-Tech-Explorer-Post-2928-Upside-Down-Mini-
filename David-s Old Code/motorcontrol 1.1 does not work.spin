''This code example is from Propeller Education Kit Labs: Fundamentals, v1.2.
''A .pdf copy of the book is available from www.parallax.com, and also through
''the Propeller Tool software's Help menu (v1.2.6 or newer).
''
{{
TestDualPWM.spin
Demonstrates using two counter modules to send a dual PWM signal.
The cycle time is the same for both signals, but the high times are independent of 
each other.
}}

CON
   
  _clkmode = xtal1 + pll16x                  ' System clock → 80 MHz
  _xinfreq = 5_000_000  

VAR

long speeda, speedb, stack

PUB init

  cognew(run, @stack[200])
  return

PUB run | tc, tHa, tHb, t, c

repeat
  'if speeda >= 0
  '  ctra[30..26] := %00100
  'else
  '  ctra[26..30] := %00100
  'if speedb >= 0
  '  ctrb[30..26] := %00100     ' Counters A and B → NCO single-ended
  'else
  '  ctrb[26..30] := %00100
  if speeda >= 0
    ctra[5..0] := 0                            ' Set pins for counters to control
  else
    ctra[0..5] := 0
  if speedb >= 0
    ctrb[5..0] := 1
  else
    ctrb[0..5] := 1
           
  frqa := frqb := 1                          ' Add 1 to phs with each clock tick
  if speeda >= 0
    dira[0] := 1
  else
    dira[2] := 0
  if speedb >= 0  
    dira[1] := 1                    ' Set I/O pins to output
  else
    dira[3] := 1

  tC := clkfreq/10000                            ' Set up cycle time
  if speeda >= 0
  
    tHa := tc - (100 - speeda)*(tc/100)                       ' Set up high times for both signals
  else
    tHa := tc - (100 + speeda)*(tc/100)
  if speedb >= 0 
    tHb := tc - (100 - speedb)*(tc/100)       '--
  else
    tHb := tc - (100 + speedb)*(tc/100)
  t := cnt                                       ' Mark current time.   
  phsa := -tHa                                   ' Define and start the A pulse
  phsb := -tHb                                   ' Define and start the B pulse
  t += tC                                        ' Calculate next cycle repeat
  waitcnt(t)                                     ' Wait for next cycle

PUB speed(getspeeda, getspeedb)

  speeda := getspeeda
  speedb := getspeedb
    