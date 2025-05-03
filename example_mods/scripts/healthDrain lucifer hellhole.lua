function opponentNoteHit(id,data,type,sus)
    local noteHealth = 0.1
    local gfCharacter = getProperty('gf.curCharacter')
    if gfName == 'Lucifer Hellhole' then
        cameraShake('camGame', 0.011, 0.1);
        cameraShake('camHud', 0.006, 0.1);
    end
    if getProperty('health') > 0.2 then
        if gfCharacter == 'Lucifer Hellhole' then
            if not sus then
                setProperty('health',getProperty('health') - noteHealth)
            else
                setProperty('health',getProperty('health') - (noteHealth/3))
            end
        end
    end
end
