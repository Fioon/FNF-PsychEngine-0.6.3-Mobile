function opponentNoteHit(id,data,type,sus)
    local noteHealth = 0.008
    local dadCharacter = getProperty('dad.curCharacter')
    if getProperty('health') > 0.4 then
        if dadCharacter == 'Phase 1' then
            if not sus then
                setProperty('health',getProperty('health') - noteHealth)
            else
                setProperty('health',getProperty('health') - (noteHealth/3))
            end
        end
    end
end
