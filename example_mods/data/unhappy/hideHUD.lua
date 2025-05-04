function onSongStart()
    setProperty('camHUD.visible', false)
end

function onStepHit()
   if curStep == 5 then
      keepScroll = false
      setProperty('camHUD.visible', true)
   end
end