function onCountdownTick(counter)    if counter == 0 then -- three

        playSound('',1.3);

    elseif counter == 1 then -- two

        playSound('MickeyReady',1.3);

    elseif counter == 2 then -- one

        playSound('MickeySet',1.3);

    elseif counter == 3 then -- go

        playSound('MickeyGo',1.3);

    end

end
