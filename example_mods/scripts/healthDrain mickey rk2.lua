function opponentNoteHit(id,data,type,sus)
    local noteHealth = 0.01
    local dadCharacter = getProperty('dad.curCharacter')
    if getProperty('health') > 0.4 then
        if dadCharacter == 'RK2' then
            if not sus then
                setProperty('health',getProperty('health') - noteHealth)
            else
                setProperty('health',getProperty('health') - (noteHealth/3))
            end
        end
    end
end

function onUpdate()

    if dadName == 'RK2' then
        if (getProperty('iconP2.angle') >= 0) then
	        if ('iconP2.angle' ~= 0) then
    	        setProperty('iconP2.angle', getProperty('iconP2.angle')-2);
            end
        else
            if ('iconP2.angle' ~= 0) then
    	        setProperty('iconP2.angle', getProperty('iconP2.angle')+4);
            end
    	end
    end
end