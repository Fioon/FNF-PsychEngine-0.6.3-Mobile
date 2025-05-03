function onCreate()
	-- background shit
	makeAnimatedLuaSprite('Homicide/Fire', 'Homicide/Fire', -450, -800);
	objectPlayAnimation('Homicide/Fire','move',false)
	setLuaSpriteScrollFactor('Homicide/Fire', 0.7, 0.7);
	scaleObject('Homicide/Fire', 1.2, 1.2);

	makeLuaSprite('Homicide/sky', 'Homicide/sky', -350, -950);
	setLuaSpriteScrollFactor('Homicide/sky', 0.7, 0.7);
	scaleObject('Homicide/sky', 1.2, 1.2);

	makeLuaSprite('Homicide/street', 'Homicide/street', 0, -1000);
	setLuaSpriteScrollFactor('street', 1, 1);
	scaleObject('Homicide/street', 1.2, 1.2);

	makeLuaSprite('Homicide/streetverylow', 'Homicide/streetverylow', 0, -1000);
	setLuaSpriteScrollFactor('streetverylow', 1, 1);
	scaleObject('Homicide/streetverylow', 1.2, 1.2);

	makeLuaSprite('Homicide/white', 'Homicide/white', 0, -950);
	setLuaSpriteScrollFactor('white', 1, 1);
	scaleObject('Homicide/white', 1.2, 1.2);

	makeAnimatedLuaSprite('CupheqdShid', 'cup/CUpheqdshid',-350,-193);
	objectPlayAnimation('CupheqdShid','Cupheadshit_gif instance',false)
	scaleObject('CupheqdShid',1.6,1.6)
	setObjectCamera('CupheqdShid','other')

	makeAnimatedLuaSprite('Low Sanity', 'Homicide/Low Sanity',-350,-193);
	objectPlayAnimation('Low Sanity','static',false)
	scaleObject('Low Sanity',1.6,1.6)
	setObjectCamera('Low Sanity','other')


	addLuaSprite('CupheqdShid', false);
	addLuaSprite('Low Sanity', false);
	setProperty('Low Sanity.visible', false);


	addLuaSprite('Homicide/Fire', false);
    setProperty('Homicide/Fire.visible', false);
	addLuaSprite('Homicide/sky', false);
	addLuaSprite('Homicide/street', false);
	addLuaSprite('Homicide/streetverylow', false);
    setProperty('Homicide/streetverylow.visible', false);
	addLuaSprite('Homicide/white', false);
    setProperty('Homicide/white.visible', false);
	addLuaSprite('Homicide/black', true);
    setProperty('Homicide/black.visible', false);

    makeLuaSprite('Start', 'loadingScreens/SongIntro', 0, 0);
	scaleObject('Start', 1.0, 1.0);
	setObjectCamera('Start', 'other');
	addLuaSprite('Start', true);

	if not lowQuality then
            luaSpriteAddAnimationByPrefix('Homicide/Fire', 'Homicide/Fire', 'Fire', 50, true);
			addAnimationByPrefix('CupheqdShid','dance','Cupheadshit_gif instance 1',24,true);
			addAnimationByPrefix('Low Sanity','dance','static',24,true);
        end
end

function onCreatePost()
	makeLuaSprite('E', 'bg/E', 0, 0)
	setObjectCamera('E', 'other')

	makeLuaSprite('E-pixel', 'bg/E-pixel', 0, 0)
	setProperty('E-pixel.visible', false);
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


	addLuaSprite('E', false)
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

		if value1 == '3' then
		        setProperty('Low Sanity.visible', false);
                setProperty('CupheqdShid.visible', false);
		end

		if value1 == 'Light' then
		        setProperty('E.visible', false);
		end

		if value1 == 'Dark' then
		        setProperty('E.visible', true);
		end

		if value1 == 'Flash' then
		   setProperty('white.visible', true);
		end

		if value1 == 'UnFlash' then
		   setProperty('white.visible', false);
		end

		if value1 == 'ON' then
		        setProperty('Homicide/white.visible', false);
		        setProperty('Homicide/Fire.visible', true);
		        setProperty('Homicide/sky.visible', false);
		end

		if value1 == 'White' then
		        setProperty('Homicide/white.visible', true);
		        setProperty('Homicide/Fire.visible', false);
		        setProperty('Homicide/sky.visible', false);
		end

		if value1 == 'UnWhite' then
		        setProperty('Homicide/white.visible', false);
		        setProperty('Homicide/Fire.visible', false);
		        setProperty('Homicide/sky.visible', false);
		end

		if value1 == 'OFF' then
		        setProperty('Homicide/white.visible', false);
		        setProperty('Homicide/Fire.visible', false);
		        setProperty('Homicide/sky.visible', true);
		end

		if value1 == 'Street' then
		        setProperty('Homicide/street.visible', true);
		        setProperty('Homicide/streetverylow.visible', false);
		end

		if value1 == 'StreetVeryLow' then
		        setProperty('Homicide/street.visible', false);
		        setProperty('Homicide/streetverylow.visible', true);
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
	end
end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 10, 'quintOut');
 
end
