'Propeller Sumo Five IR

CON

  _clkmode = xtal1 + pll16x                  ' System clock → 80 MHz
  _xinfreq = 5_000_000

OBJ

  Ir : "SquareWave.spin"
  pst : "Parallax Serial Terminal"
  serout : "motorcontrol 1.0"
  lcd : "Debug_Lcd"
  
VAR

  long ir_input, motor1, motor2, state0, state1, state2, state3, state4, state, side, left, right

PUB main

  side := 0
  left := 0
  right := 1
  ir_input := %11111
  pst.Start(115200)
  serout.init
  lcd.init(0, 2400, 4)
  lcd_clear
  lcd.str(string(1))
  lcd.str(string("Main Program Running"))  
    
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

    ir_input := state4 & state4 & state2 & state1 & state0
    pst.clear
    pst.bin(ir_input, 5)
    logic_handler(ir_input)         
    serout.speed(motor2, motor1)
  
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
      %11111 : search
      %11110 : motor1 := -200
             motor2 := 0
             side := right
      %11101 : motor1 := -200
             motor2 := -100
             side := right
      %11100 : motor1 := -200
             motor2 := -130
             side := right
      %11011 : motor1 := -200
             motor2 := -200
      %11010 : motor1 := -200
             motor2 := -150
             side := right
      %11001 : motor1 := -200
             motor2 := -160
             side := right
      %11000 : motor1 := -200
             motor2 := -150
             side := right
      %10111 : motor1 := -100
             motor2 := -200
             side := left
      %10110 : motor1 := -200
             motor2 := -150
             side := right
      %10101 : motor1 := -200
             motor2 := -200
      %10100 : motor1 := -200
             motor2 := -170
             side := right
      %10011 : motor1 := -180
             motor2 := -200
             side := left                                              
      %10010 : motor1 := -200
             motor2 := -180
             side := right
      %10001 : motor1 := -200
             motor2 := -200
      %10000 : motor1 := -200
             motor2 := -190
      %01111 : motor1 := 0
             motor2 := -200
             side := left
      %01110 : motor1 := -200
             motor2 := -200
      %01101 : motor1 := -180
             motor2 := -200
             side := left
      %01100 : motor1 := -200
             motor2 := -200
      %01011 : motor1 := -170
             motor2 := -200
             side := left
      %01010 : motor1 := -200
             motor2 := -200
      %01001 : motor1 := -180
             motor2 := -200
             side := left
      %01000 : motor1 := -200
             motor2 := -200
      %00111 : motor1 := -180
             motor2 := -200
             side := left
      %00110 : motor1 := -200
             motor2 := -200
      %00101 : motor1 := -190
             motor2 := -200
             side := left
      %00100 : motor1 := -200
             motor2 := -200
      %00011 : motor1 := -170
             motor2 := -200
             side := left
      %00010 : motor1 := -200
             motor2 := -200
      %00001 : motor1 := -190
             motor2 := -200
             side := left
      %00000 : motor1 := -200
             motor2 := -200

return

PRI search

    if side == right
        motor1 := -200
        motor2 := 200
    elseif side == left
        motor1 := 200
        motor2 := -200

return

PRI lcd_clear

       lcd.str(string($1b))
       lcd.str(string($43))
       waitcnt(clkfreq/10 + cnt)

return