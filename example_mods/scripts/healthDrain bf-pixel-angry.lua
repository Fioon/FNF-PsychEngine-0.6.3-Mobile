function goodNoteHit(id,data,type,sus)
    local noteHealth = 0.03
    local boyfriendCharacter = getProperty('boyfriend.curCharacter')
    if boyfriendName == 'bf-pixel-angry' then
        cameraShake('camGame', 0.000, 0.1);
        cameraShake('camHud', 0.000, 0.1);
    end
    if getProperty('health') > 1.6 then
        if boyfriendCharacter == 'bf-pixel-angry' then
            if not sus then
                setProperty('health',getProperty('health') - noteHealth)
            else
                setProperty('health',getProperty('health') - (noteHealth/1.5))
            end
        end
    end
end