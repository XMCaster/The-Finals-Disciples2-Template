-- НАСТРОЙКИ

-- Ценность стека отряда в городе
local stackvalue = 0

-- Юниты стека (0 - без исключений; 1 - с исключениями)
local units = 1



-- КОД ШАБЛОНА

-- ФУНКЦИИ


function getScenarioVariables()
    return {
        { name = 'HIRE_UNIT_TIER_MAX', value = 4 },
		{ name = 'MULTIPLE_BUILD_CAPITAL', value = 1 },
		{ name = 'TIER_5_CITY_INCOME', value = goldvalue-100},			
    }
end



-- Или / или
function orr(what, what2)
	local radn = math.random(0,1)
	if radn == 0 then
	return what
	elseif radn == 1 then
	return what2
	end
end

-- субраса игрока
function getPlayerSubRace(race)
	if race == Race.Human then return Subrace.Human
	elseif race == Race.Dwarf then return Subrace.Dwarf
	elseif race == Race.Undead then return Subrace.Undead
	elseif race == Race.Heretic then return Subrace.Heretic
	elseif race == Race.Elf then return Subrace.Elf
	end
end

-- банка на 15
function b15()
	local radn = math.random(0,3)
	if radn == 0 then
	return 'g000ig0002' --зашита
	elseif radn == 1 then
	return 'g000ig0014' --атака
	elseif radn == 2 then
	return 'g000ig0011' --ини
	elseif radn == 3 then
	return 'g000ig0008' --точность
	end
end

-- пермо-эликсир на 5% за 400
function p05()
	local radn = math.random(0,4)
	if radn == 0 then
	return 'g001ig0309' -- Эликсир задиры +5ини
	elseif radn == 1 then
	return 'g001ig0313' -- Эликсир совершенствования +5урон
	elseif radn == 2 then
	return 'g001ig0311' -- Эликсир хладнокровия +5точности
	elseif radn == 3 then
	return 'g001ig0315' -- Зелье великана +5ОЗ
	elseif radn == 4 then
	return 'g001ig0307' -- Зелье стойкости +5брони
	end
end

-- родной талисман
function TalismanHome(race)
	sphmn = 'g000ig9101' -- Талисман Сквайра
	spdw = 'g001ig0265' -- Талисман кузнеца
	spun = 'g001ig0264' -- Талисман мертвеца
	sphr = 'g001ig0267' -- Талисман еретика
	spelf = 'g001ig0266' -- Талисман лесного воина
	
	if race == Race.Human then return sphmn
	elseif race == Race.Dwarf then return spdw
	elseif race == Race.Undead then return spun
	elseif race == Race.Heretic then return sphr
	elseif race == Race.Elf then return spelf
	end
end

-- реликвия 400
function jewel()
	local radn = math.random(0,9)
	if radn == 0 then
	return 'g001ig0493' -- Книга божественных даров +арты
	elseif radn == 1 then
	return 'g001ig0494' -- Книга странника +сапоги
	elseif radn == 2 then
	return 'g001ig0428' -- Кожаные эльфийские доспехи (Реликвия) +45оз
	elseif radn == 3 then
	return 'g000ig4006' -- Книга тайного знания +сферы
	elseif radn == 4 then
	return 'g000ig4006' -- Книга тайного знания +сферы +шанс
	elseif radn == 5 then
	return 'g001ig0610' -- Оковы долга (Реликвия)
	elseif radn == 6 then
	return 'g001ig0422' -- Кровавый покров (Реликвия)
	elseif radn == 7 then
	return 'g001ig0423' -- Латы Спасителя (Реликвия)
	elseif radn == 8 then
	return 'g001ig0099' -- Перчатки дуэлянта (Реликвия)
	elseif radn == 9 then
	return 'g000ig4007' -- Медицинский трактат
	end
end

-- сапоги 300
function boots()
	local radn = math.random(0,6)
	if radn == 0 then
	return 'g001ig0108' -- Гномьи сапоги
	elseif radn == 1 then
	return 'g001ig0110' -- Легкие сапоги
	elseif radn == 2 then
	return 'g001ig0105' -- Литейные сапоги
	elseif radn == 3 then
	return 'g001ig0107' -- Сапоги ветров
	elseif radn == 4 then
	return 'g001ig0109' -- Сапоги жизни
	elseif radn == 5 then
	return 'g001ig0106' -- Сапоги каменщика
	elseif radn == 6 then
	return 'g001ig0113' -- Укрепленные сапоги
	end
