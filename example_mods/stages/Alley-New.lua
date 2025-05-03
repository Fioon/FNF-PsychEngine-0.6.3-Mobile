function onCreate()
	-- background shit
	makeLuaSprite('Homicide/AlleyNew', 'Homicide/AlleyNew',-700,-100);
	setLuaSpriteScrollFactor('Homicide/AlleyNew', 1.0, 1.0);
	scaleObject('Homicide/AlleyNew', 1.1, 1.0);
	addLuaSprite('Homicide/AlleyNew', false);

	makeLuaSprite('Homicide/AlleyNewBottom', 'Homicide/AlleyNew',-700,-200);
	setLuaSpriteScrollFactor('Homicide/AlleyNewBottom', 1.0, 1.0);
	scaleObject('Homicide/AlleyNewBottom', 1.1, 1.0);
	addLuaSprite('Homicide/AlleyNewBottom', false);

	makeLuaSprite('Homicide/BFF', 'Homicide/BFF', 280, 420);
	setLuaSpriteScrollFactor('Homicide/BFF', 1.0, 1.0);
	scaleObject('Homicide/BFF', 0.9, 0.9);
	addLuaSprite('Homicide/BFF', false);

	makeLuaSprite('Homicide/Old VS HM/HM Stage Old', 'Homicide/Old VS HM/HM Stage Old', -800, -470);
	setLuaSpriteScrollFactor('Homicide/Old VS HM/HM Stage Old', 1.0, 1.0);
	scaleObject('Homicide/Old VS HM/HM Stage Old', 1.1, 1.1);
	addLuaSprite('Homicide/Old VS HM/HM Stage Old', false);
	setProperty('Homicide/Old VS HM/HM Stage Old.visible', false);

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

    makeLuaSprite('Start', 'loadingScreens/SongIntro', 0, 0);
	scaleObject('Start', 1.0, 1.0);
	setObjectCamera('Start', 'other');
	addLuaSprite('Start', true);

	if not lowQuality then
            addAnimationByPrefix('CupheqdShid','dance','Cupheadshit_gif instance 1',24,true);
            addAnimationByPrefix('Low Sanity','dance','static',24,true);
        end
end


function onCreatePost()
	makeLuaSprite('white', 'White', 0, 0)
	setProperty('white.visible', false);
	setObjectCamera('white', 'other')

	makeLuaSprite('E', 'bg/E', 0, 0)
	setObjectCamera('E', 'other')

	makeLuaSprite('black', 'bg/black', 0, 0)
	setProperty('black.visible', false);
	setObjectCamera('black', 'other')

	addLuaSprite('white', false)
	addLuaSprite('E', false)
	addLuaSprite('black', true)
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

		if value1 == 'BFF' then
		        setProperty('Homicide/BFF.visible', true);
		end

		if value1 == 'UnBFF' then
		        setProperty('Homicide/BFF.visible', false);
		end

		if value1 == 'Street' then
		        setProperty('Homicide/BFF.visible', true);
		        setProperty('Homicide/AlleyNew.visible', true);
		        setProperty('Homicide/AlleyNewBottom.visible', true);
	                setProperty('Homicide/Old VS HM/HM Stage Old.visible', false);
		end

		if value1 == 'StreetOld' then
		        setProperty('Homicide/BFF.visible', false);
		        setProperty('Homicide/AlleyNew.visible', false);
		        setProperty('Homicide/AlleyNewBottom.visible', false);
	                setProperty('Homicide/Old VS HM/HM Stage Old.visible', true);
		end

		if value1 == 'Flash' then
		   setProperty('white.visible', true);
		end

		if value1 == 'UnFlash' then
		   setProperty('white.visible', false);
		end

		if value1 == 'Light' then
		        setProperty('E.visible', false);
		end

		if value1 == 'Dark' then
		        setProperty('E.visible', true);
		end

		if value1 == 'None' then
		        setProperty('black.visible', true);
		        setProperty('E.visible', false);
		end

		if value1 == 'UnNone' then
		        setProperty('black.visible', false);
		        setProperty('E.visible', true);
		end

		if value1 == 'White' then
		        setProperty('white.visible', true);
		end

		if value1 == 'OFF' then
		        setProperty('white.visible', false);
		end
	end
end


function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 5, 'quintOut');
 
end
