function onCreate()
if not lowQuality then
makeAnimatedLuaSprite("shader", "Homicide/st/static", 0, 0)
addAnimationByPrefix("shader", "shader", "staticFLASH", 24, true)
setGraphicSize('shader', 1280, 720)
setObjectCamera('shader', 'other')
objectPlayAnimation("shader", "shader", true)
setProperty('shader.alpha', 0.25);	
addLuaSprite("shader", false)

makeLuaSprite("overlay", "Homicide/st/overlay", 0, 0)
setGraphicSize('overlay', 1280, 720)
setObjectCamera('overlay', 'other')	
addLuaSprite("overlay", false)
end
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

		if value1 == 'Street' then
		        setProperty('shader.visible', true);
	                setProperty('overlay.visible', true);
		end

		if value1 == 'StreetOld' then
		        setProperty('shader.visible', false);
	                setProperty('overlay.visible', false);
		end
	end
end