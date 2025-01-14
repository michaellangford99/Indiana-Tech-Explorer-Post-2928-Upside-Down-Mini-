CON

  _clkmode = xtal1 + pll16x                  ' System clock → 80 MHz
  _xinfreq = 5_000_000

OBJ

  pst : "Parallax Serial Terminal"
  serout : "motorcontrol 1.0"            
  gyro : "Gyroscope Vs 1.0"
  
VAR

  long ir_input, motor1, motor2, state0, state1, state2, state3, state4, state, side, left, right, input
  long finput, binput

  
PUB Initialize

  pst.Start(1000000)
  serout.init
  gyro.startup

  repeat until input >= 90
    input := gyro.getz
    input := input/100
    serout.speed(200, 200)
    waitcnt(clkfreq/2000 + cnt)
    
  repeat
    serout.speed(0, 0)