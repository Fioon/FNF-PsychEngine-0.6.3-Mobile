function onStepHit()
   if curStep == 1 then
      keepScroll = false
	noteTweenX("NoteMove1", 0, 9999, 0.1, cubeInOut)
	noteTweenX("NoteMove2", 1, 9999, 0.1, cubeInOut)
	noteTweenX("NoteMove3", 2, 9999, 0.1, cubeInOut)
	noteTweenX("NoteMove4", 3, 9999, 0.1, cubeInOut)
        noteTweenX("NoteMove5", 4, 410, 0.1, cubeInOut)
        noteTweenX("NoteMove6", 5, 520, 0.1, cubeInOut)
        noteTweenX("NoteMove7", 6, 630, 0.1, cubeInOut)
        noteTweenX("NoteMove8", 7, 740, 0.1, cubeInOut)
   end
end