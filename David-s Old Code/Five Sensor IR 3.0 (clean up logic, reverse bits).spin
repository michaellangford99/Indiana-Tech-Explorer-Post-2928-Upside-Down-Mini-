'Propeller Sumo Five IR

CON

  _clkmode = xtal1 + pll16x                  ' System clock → 80 MHz
  _xinfreq = 5_000_000

OBJ

  Ir : "SquareWave.spin"
  pst : "Parallax Serial Terminal"
  serout : "TestDualPWM"
  
VAR

  long state, ir_input, motor_sequence, ir_case, motora, motorb, stack, ir_right, motor2

PUB main

  ir_input := %00000
  pst.Start(115200)
    
repeat
  ir_input.byte[3] := sensor_check(16, 18)
  ir_input.byte[2] := sensor_check(16, 20)
  ir_input.byte[1] := sensor_check(16, 22)
  ir_input.byte[0] := sensor_check(16, 24)
  ir_right := sensor_check(16, 26)
  logic_handler(ir_input, ir_right)
  pst.clear
  pst.dec(motor_sequence)
  
PRI sensor_check(rpin, tpin) 
                               
  Ir.freq(0, tpin, 38500)
  dira[tpin]~
  dira[tpin]~~
  waitcnt(clkfreq/1000 + cnt)
  dira[rpin]~
  state := ina[rpin]
  dira[tpin]~
  return state

PRI logic_handler(data, data2)

  case data2
    %00000001 : motor2 := 1
    %00000000 : motor2 := 0

  case data
    %00000001000000010000000100000001 : motor_sequence := 0  'search
      if motor2 == 0
        motor_sequence := 16                                 
    %00000001000000010000000100000000 : motor_sequence := 1  'far left
      if motor2 == 0
        motor_sequence := 17
    %00000001000000010000000000000001 : motor_sequence := 2  'far left
     if motor2 == 0
        motor_sequence := 18
    %00000001000000010000000000000000 : motor_sequence := 3  'left
     if motor2 == 0
        motor_sequence := 19
    %00000001000000000000000100000001 : motor_sequence := 4
     if motor2 == 0
        motor_sequence := 20
    %00000001000000000000000100000000 : motor_sequence := 5
     if motor2 == 0
        motor_sequence := 21
    %00000001000000000000000000000001 : motor_sequence := 6
     if motor2 == 0
        motor_sequence := 22
    %00000001000000000000000000000000 : motor_sequence := 7
     if motor2 == 0
        motor_sequence := 23
    %00000000000000010000000100000001 : motor_sequence := 8
     if motor2 == 0
        motor_sequence := 24
    %00000000000000010000000100000000 : motor_sequence := 9
     if motor2 == 0
        motor_sequence := 25
    %00000000000000010000000000000001 : motor_sequence := 10
     if motor2 == 0
        motor_sequence := 26
    %00000000000000010000000000000000 : motor_sequence := 11
     if motor2 == 0
        motor_sequence := 27
    %00000000000000000000000100000001 : motor_sequence := 12
     if motor2 == 0
        motor_sequence := 28
    %00000000000000000000000100000000 : motor_sequence := 13
     if motor2 == 0
        motor_sequence := 29
    %00000000000000000000000000000001 : motor_sequence := 14
     if motor2 == 0
        motor_sequence := 30
    %00000000000000000000000000000000 : motor_sequence := 15
     if motor2 == 0
        motor_sequence := 31