function opponentNoteHit(id,data,type,sus)
    local noteHealth = 0.03
    local dadCharacter = getProperty('dad.curCharacter')
    if dadName == 'Phase 3' then
        cameraShake('camGame', 0.005, 0.1);
        cameraShake('camHud', 0.002, 0.1);
    end
    if getProperty('health') > 0.4 then
        if dadCharacter == 'Phase 3' then
            if not sus then
                setProperty('health',getProperty('health') - noteHealth)
            else
                setProperty('health',getProperty('health') - (noteHealth/3))
            end
        end
    end
end

function onUpdate()

    if dadName == 'Phase 3' then
        if (getProperty('iconP2.angle') >= 0) then
	        if ('iconP2.angle' ~= 0) then
    	        setProperty('iconP2.angle', getProperty('iconP2.angle')-2);
            end
        else
            if ('iconP2.angle' ~= 0) then
    	        setProperty('iconP2.angle', getProperty('iconP2.angle')+3);
            end
    	end
    end
end
