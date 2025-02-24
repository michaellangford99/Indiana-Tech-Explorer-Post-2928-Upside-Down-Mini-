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
       
VAR

  long ir_input, motor1, motor2,state, side, left, right, finput, counter, routine, routine_name, pattern

PUB start

  side := 0
  left := 0
  right := 1
  ir_input := %11111
  pst.Start(115_200)
  serout.init
  lcd.init(11, 2400, 4)
  lcd_clear
  lcd.str(string(1))
  lcd.str(string("Main Program Running"))  
  Front.back_Init
  BUTTONS.start(_CLKFREQ / 1000)
  counter := 0
  Routine_manager  

        
PUB Routine_manager

      repeat
          waitcnt(clkfreq/20 + cnt)
          state := Buttons.state >> 4            
          buttoncheck
          waitcnt(clkfreq/10 + cnt)
          finput := Front.get_back
          lcd.str(string(1))
          lcd.bin(state, 8)
          lcd.str(string(" routine :"))
          lcd.dec(routine)
          routine_check
          lcd.str(string(2))
          lcd.str(routine_name)
          lcd.str(string(3))
          lcd.str(string("F:"))
          lcd.bin(finput, 5)

PRI routine_check
                                 
  case routine
    0 : routine_name := string("Charge           ")
    1 : routine_name := string("Spin Left        ")
    2 : routine_name := string("Spin Right       ")
    3 : routine_name := string("180 Spin         ")
    4 : routine_name := string("back up          ")
    5 : routine_name := string("Routine Five     ")
    6 : routine_name := string("Routine Six      ")
    7 : routine_name := string("Routine Seven    ")
          
PUB buttoncheck

        if state == %00001000
          routine += 1
          if routine == 8
               routine := 0
        if state == %00000100
          selected
        if state == %00000010
          routine -= 1
           if routine == -1
               routine := 0
               
PRI selected

  lcd_clear
  
repeat
  lcd.str(string(1))
  lcd.str(string("Routine Selected: "))
  lcd.dec(routine)
  lcd.str(string(2))
  lcd.str(routine_name)
  lcd.str(string(3))              
  lcd.str(string("button 5 to start"))
  lcd.str(string(4))
  lcd.str(string("button 7 to deselect"))
  state := Buttons.State >> 4
  waitcnt(clkfreq/2 + cnt)
  if state == %00000010
    engage
  if state == %00001000
    deselect

PRI lcd_clear

       lcd.str(string($1b))
       lcd.str(string($43))
       waitcnt(clkfreq/10 + cnt)

Pub engage

  lcd_clear
 
  lcd.str(string(1))
  lcd.str(string("routine engaged"))
  case routine
      0 : charge
      1 : spin_left
      2 : spin_right
      3 : spin_180
      4 : back_up
      5 : pattern := string("Run Five ")
      6 : pattern := string("Run Six  ")
      7 : pattern := string("Run Seven")
  lcd.str(string(3))
  lcd.str(pattern)
  waitcnt(clkfreq + cnt)
  main
  
PRI deselect

  lcd_clear
  waitcnt(clkfreq/1000 + cnt)
  lcd.str(string(1))
  lcd.str(string("Routine deselected. Select new routine"))
  waitcnt(clkfreq + cnt)
  Routine_manager

PUB charge

  repeat until counter == 8000
    counter += 1
    serout.speed(-200, -200)
  main

PUB spin_left

  repeat until counter == 8500
      counter += 1
      serout.speed(-200, 200)
  side := left
 main
 
PUB spin_right

 repeat until counter == 8500
      counter += 1
      serout.speed(200, -200)
 side := right
 Main

PUB spin_180

 repeat until counter == 16000
      counter += 1
      serout.speed(200, -200)
 counter := 0
 repeat until counter == 5000
      counter += 1
      serout.speed(-200, -200)
 side := right
 Main

PUB back_up

  repeat until counter == 8000
      counter += 1
      serout.speed(200, 200)
  repeat
      finput := Front.get_back
      if finput <> 32
        main
        
PUB main
'repeat
'  serout.speed(0, 0)
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