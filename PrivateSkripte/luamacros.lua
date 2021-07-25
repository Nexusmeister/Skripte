clear()
-- Hier die ID des Geräts eingeben, das als MakroPad dienen soll
local makroId = '38F2FFE7'

-- Sicherheitsprüfung, ob ID geändert worden ist
if keyboardIdentifier == '0000AAA' then
	lmc_assign_keyboard('makros');
else lmc_device_set_name('makros', makroId);
end

--This lists connected keyboards
dev = lmc_get_devices()
for key,value in pairs(dev) do
  print(key..':')
  for key2,value2 in pairs(value)
  do
     print('  '..key2..' = '..value2)
  end
end

-- assign logical name to macro keyboard
--lmc_device_set_name('makros', makroId)
--lmc_print_devices()
lmc.minimizeToTray = true
lmc_minimize()

-- define callback for whole device
lmc_set_handler('makros',function(button, direction)
   if (direction == 1) then
        --lmc_send_keys('{left}{del}')
     return
   end  -- ignore down
 if (button == 13) then
    lmc_send_keys('^{ENTER}', 50)
    print('Enter ->')

    elseif (button == 97) then
    lmc_send_keys('^{NUM1}', 50)
	lmc_spawn("explorer", "F:\\Tools\\Skripte\\getMicInfo.ahk")
    print('NUM1 ->')

    elseif (button == 98) then
    lmc_send_keys('^{NUM2}', 50)
    print('NUM2 ->')

    elseif (button == 99) then
    lmc_send_keys('^{NUM3}', 50)
    print('NUM3 ->')

    elseif (button == 100) then
    lmc_send_keys('^{NUM4}', 50)
    print('NUM4 ->')

    elseif (button == 101) then
    lmc_send_keys('^{NUM5}', 50)
    print('NUM5 ->')

    elseif (button == 102) then
    lmc_send_keys('^{NUM6}', 50)
    print('NUM6 ->')

    elseif (button == 103) then
    lmc_send_keys('^{NUM7}', 50)
    print('NUM7 ->')

    elseif (button == 104) then
    --lmc_send_keys('#^{LEFT}', 50)
    lmc_spawn("explorer", "F:\\Tools\\Skripte\\switch_desktop_left.ahk")
    print('NUM8 ->')

    elseif (button == 105) then
    --lmc_send_keys('#^{RIGHT}', 50)
    lmc_spawn("explorer", "F:\\Tools\\Skripte\\switch_desktop_right.ahk")
    print('NUM9 ->')

    elseif (button == 111) then
    lmc_send_keys('^{NUMDIVIDE}', 50)     -- Mute TS3 Sound
    print('NUMDIV -> Mute TS3')

    elseif (button == 106) then
    lmc_send_keys('^{NUMMULTIPLY}', 50) -- Mute TS3 Mic
    print('NUMMULTI -> Mute TS3 Mic')

    elseif (button == 109) then
    --lmc_send_keys('#^{F4}', 50)        -- Remove Desktop
    lmc_spawn("explorer", "F:\\Tools\\Skripte\\remove_desktop.ahk")
    print('NUMMINUS ->')

    elseif (button == 107) then
    --lmc_send_keys('#^d', 50)       -- Add Desktop
    lmc_spawn("explorer", "F:\\Tools\\Skripte\\add_desktop.ahk")
    print('NUMPLUS ->')

    elseif (button == 8) then
    --lmc_send_keys('^+{BACKSPACE}', 50)      -- Mute Discord complete
    lmc_spawn("explorer", "F:\\Tools\\Skripte\\mute_discord.ahk")
    print('BACKSPACE -> Mute Discord')

    elseif (button == 110) then
    lmc_send_keys('^{NUMDECIMAL}', 50)
    print('NUMDEC ->')

    elseif (button == 96) then
    lmc_send_keys('^{NUM0}', 50) -- Mute Windows Microphone
    print('NUM0 -> Mute Win Mic')

    else print('Not yet assigned: ' .. button)
  end
end
)
