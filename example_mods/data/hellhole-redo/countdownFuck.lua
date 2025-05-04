function onCountdownTick(counter)    if counter == 0 then -- three

        playSound('',1.3);

    elseif counter == 1 then -- two

        playSound('LuciferReady',1.3);

    elseif counter == 2 then -- one

        playSound('LuciferSet',1.3);

    elseif counter == 3 then -- go

        playSound('LuciferGo',1.3);

    end

end
