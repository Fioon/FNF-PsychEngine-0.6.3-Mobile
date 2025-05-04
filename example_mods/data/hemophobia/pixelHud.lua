--Da Pixel HUD For Vs Homicide Mouse V2 By Fork!!

--The HUD Parts.
function onCreate()
    makeLuaText('score', 'Score:')
    setTextSize('score', 12)
    setTextFont('score','pixelhm.ttf')
    setProperty('score.x', 980)
    setProperty('score.y', 620)
    setObjectCamera('score', 'other');
    addLuaText('score')

    makeLuaText('miss', 'Misses:')
    setTextSize('miss', 12)
    setTextFont('miss','pixelhm.ttf')
    setProperty('miss.x', 980)
    setProperty('miss.y', 655)
    setObjectCamera('miss', 'other');
    addLuaText('miss')

    makeLuaText('sane', 'Sanity: 0%')
    setTextSize('sane', 12)
    setTextFont('sane','pixelhm.ttf')
    setProperty('sane.x', 980)
    setProperty('sane.y', 690)
    setObjectCamera('sane', 'other');
    addLuaText('sane')

    makeLuaSprite('Start', 'loadingScreens/SongIntro', 0, 0);
    scaleObject('Start', 1.0, 1.0);
    setObjectCamera('Start', 'other');

    addLuaSprite('Start', true);
    setTextAlignment('score', 'right')
    setTextAlignment('miss', 'right')
    setTextAlignment('sane', 'right')
end

function onRecalculateRating()
    setTextString('score', 'Score: ' .. getProperty('songScore'))
    setTextString('miss', 'Misses: ' .. getProperty('songMisses'))
    setTextString('sane', 'Sanity: ' .. round(getProperty('ratingPercent') * 100, 2) .. '%')
end

--Those parts shall begone from this script.
function onUpdatePost()
    setProperty('scoreTxt.alpha', 0)
end

--Static icons!!
function onCreatePost()
	defaultY = getProperty('iconP2.y')
    defaultY = getProperty('iconP1.y')
	setProperty('boyfriend.visible', true)
end

function onBeatHit()
	setProperty('iconP2.scale.y', 1)
	setProperty('iconP2.scale.x', 1)
    setProperty('iconP1.scale.y', 1)
	setProperty('iconP1.scale.x', 1)
end

function round(x, n)
    n = math.pow(10, n or 0) 
    x = x * n
   if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
   return x / n
 end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 10, 'quintOut');
 
end