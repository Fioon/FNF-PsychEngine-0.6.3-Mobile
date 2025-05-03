function onCreate()
	-- background shit
	makeLuaSprite('other stages/Hell/Sky', 'other stages/Hell/Sky', -600, -300);
	setLuaSpriteScrollFactor('other stages/Hell/Sky', 0.8, 0.8);

	makeLuaSprite('other stages/Hell/Back', 'other stages/Hell/Back', -600, -820);
	setLuaSpriteScrollFactor('other stages/Hell/Back', 0.7, 0.7);

	makeLuaSprite('other stages/Hell/Rock1', 'other stages/Hell/Rock1', -550, -470);
	setLuaSpriteScrollFactor('other stages/Hell/Rock1', 0.5, 0.5);

	makeLuaSprite('other stages/Hell/Rock2', 'other stages/Hell/Rock2', 890, -480);
	setLuaSpriteScrollFactor('other stages/Hell/Rock2', 0.5, 0.5);

	makeLuaSprite('other stages/Hell/groundstage-intro', 'other stages/Hell/groundstage-intro', -850, -335);
	setLuaSpriteScrollFactor('other stages/Hell/groundstage-intro', 1.0, 1.0);

	makeLuaSprite('other stages/Hell/groundstage', 'other stages/Hell/groundstage', -850, -335);
	setLuaSpriteScrollFactor('other stages/Hell/groundstage', 1.0, 1.0);

	makeLuaSprite('other stages/Hell/groundstage-front', 'other stages/Hell/groundstage-front', -850, -335);
	setLuaSpriteScrollFactor('other stages/Hell/groundstage-front', 1.0, 1.0);

	makeAnimatedLuaSprite('Homicide/Fire', 'Homicide/Fire', -620, -720)
	objectPlayAnimation('Homicide/Fire','move',false)
	setScrollFactor('Homicide/Fire', 0.8, 0.8);
	scaleObject('Homicide/Fire', 1.3, 1.3);
	removeLuaSprite('Homicide/Fire', false);

    makeLuaSprite('Start', 'loadingScreens/SongIntro', 0, 0);
	scaleObject('Start', 1.0, 1.0);
	setObjectCamera('Start', 'other');
	addLuaSprite('Start', true);


	addLuaSprite('Homicide/Fire', false);
	addLuaSprite('other stages/Hell/Sky', false);
	addLuaSprite('other stages/Hell/Back', false);
	addLuaSprite('other stages/Hell/Rock1', false);
	addLuaSprite('other stages/Hell/Rock2', false);
	addLuaSprite('other stages/Hell/groundstage-intro', false);
	addLuaSprite('other stages/Hell/groundstage', false);
	addLuaSprite('other stages/Hell/groundstage-front', true);

	if not lowQuality then
                luaSpriteAddAnimationByPrefix('Homicide/Fire', 'Homicide/Fire', 'Fire', 50, true);
	
        end
end

function onCreatePost()
	setProperty('mcm-firefront.visible', false);
	makeLuaSprite('E', 'bg/E', 0, 0)
	setObjectCamera('E', 'other')

	makeLuaSprite('black', 'bg/black', 0, 0)
	setProperty('black.visible', false);
	setObjectCamera('black', 'other')

	makeLuaSprite('white', 'White', 0, 0)
	setProperty('white.visible', false);
	setObjectCamera('white', 'other')

	makeLuaSprite('Fire Up', 'bg/Fire Up', 0, 0)
	setObjectCamera('Fire Up', 'other')

	makeLuaSprite('Fire Down', 'bg/Fire Down', 0, 0)
	setObjectCamera('Fire Down', 'other')

	addLuaSprite('E', false)
	addLuaSprite('black', true)
	addLuaSprite('white', false)
	addLuaSprite('Fire Up', false)
	addLuaSprite('Fire Down', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 

		if value1 == '3' then
			setProperty('Homicide/Fire.visible', false);
			setProperty('other stages/Hell/Sky.visible', false);
			setProperty('other stages/Hell/Back.visible', false);
			setProperty('other stages/Hell/Rock1.visible', false);
			setProperty('other stages/Hell/Rock2.visible', false);
			setProperty('other stages/Hell/groundstage-intro.visible', true);
			setProperty('other stages/Hell/groundstage.visible', false);
			setProperty('other stages/Hell/groundstage-front.visible', false);
			setProperty('Fire Up.visible', false);
			setProperty('Fire Down.visible', false);
			setProperty('E.visible', true);
            end

		if value1 == '2' then
			setProperty('Homicide/Fire.visible', false);
			setProperty('other stages/Hell/Sky.visible', true);
			setProperty('other stages/Hell/Back.visible', true);
			setProperty('other stages/Hell/Rock1.visible', true);
			setProperty('other stages/Hell/Rock2.visible', true);
			setProperty('other stages/Hell/groundstage-intro.visible', false);
			setProperty('other stages/Hell/groundstage.visible', true);
			setProperty('other stages/Hell/groundstage-front.visible', true);
			setProperty('Fire Up.visible', true);
			setProperty('Fire Down.visible', true);
			setProperty('E.visible', false);
            end

		if value1 == '1' then
			setProperty('Homicide/Fire.visible', true);
			setProperty('other stages/Hell/Sky.visible', true);
			setProperty('other stages/Hell/Back.visible', true);
			setProperty('other stages/Hell/Rock1.visible', true);
			setProperty('other stages/Hell/Rock2.visible', true);
			setProperty('other stages/Hell/groundstage-intro.visible', false);
			setProperty('other stages/Hell/groundstage.visible', true);
			setProperty('other stages/Hell/groundstage-front.visible', true);
			setProperty('Fire Up.visible', true);
			setProperty('Fire Down.visible', true);
			setProperty('E.visible', false);
		end

		if value1 == 'FuckOff' then
			setProperty('other stages/Hell/groundstage-front.visible', false);
		end

		if value1 == 'None' then
		        setProperty('black.visible', true);
		        setProperty('E.visible', false);
		end

		if value1 == 'UnNone' then
		        setProperty('black.visible', false);
		        setProperty('E.visible', true);
		end

		if value1 == 'Flash' then
		   setProperty('white.visible', true);
		end

		if value1 == 'UnFlash' then
		   setProperty('white.visible', false);
		end
	end
end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 10, 'quintOut');
 
end
