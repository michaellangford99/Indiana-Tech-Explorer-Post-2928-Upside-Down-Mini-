'Propeller Sumo Five IR

CON

  _clkmode = xtal1 + pll16x                  ' System clock → 80 MHz

    _CLKFREQ = 80_000_000
    
OBJ

  Ir : "SquareWave.spin"
  pst : "Parallax Serial Terminal"
  serout : "motorcontrol 1.0"
  lcd : "Debug_Lcd"
  Front : "Back Search"
  BUTTONS : "Touch Buttons"
  gyro   : "Gtest"
       
VAR

  long ir_input, motor1, motor2, state0, state1, state2, state3, state4, state, side, left, right, finput, gyro_input

PUB start

  side := 0
  left := 0
  right := 1
  ir_input := %11111
  pst.Start(115_200)
  serout.init
  lcd.init(0, 2400, 4)
  lcd_clear
  lcd.str(string(1))
  lcd.str(string("Main Program Running"))  
  Front.back_Init
  BUTTONS.start(_CLKFREQ / 1000)
  gyro.startup
   waitcnt(clkfreq + cnt)
   gyro.startup
  repeat
    state := Buttons.state
    pst.dec(1)   
    if state == %10000000
        main
    elseif state == %01000000
      spin_left
    elseif state == %00100000
      spin_right
    elseif state == %00010000
      spin_180

PUB spin_left
  
  repeat until gyro_input >= 90
     gyro.main
     gyro_input := gyro.getz
     gyro_input := gyro_input / 100
      serout.speed(200, -200)
 main
 
PUB spin_right

 repeat until gyro_input <= -90
     gyro.main
     gyro_input := gyro.getz
     gyro_input := gyro_input / 100
      serout.speed(-200, 200)
 Main

PUB spin_180
 repeat until gyro_input <= -175 or gyro_input >= 175
        gyro.main
        gyro_input := gyro.getz
        gyro_input := gyro_input / 100
        serout.speed(200, -200)
 Main
        
PUB main

repeat 
    waitcnt(clkfreq/100+cnt)
    finput := Front.get_back
    pst.clear
    pst.bin(finput, 5)
    logic_handler(finput)        
    serout.speed(motor2, motor1)

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