function onCountdownTick(counter)    if counter == 0 then -- three

        playSound('',1.3);

    elseif counter == 1 then -- two

        playSound('MickeyReady-pixel',1.3);

    elseif counter == 2 then -- one

        playSound('MickeySet-pixel',1.3);

    elseif counter == 3 then -- go

        playSound('MickeyGo-pixel',1.3);

    end

end