end

-- артефакт 300+
function artifact()
	local radn = math.random(0,9)
	if radn == 0 then
	return 'g000ig2001' -- Рунный камень (Артефакт)
	elseif radn == 1 then
	return 'g001ig0611' -- Цепи жертвенности (Артефакт)
	elseif radn == 2 then
	return 'g000ig3001' -- Гномьи наручи (Артефакт)
	elseif radn == 3 then
	return 'g001ig0100' -- Цеп Хана (Артефакт)
	elseif radn == 4 then
	return 'g000ig3017' -- Кинжал Вампиризма (Артефакт) 500
	elseif radn == 5 then
	return 'g001ig0182' -- Счастливая кость (Артефакт) 500
	elseif radn == 6 then
	return 'g001ig0418' -- Руна защиты Фрейра (Артефакт) 400
	elseif radn == 7 then
	return 'g001ig0582' -- Камень врат (Артефакт)
	elseif radn == 8 then
	return 'g001ig0594' -- Щит телохранителя (Артефакт)
	elseif radn == 9 then
	return 'g002ig0001' -- Потайной кинжал (Артефакт)
	end
end
-- сферы 200
function orb()
	local radn = math.random(0,11)
	if radn == 0 then
	return 'g001ig0133' -- Сфера Брони I
	elseif radn == 1 then
	return 'g001ig0446' -- Сфера Вампиризма I
	elseif radn == 2 then
	return 'g000ig9017' -- Сфера Восстановления
	elseif radn == 3 then
	return 'g001ig0471' -- Сфера Охотника
	elseif radn == 4 then
	return 'g001ig0157' -- Сфера очищения
	elseif radn == 5 then
	return 'g001ig0450' -- Сфера Урона I
	elseif radn == 6 then
	return 'g001ig0295' -- Сфера Замедления
	elseif radn == 7 then
	return 'g001ig0458' -- Сфера Каменного проклятия
	elseif radn == 8 then
	return 'g000ig9033' -- Сфера Чумы
	elseif radn == 9 then
	return 'g001ig0302' -- Сфера Шторма
	elseif radn == 10 then
	return 'g000ig9022' -- Сфера Углей
	elseif radn == 11 then
	return 'g001ig0192' -- Сфера Пыток
	end
end

-- субраса игрока
function getPlayerSubRace(race)
	if race == Race.Human then return Subrace.Human
	elseif race == Race.Dwarf then return Subrace.Dwarf
	elseif race == Race.Undead then return Subrace.Undead
	elseif race == Race.Heretic then return Subrace.Heretic
	elseif race == Race.Elf then return Subrace.Elf
	end
end

-- СВОДНЫЕ ТАБЛИЦЫ

-- Вернет таблицу с описанием Респа
function getPlayerZoneStart(zoneId, playerRace, zoneSize)
	return {
		id = zoneId,
		type = Zone.PlayerStart,
		border = Border.Closed,
		race = playerRace,
		size = zoneSize,
	}
end

-- Город

function zoneTown(race)
	return {
	{
		tier = 5,
		owner = race,
			garrison = { -- столица
				subraceTypes = { getPlayerSubRace(race) },
				value = { min = stackvalue, max = stackvalue}, 
				loot = {
					items = {
						{ id = 'g002ig0004', min = 1, max = 1 }, --Эликсир восхищения +2 лидерста (было g001ig0506 - настойка оратора +1 лидерство)
						{ id = 'g001ig0527', min = 1, max = 1 }, --Зелье постижения +релики
						{ id = 'g001ig0530', min = 1, max = 1 }, --зелье посмертного зова +талики
						{ id = p05(), min = 1, max = 1 }, -- пермо 5						
						{ id = jewel(), min = 1, max = 1 }, --реликвия 400 (8)
						{ id = artifact(), min = 1, max = 1 }, -- артефакт 300 (7)
						{ id = boots(), min = 1, max = 1 }, -- сапоги 300 (7)
						orr({ id = TalismanHome(race), min = 1, max = 1 }, orr({ id = 'g000ig9105', min = 1, max = 1 }, { id = 'g000ig9131', min = 1, max = 1 })), --талик

						{ id = orb(), min = 1, max = 1 }, -- сферы 200 (8)

						{ id = b15(), min = 1, max = 1 }, -- банка 15
						{ id = b15(), min = 1, max = 1 }, -- банка 15
						orr({ id = b15(), min = 1, max = 1 }, { id = 'g001ig0560', min = 1, max = 1 }), -- банка 15 / зелье провакатора

						{ id = 'g000ig0001', min = 1, max = 1 }, --рес
						{ id = 'g000ig0006', min = 1, max = 1 }, --хил100
						{ id = 'g001ig0180', min = 7, max = 7 }, --хил25

					}
				},
			},
				stack = {
					subraceTypes = {getPlayerSubRace(race)},
					value = {min = randleader, max = randleader}, --Случайный лидер
					loot = {}
						}
	}
	}
