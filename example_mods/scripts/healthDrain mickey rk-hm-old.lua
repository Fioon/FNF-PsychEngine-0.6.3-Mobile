function opponentNoteHit(id,data,type,sus)
    local noteHealth = 0.024
    local dadCharacter = getProperty('dad.curCharacter')
    if getProperty('health') > 0.024 then
        if dadCharacter == 'RK-HM Old' then
            if not sus then
                setProperty('health',getProperty('health') - noteHealth)
            else
                setProperty('health',getProperty('health') - (noteHealth/3))
            end
        end
    end
end
