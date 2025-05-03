function onCreate()
	-- background shit
	makeLuaSprite('Homicide/chain-pixel', 'Homicide/chain-pixel', 200, -1000);
	setLuaSpriteScrollFactor('chain-pixel', 1, 1);
	scaleObject('Homicide/chain-pixel', 1.3, 1.4);

	makeLuaSprite('Homicide/white', 'Homicide/white', 200, -1000);
	setLuaSpriteScrollFactor('white', 1, 1);
	scaleObject('Homicide/white', 1.2, 1.2);

	makeAnimatedLuaSprite('CupheqdShid', 'cup/CUpheqdshid', -350, -193);
	objectPlayAnimation('CupheqdShid','Cupheadshit_gif instance', false)
	scaleObject('CupheqdShid', 1.6, 1.6)
	setObjectCamera('CupheqdShid','other')

	makeAnimatedLuaSprite('Low Sanity', 'Homicide/Low Sanity', -350, -193);
	objectPlayAnimation('Low Sanity','static', false);
	scaleObject('Low Sanity', 1.6, 1.6)
	setObjectCamera('Low Sanity','other')


	makeLuaSprite('pixel', 'bg/Sanity/pixel', 0, 0);
	setProperty('pixel.visible', false);
	setObjectCamera('pixel', 'other')

	makeLuaSprite('pixel-high', 'bg/Sanity/pixel-high', 0, 0);
	setProperty('pixel-high.visible', false);
	setObjectCamera('pixel-high', 'other')

	makeLuaSprite('pixel-medium', 'bg/Sanity/pixel-medium', 0, 0);
	setProperty('pixel-medium.visible', false);
	setObjectCamera('pixel-medium', 'other')

	addLuaSprite('pixel', false);
	addLuaSprite('pixel-medium', false);
	addLuaSprite('pixel-high', false);
	addLuaSprite('CupheqdShid', false);
	addLuaSprite('Low Sanity', false);
	setProperty('Low Sanity.visible', false);


	addLuaSprite('Homicide/chain-pixel', false);
	addLuaSprite('Homicide/void-pixel', false);
    setProperty('Homicide/void-pixel.visible', false);
	addLuaSprite('Homicide/white', false);
    setProperty('Homicide/white.visible', false);
	addLuaSprite('Homicide/black', true);
    setProperty('Homicide/black.visible', false);

    makeLuaSprite('Start', 'loadingScreens/SongIntro', 0, 0);
	scaleObject('Start', 1.0, 1.0);
	setObjectCamera('Start', 'other');
	addLuaSprite('Start', true);

	if not lowQuality then
            luaSpriteAddAnimationByPrefix('Homicide/Fire-pixel', 'Homicide/Fire-pixel', 'Fire-pixel', 24, true);
            luaSpriteAddAnimationByPrefix('Homicide/Eye', 'Homicide/Eye', 'Eye', 14, true);
            luaSpriteAddAnimationByPrefix('Homicide/Eye2', 'Homicide/Eye2', 'Eye', 7, true);
			addAnimationByPrefix('CupheqdShid','dance','Cupheadshit_gif instance 1',24,true);
			addAnimationByPrefix('Low Sanity','dance','static',24,true);
        end
end

function onCreatePost()

	makeLuaSprite('E-pixel', 'bg/E-pixel', 0, 0)
	setObjectCamera('E-pixel', 'other')

	makeLuaSprite('black', 'bg/black', 0, 0)
	setProperty('black.visible', false);
	setObjectCamera('black', 'other')

	makeLuaSprite('white', 'White', 0, 0)
	setProperty('white.visible', false);
	setObjectCamera('white', 'other')

	makeLuaSprite('black hud', 'bg/black', 0, 0)
	setProperty('black hud.visible', false);
	setObjectCamera('black hud', 'hud')


	addLuaSprite('E-pixel', true)
	addLuaSprite('black', true)
	addLuaSprite('white', false)
	addLuaSprite('black hud', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then

		if value1 == '1' then
		        setProperty('Low Sanity.visible', true);
                setProperty('CupheqdShid.visible', false);
		end

		if value1 == '2' then
		        setProperty('Low Sanity.visible', false);
                setProperty('CupheqdShid.visible', true);
		end

		if value1 == 'LightPixel' then
		        setProperty('E-pixel.visible', false);
		end

		if value1 == 'DarkPixel' then
		        setProperty('E-pixel.visible', true);
		end

		if value1 == 'Flash' then
		   setProperty('white.visible', true);
		end

		if value1 == 'UnFlash' then
		   setProperty('white.visible', false);
		end

		if value1 == 'Street' then
		        setProperty('Homicide/chain-pixel.visible', true);
		        setProperty('Homicide/void-pixel.visible', false);
		end

		if value1 == 'StreetVoid' then
		        setProperty('Homicide/chain-pixel.visible', false);
		        setProperty('Homicide/void-pixel.visible', true);
		end

		if value1 == 'None' then
		        setProperty('black.visible', true);
		        setProperty('E.visible', false);
		end

		if value1 == 'UnNone' then
		        setProperty('black.visible', false);
		        setProperty('E.visible', true);
		end

		if value1 == 'None HUD' then
		        setProperty('black hud.visible', true);
		        setProperty('E.visible', false);
		end

		if value1 == 'UnNone HUD' then
		        setProperty('black hud.visible', false);
		        setProperty('E.visible', true);
		end


		if value1 == 'Sanity High' then
	              setProperty('pixel-high.visible', true);
	              setProperty('pixel-medium.visible', false);
	              setProperty('pixel.visible', false);
		end

		if value1 == 'Sanity Medium' then
	              setProperty('pixel-high.visible', false);
	              setProperty('pixel-medium.visible', true);
	              setProperty('pixel.visible', false);
		end

		if value1 == 'Sanity None' then
	              setProperty('pixel-high.visible', false);
	              setProperty('pixel-medium.visible', false);
	              setProperty('pixel.visible', false);
		end
	end
end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 10, 'quintOut');
 
end
