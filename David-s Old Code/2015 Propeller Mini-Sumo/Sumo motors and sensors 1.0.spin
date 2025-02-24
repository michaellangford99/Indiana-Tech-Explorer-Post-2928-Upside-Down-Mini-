'Propeller Sumo Five IR

CON

  _clkmode = xtal1 + pll16x                  ' System clock → 80 MHz
  _xinfreq = 5_000_000

OBJ

  Ir : "SquareWave.spin"
  pst : "Parallax Serial Terminal"
  serout : "motorcontrol 2.0"
  
VAR

  long ir_input, motor1, motor2, state0, state1, state2, state3, state4, state
PUB main

  ir_input := %11111
  pst.Start(115200)
  serout.init
    
repeat 
  state0 := sensor_check(16, 18)
    if state0 == 0
      state0 := %01111
    else
      state0 := %11111 
  state1 := sensor_check(16, 20)
    if state1 == 0
      state1 := %10111
    else
      state1 := %11111
  state2 := sensor_check(16, 22)
    if state2 == 0
      state2 := %11011
    else
      state2 := %11111
  state3 := sensor_check(16, 24)
    if state3 == 0
      state3 := %11101
    else
      state3 := %11111  
  state4 := sensor_check(16, 26)
    if state4 == 0
      state4 := %11110
    else
      state4 := %11111

  ir_input := state0 & state1 & state2 & state3 & state4
  pst.clear
  pst.bin(ir_input, 5)
  logic_handler(ir_input)         
  serout.speed(motor1, motor2)
  
PRI sensor_check(rpin, tpin) 
                               
  Ir.freq(0, tpin, 38500)
  dira[tpin]~
  dira[tpin]~~
  waitcnt(clkfreq/1000 + cnt)
  dira[rpin]~
  state := ina[rpin]
  dira[tpin]~
  return state

PRI logic_handler(data)
   
  case data
    %11111 : motor1 := 0
             motor2 := 0
    %00000 : motor1 := 200
             motor2 := 200
    other :    motor1 := 0
           motor2 := 0

return