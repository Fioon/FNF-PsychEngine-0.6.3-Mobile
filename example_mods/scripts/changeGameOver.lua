local currentBf = 'bf'
function onUpdate()
    if currentBf ~= getProperty('boyfriend.curCharacter') then
        if getProperty('boyfriend.curCharacter') == 'gf-speaker' then
            setPropertyFromClass('GameOverSubstate','characterName','gf-speaker')

        elseif getProperty('boyfriend.curCharacter') == 'RK-BF Old' then
            setPropertyFromClass('GameOverSubstate','characterName','RK-BF Old')
	    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Old VS HM/fnf_loss_sfx')
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Old VS HM/gameOver')
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Old VS HM/gameOverEnd')

        elseif getProperty('boyfriend.curCharacter') == 'bf-pixel' then
            setPropertyFromClass('GameOverSubstate','characterName','bf-pixel-dead')
	    setPropertyFromClass('GameOverSubstate', 'deathSoundName', ' ')
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', ' ')

        elseif getProperty('boyfriend.curCharacter') == 'bf-pixel-angry' then
            setPropertyFromClass('GameOverSubstate','characterName','bf-pixel-dead')
	    setPropertyFromClass('GameOverSubstate', 'deathSoundName', ' ')
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', ' ')
        end
        currentBf = getProperty('boyfriend.curCharacter')
    end
end