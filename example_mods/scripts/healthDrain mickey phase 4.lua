function opponentNoteHit(id,data,type,sus)
    local noteHealth = 0.04
    local dadCharacter = getProperty('dad.curCharacter')
    if dadName == 'Phase 4' then
        cameraShake('camGame', 0.008, 0.1);
        cameraShake('camHud', 0.004, 0.1);
    end
    if getProperty('health') > 0.4 then
        if dadCharacter == 'Phase 4' then
            if not sus then
                setProperty('health',getProperty('health') - noteHealth)
            else
                setProperty('health',getProperty('health') - (noteHealth/3))
            end
        end
    end
end

function onUpdate()

    if dadName == 'Phase 4' then
        if (getProperty('iconP2.angle') >= 0) then
	        if ('iconP2.angle' ~= 0) then
    	        setProperty('iconP2.angle', getProperty('iconP2.angle')-4);
            end
        else
            if ('iconP2.angle' ~= 0) then
    	        setProperty('iconP2.angle', getProperty('iconP2.angle')+6);
            end
    	end
    end
end
