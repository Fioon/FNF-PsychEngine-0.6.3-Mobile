function onCreate()
	-- background shit
	makeLuaSprite('Homicide/City-sky', 'Homicide/City-sky', -600, -550);
	setLuaSpriteScrollFactor('Homicide/City-sky', 0.5, 0.5);
	scaleObject('Homicide/City-sky', 2.2, 2.2);

	makeLuaSprite('Homicide/City-road', 'Homicide/City-road', -670, 650);
	setLuaSpriteScrollFactor('City-road', 1, 1);
	scaleObject('Homicide/City-road', 2.2, 2.2);

	makeLuaSprite('Homicide/City', 'Homicide/City', -670, -650);
	setLuaSpriteScrollFactor('City', 1, 1);
	scaleObject('Homicide/City', 2.2, 2.2);

	makeLuaSprite('Homicide/white', 'Homicide/white', -600, -950);
	setLuaSpriteScrollFactor('white', 1, 1);
	scaleObject('Homicide/white', 1.2, 1.2);

	makeAnimatedLuaSprite('CupheqdShid', 'cup/CUpheqdshid', -350,- 193);
	objectPlayAnimation('CupheqdShid','Cupheadshit_gif instance',false)
	scaleObject('CupheqdShid', 1.6, 1.6)
	setObjectCamera('CupheqdShid','other')

	makeAnimatedLuaSprite('Low Sanity', 'Homicide/Low Sanity', -350, -193);
	objectPlayAnimation('Low Sanity','static',false)
	scaleObject('Low Sanity', 1.6, 1.6)
	setObjectCamera('Low Sanity','other')


	addLuaSprite('CupheqdShid', false);
	addLuaSprite('Low Sanity', false);
	setProperty('Low Sanity.visible', false);


	addLuaSprite('Homicide/City-sky', false);
	addLuaSprite('Homicide/City-road', false);
	addLuaSprite('Homicide/City', false);
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
			addAnimationByPrefix('CupheqdShid','dance','Cupheadshit_gif instance 1',24, true);
			addAnimationByPrefix('Low Sanity','dance','static',24, true);
        end
end

function onCreatePost()
	makeLuaSprite('Nightmare', 'bg/Nightmare', 0, 0)
	setProperty('Nightmare.visible', false);
	setObjectCamera('Nightmare', 'other')

	makeLuaSprite('E', 'bg/E', 0, 0)
	setObjectCamera('E', 'other')

	makeLuaSprite('E2', 'bg/E2', 0, 0)
	setProperty('E2.visible', false);
	setObjectCamera('E2', 'other')

	makeLuaSprite('black', 'bg/black', 0, 0)
	setProperty('black.visible', false);
	setObjectCamera('black', 'other')

	makeLuaSprite('white', 'White', 0, 0)
	setProperty('white.visible', false);
	setObjectCamera('white', 'other')

	makeLuaSprite('black hud', 'bg/black', 0, 0)
	setProperty('black hud.visible', false);
	setObjectCamera('black hud', 'hud')


	addLuaSprite('Nightmare', false)
	addLuaSprite('E', false)
	addLuaSprite('E2', false)
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

		if value1 == 'Flash' then
		   setProperty('white.visible', true);
		end

		if value1 == 'UnFlash' then
		   setProperty('white.visible', false);
		end

		if value1 == 'Shader ON' then
		        setProperty('E.visible', true);
		end

		if value1 == 'Shader OFF' then
		        setProperty('E.visible', false);
		end

		if value1 == 'Circle ON' then
		        setProperty('E2.visible', true);
		end

		if value1 == 'Circle OFF' then
		        setProperty('E2.visible', false);
		end

		if value1 == 'White' then
		        setProperty('Homicide/white.visible', true);
		        setProperty('Homicide/City-sky.visible', false);
		        setProperty('Homicide/City-road.visible', false);
		end

		if value1 == 'OFF' then
		        setProperty('Homicide/white.visible', false);
		        setProperty('Homicide/City-sky.visible', true);
		        setProperty('Homicide/City-road.visible', true);
		end

		if value1 == 'Street' then
		        setProperty('Homicide/City.visible', true);
		        setProperty('Homicide/Citylow.visible', false);
		        setProperty('Homicide/Cityverylow.visible', false);
	                setProperty('Homicide/Old VS HM/HM Stage Old.visible', false);
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

		if value1 == 'Nightmare' then
	              setProperty('Nightmare.visible', true);
		end

		if value1 == 'UnNightmare' then
	              setProperty('Nightmare.visible', false);
		end
	end
end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 10, 'quintOut');
 
end
