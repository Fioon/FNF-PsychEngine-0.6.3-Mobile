function onCreate()
	makeAnimatedLuaSprite('missStatic', 'Jumpscares/happy jump', 0, 0)
	addAnimationByPrefix('missStatic', 'missed', 'happy', 16, false)
	setGraphicSize('missStatic', 1280, 720) --getProperty('missStatic.width') * 4
	setProperty('missStatic.alpha', 1)
	setProperty('missStatic.visible', false)
	addLuaSprite('missStatic', true)
	setObjectCamera('missStatic', 'other')

for i = 0, getProperty('unspawnNotes.length')-1 do
	if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bad Eye Note H' then
		setPropertyFromGroup('unspawnNotes', i, 'texture', 'BADEYE_assets');
		setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BloodPixel');
		setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
		setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
	end
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Bad Eye Note H' then
	setProperty('health',
	getProperty('health') - 0.3)
		playSound('StaticAss')
	objectPlayAnimation('missStatic', 'missed', true)
end
end

function onStepHit()
if curStep == 1 then
		setProperty('missStatic.visible', true)
end
end

function onUpdate(elapsed)
if getProperty('missStatic.animation.curAnim.finished') and getProperty('missStatic.animation.curAnim.name') == 'missed' then
	setProperty('missStatic.alpha', 0)
else
	setProperty('missStatic.alpha', 0.9)
end
end