end

-- Пустые зоны для симметрии
function getPlayerZoneEmpty(zoneId, zoneSize)
	return {
		id = zoneId,
		type = Zone.Treasure,
		size = zoneSize,
		border = Border.Closed,		
	}
end

-- Зона столкновения
function getPlayerZoneConnect(zoneId, playerRace, zoneSize)
	return {
		id = zoneId,
		type = Zone.Treasure,
		size = zoneSize,
		race = playerRace,
		border = Border.Open,
		towns = zoneTown(playerRace),

	}
end
-------------------------------------------------


-- ЗОНЫ:
function getZones(races)

local p1 = 13
local p2 = 14
local em3 = 15
local em4 = 16
local em5 = 17
local em6 = 18
local em7 = 19
local em8 = 20
local em9 = 21
local em10 = 22
local pvp11 = 0
local pvp12 = 1

	local zones = {} 
	zones[1] = getPlayerZoneStart(p1, races[1], 10) -- 
	zones[2] = getPlayerZoneStart(p2, races[2], 10) -- 
	zones[3] = getPlayerZoneEmpty(em3, 10) --
	zones[4] = getPlayerZoneEmpty(em4, 10) --
	zones[5] = getPlayerZoneEmpty(em5, 10) --
	zones[6] = getPlayerZoneEmpty(em6, 10) --
	zones[7] = getPlayerZoneEmpty(em7, 10) --
	zones[8] = getPlayerZoneConnect(pvp11, races[1], 10) -- 
	zones[9] = getPlayerZoneConnect(pvp12, races[2], 10) -- 


	return zones
end

-- ПРОХОД
function getZoneConnections()
	return {	
		{from = 0, to = 1, size = 10},
	}
end


-- Вернет описание содержимого сценария для генератора - ОК
function getTemplateContents(races, custom, parameters, customParameters)
	local contents = {}
	if parameters then
			goldvalue = parameters[1] * 1 -- Значение золота для передачи в доход за Т5 годод
			randleader = (parameters[2]-1) * 70 -- Рандомный лидер
	end
	contents.zones = getZones(races)
	contents.connections = getZoneConnections()
	contents.scenarioVariables = getScenarioVariables()
	return contents
end

-- ШАБЛОН
local nametemp = 'The Finals 1.0'


template = {
	name = 'The Finals 1.0',
	description = 'Фановый шаблон с разблокированным строительством и наймом из города юнитов до Т4 для тестирования финалок. \n Строим ветки, нанимаем отряды в Т5 городе и выходим финалиться! \n Без воров и жезловиков, 1 юнит - одна банка на 15%. \n \n                                                                                 ~by XMCaster',
	minSize = 48,
	maxSize = 48,
	maxPlayers = 2,
	startingGold = 0,
	startingNativeMana = 0,
	roads = 100,
	forest = 60,
customParameters = {
        {
            name = "Золото",
            unit = "",
            default = 5000,
            min = 1000,
            max = 9500,
            step = 500
        },

        {
			name = "Случ.лидер",
			values = {
			"Нет",
			"Да",
					},
			default = 1,
        }
		},
		
forbiddenUnits = {

        'g000uu0022', --Архангел
        'g000uu0023', --Вор
        'g000uu5300', --Вор
        'g000uu0047', --Старейшина
        'g000uu0048', --Вор
        'g000uu5301', --Вор
        'g000uu0073', --Баронесса
        'g000uu0074', --Вор
        'g000uu5302', --Вор
        'g000uu0099', --Баньши
        'g000uu0100', --Вор
        'g000uu5303', --Вор
        'g000uu8012', --Мудрец
        'g000uu8013', --Вор
        'g000uu5304', --Вор
		'g000uu5101', --Крестьянин

},

forbiddenItems = {
},
	
	getContents = getTemplateContents
	
	
}