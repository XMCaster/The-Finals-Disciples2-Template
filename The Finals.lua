-- НАСТРОЙКИ

local descrtemp = 'Фановый шаблон с разблокированным строительством и наймом из города юнитов выше Т1 для тестирования финалок. \n Продаем слитки золота и шары с маной, строим ветки, \n нанимаем отряды в Т5 городе и выходим финалиться! \n Без воров, жезловиков, и заклинаний! 1 юнит - одна банка на 15%. \n                                                                                           ~by XMCaster'

-- Юниты стека (0 - без исключений; 1 - с исключениями)
local units = 1

-- КОД ШАБЛОНА

-- ФУНКЦИИ


function getScenarioVariables()
    return {
        { name = 'HIRE_UNIT_TIER_MAX', value = maxtier },
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

function perk()
	local radn = math.random(0,1)
	if radn == 0 then
	return 'g001ig0529' --Сферы 
	elseif radn == 1 then
	return 'g001ig0525' --Артефакты 
	end
end

-- артефакт сильный
function artifact1()
	local radn = math.random(0,18)
	if radn == 0 then
	return 'g000ig2005' --Гравированная диадема (Артефакт) 
	elseif radn == 1 then
	return 'g001ig0102' --Коготь Пожирателя (Артефакт) 
	elseif radn == 2 then
	return 'g001ig0179' --Боевая коса (Артефакт) 
	elseif radn == 3 then
	return 'g002ig0017' --Копье Ангела (Артефакт) 
	elseif radn == 4 then
	return 'g001ig0410' --Дьявольская булава (Артефакт) 
	elseif radn == 5 then
	return 'g001ig0488' --Кольцо Несгибаемого стража (Артефакт) 
	elseif radn == 6 then
	return 'g001ig0411' --Грань реальности (Артефакт) 
	elseif radn == 7 then
	return 'g001ig0585' --Кольцо создателя (Артефакт) 
	elseif radn == 8 then
	return 'g001ig0046' --Кровь Владыки (Артефакт) 
	elseif radn == 9 then
	return 'g000ig3006' --Кольцо веков (Артефакт) 
	elseif radn == 10 then
	return 'g001ig0174' --Божественный потир (Артефакт) 
	elseif radn == 11 then
	return 'g001ig0413' --Корни триббога (Артефакт) 
	elseif radn == 12 then
	return 'g000ig2004' --Рог всеведенья (Артефакт) 
	elseif radn == 13 then
	return 'g000ig3004' --Рунический клинок (Артефакт) 
	elseif radn == 14 then
	return 'g000ig9035' --Слеза Мортис (Артефакт) 
	elseif radn == 15 then
	return 'g001ig0060' --Тысяча чешуек (Артефакт) 
	elseif radn == 16 then
	return 'g001ig0415' --Руна кары Тьяцци (Артефакт) 
	elseif radn == 17 then
	return 'g001ig0124' --Клинок Возвышенного (Артефакт) 
	elseif radn == 18 then
	return 'g000ig3003' --Кольцо силы (Артефакт) 
	end
end

-- артефакт слабый
function artifact2()
	local radn = math.random(0,9)
	if radn == 0 then
	return 'g000ig3001' --Гномьи наручи (Артефакт) 
	elseif radn == 1 then
	return 'g001ig0609' --Загробный фонарь (Артефакт) 
	elseif radn == 2 then
	return 'g001ig0582' --Камень врат (Артефакт) 
	elseif radn == 3 then
	return 'g000ig3017' --Кинжал Вампиризма (Артефакт) 
	elseif radn == 4 then
	return 'g002ig0001' --Потайной кинжал (Артефакт) 
	elseif radn == 5 then
	return 'g001ig0418' --Руна защиты Фрейра (Артефакт) 
	elseif radn == 6 then
	return 'g000ig2002' --Святая чаша (Артефакт) 
	elseif radn == 7 then
	return 'g001ig0182' --Счастливая кость (Артефакт) 
	elseif radn == 8 then
	return 'g001ig0100' --Цеп Хана (Артефакт) 
	elseif radn == 9 then
	return 'g001ig0611' --Цепи жертвенности (Артефакт)
	end
end

-- ботинки
function boots()
	local radn = math.random(0,1)
	if radn == 0 then
	return 'g001ig0112' --Крылья ангела 
	elseif radn == 1 then
	return 'g001ig0115' --Железная поступь 
	end
end

-- знамя
function banner()
	local radn = math.random(0,5)
	if radn == 0 then
	return 'g001ig0424' --Длани ангела (Реликвия) 
	elseif radn == 1 then
	return 'g001ig0429' --Одеяния из шкуры зверя (Реликвия) 
	elseif radn == 2 then
	return 'g001ig0430' --Роба убийцы (Реликвия) 
	elseif radn == 3 then
	return 'g001ig0104' --Зуб людоеда (Реликвия) 
	elseif radn == 4 then
	return 'g001ig0037' --Шлем проклятого (Реликвия) 
	elseif radn == 5 then
	return 'g001ig0427' --Нагрудник Стража (Реликвия)
	end
end

-- реликвия
function jewel()
	local radn = math.random(0,4)
	if radn == 0 then
	return 'g001ig0375' --Знамя наследия 
	elseif radn == 1 then
	return 'g000ig1005' --Знамя быстроты 
	elseif radn == 2 then
	return 'g000ig1001' --Знамя защиты 
	elseif radn == 3 then
	return 'g000ig1007' --Знамя силы 
	elseif radn == 4 then
	return 'g000ig1003' --Знамя сражения
	end
end

-- сфера сильная
function orb1()
	local radn = math.random(0,4)
	if radn == 0 then
	return 'g000ig9039' --Сфера Паралича 
	elseif radn == 1 then
	return 'g000ig9006' --Сфера Окаменения 
	elseif radn == 2 then
	return 'g001ig0136' --Сфера брони III 
	elseif radn == 3 then
	return 'g001ig0462' --Сфера направленного ослабления II 
	elseif radn == 4 then
	return 'g000ig9043' --Сфера ярости
	end
end

-- сфера слабая
function orb2()
	local radn = math.random(0,4)
	if radn == 0 then
	return 'g001ig0467' --Сфера бури 
	elseif radn == 1 then
	return 'g001ig0478' --Сфера Переохлаждения 
	elseif radn == 2 then
	return 'g000ig9024' --Сфера Жажды 
	elseif radn == 3 then
	return 'g001ig0176' --Сфера Вампиризма II 
	elseif radn == 4 then
	return 'g001ig0134' --Сфера Урона II
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

function getTir5BuildngsOff(race) -- Заглушка для ограничения построек. Указывается постройка того же типа, но другой расы, чтобы ограничить отстройку зданий
	if race == Race.Human then
		if maxtier == 2 then
		b = {'g000bb0076', -- т3 воин нежити
			'g000bb0082', -- т3 стрелок нежити
			'g000bb0084', -- т3 маг нежити
			'g000bb0093'} -- т3 поддержка нежитти
        		end
        			
		if maxtier == 3 then
		b = {'g000bb0077', -- т4 воин нежити
			'g000bb0130', -- т4 стрелок нежити
			'g000bb0087', -- т4 маг нежити
			'g000bb0095'} -- т4 поддержка нежитти
        		end

		if maxtier == 4 then
		b = {'g000bb0078', -- т5 воин нежити
			'g000bb0088'} -- т5 маг нежити
        		end
		if maxtier == 5 then b = {} end
	end
	
	if race == Race.Dwarf then
		if maxtier == 2 then
		b = {'g000bb0076', -- т3 воин нежити
			'g000bb0082', -- т3 стрелок нежити
			'g000bb0084', -- т3 маг нежити
			'g000bb0093'} -- т3 поддержка нежитти
        		end
        			
		if maxtier == 3 then
		b = {'g000bb0077', -- т4 воин нежити
			'g000bb0130', -- т4 стрелок нежити
			'g000bb0087', -- т4 маг нежити
			'g000bb0095'} -- т4 поддержка нежитти
        		end

		if maxtier == 4 then
		b = {'g000bb0078', -- т5 воин нежити
			'g000bb0127'} -- т5 поддержка нежити
        		end
		if maxtier == 5 then b = {} end
	end

	if race == Race.Heretic then
		if maxtier == 2 then
		b = {'g000bb0076', -- т3 воин нежити
			'g000bb0082', -- т3 стрелок нежити
			'g000bb0084', -- т3 маг нежити
			'g000bb0093'} -- т3 поддержка нежитти
        		end
        			
		if maxtier == 3 then
		b = {'g000bb0077', -- т4 воин нежити
			'g000bb0130', -- т4 стрелок нежити
			'g000bb0087', -- т4 маг нежити
			'g000bb0095'} -- т4 поддержка нежитти
        		end

		if maxtier == 4 then
		b = {'g000bb0088', -- т5 маг нежити
			'g000bb0127'} -- т5 поддержка нежити
        		end
		if maxtier == 5 then b = {} end
		
	end

	if race == Race.Elf then
		if maxtier == 2 then
		b = {'g000bb0076', -- т3 воин нежити
			'g000bb0082', -- т3 стрелок нежити
			'g000bb0084', -- т3 маг нежити
			'g000bb0093'} -- т3 поддержка нежитти -- !!! НЕ РАБОТАЕТ ОГРАНИЧЕНИЕ ПОСТРОЙКИ т3 ПТИЦЫ !!!
        		end
        			
		if maxtier == 3 then
		b = {'g000bb0077', -- т4 воин нежити
			'g000bb0130', -- т4 стрелок нежити
			'g000bb0087', -- т4 маг нежити
			'g000bb0095'} -- т4 поддержка нежитти
        		end

		if maxtier == 4 then
		b = {'g000bb0127'} -- т5 поддержка нежити !!! НЕ РАБОТАЕТ ОГРАНИЧЕНИЕ ПОСТРОЙКИ т5 СТРЕЛКОВ, ТАК КАК У ДРУГИХ РАС НЕ СУЩЕСТВУЕТ т5 СТРЕЛКОВ !!!
        		end
		if maxtier == 5 then b = {} end
		
	end
	
	if race == Race.Undead then
		if maxtier == 2 then
		b = {'g000bb0002', -- т3 воин империи
			'g000bb0105', -- т3 стрелок эльфов
			'g000bb0015', -- т3 маг империи
			'g000bb0113'} -- т3 поддержка эльфов
        		end
        			
		if maxtier == 3 then
		b = {'g000bb0003', -- т4 воин империи
			'g000bb0121', -- т4 стрелок эльфов
			'g000bb0143', -- т4 маг империи
			'g000bb0114'} -- т4 поддержка эльфов
        		end

		if maxtier == 4 then
		b = {'g000bb0004', -- т5 воин империи
			'g000bb0154', -- т5 маг империи
			'g000bb0115'} -- т5 поддержка эльфов
        		end
		if maxtier == 5 then b = {} end
		
	end

	return b
end


-- Стартовые зоны
function getPlayerZoneStart(zoneId, playerRace, zoneSize)
	return {
		id = zoneId,
		type = Zone.PlayerStart,
		border = Border.Closed,
		race = playerRace,
		size = zoneSize,
		--stacks = 	{
		--	zmStack(playerRace)
		--			},
		merchants = zoneMerch1(zmStack(playerRace)),
		
		capital = 	{
			aiPriority = 0,
			gapMask = 15,
			guardian = false,
			garrison = { -- столица
        subraceTypes = { Subrace.Neutral },
        value = { min = 1000, max = 1000 },
        		},	 
			buildings = getTir5BuildngsOff(playerRace),
        	}
			}
end

-- Город Хоста
function zoneTown1(race)
	return {
	{
		tier = 5,
		owner = race,
			garrison = { -- город т5
        subraceTypes = { getPlayerSubRace(race) },
        value = { min = 0, max = 0}, 
        loot = {
        	items = {
        		{ id = 'g002ig0004', min = 1, max = 1 }, --Эликсир восхищения +2 лидерста (было g001ig0506 - настойка оратора +1 лидерство)
        		{ id = 'g001ig0527', min = 1, max = 1 }, --Тайное знание
        		{ id = 'g001ig0526', min = 1, max = 1 }, --Знаменосец
        		{ id = 'g001ig0528', min = 1, max = 1 }, --Походное снаряжение
        		{ id = perk(), min = 1, max = 1 }, -- Артефакты/Сферы
        		{ id = artifact1(), min = 1, max = 1 }, -- артефакт сильный
        		{ id = artifact2(), min = 1, max = 1 }, -- артефакт слабый
        		{ id = boots(), min = 1, max = 1 }, -- ботинки
        		{ id = banner(), min = 1, max = 1 }, -- знамя
        		{ id = jewel(), min = 1, max = 1 }, -- реликвия
        		{ id = orb1(), min = 1, max = 1 }, -- сфера сильная
        		{ id = orb2(), min = 1, max = 1 }, -- сфера слабая
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
				{ id = 'g001ig0355', min = 1, max = 1 }, -- защита от обычного урона
				{ id = 'g000ig0018', min = 1, max = 1 }, -- Целебная мазь
				{ id = 'g000ig0006', min = 1, max = 1 }, -- Эликсир восстановления
				{ id = 'g000ig0001', min = 1, max = 1 }, -- Эликсир жизни
				{ id = 'g001ig0180', min = 10, max = 10 }, -- Мешочек трав

        	}
        },
			},
        stack = {
        	subraceTypes = {getPlayerSubRace(race)},
        	value = {min = randleader1, max = randleader1}, --Случайный лидер Хостта
        	loot = {}
        		}
	}
	}
end


-- Город Гостя
function zoneTown2(race)
	return {
	{
		tier = 5,
		owner = race,
			garrison = { -- город т5
        subraceTypes = { getPlayerSubRace(race) },
        value = { min = 0, max = 0}, 
        loot = {
        	items = {
        		{ id = 'g002ig0004', min = 1, max = 1 }, --Эликсир восхищения +2 лидерста (было g001ig0506 - настойка оратора +1 лидерство)
        		{ id = 'g001ig0527', min = 1, max = 1 }, --Тайное знание
        		{ id = 'g001ig0526', min = 1, max = 1 }, --Знаменосец
        		{ id = 'g001ig0528', min = 1, max = 1 }, --Походное снаряжение
        		{ id = perk(), min = 1, max = 1 }, -- Артефакты/Сферы
        		{ id = artifact1(), min = 1, max = 1 }, -- артефакт сильный
        		{ id = artifact2(), min = 1, max = 1 }, -- артефакт слабый
        		{ id = boots(), min = 1, max = 1 }, -- ботинки
        		{ id = banner(), min = 1, max = 1 }, -- знамя
        		{ id = jewel(), min = 1, max = 1 }, -- реликвия
        		{ id = orb1(), min = 1, max = 1 }, -- сфера сильная
        		{ id = orb2(), min = 1, max = 1 }, -- сфера слабая
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
        		{ id = b15(), min = 1, max = 1 }, -- банка на 15
				{ id = 'g001ig0355', min = 1, max = 1 }, -- защита от обычного урона
				{ id = 'g000ig0018', min = 1, max = 1 }, -- Целебная мазь
				{ id = 'g000ig0006', min = 1, max = 1 }, -- Эликсир восстановления
				{ id = 'g000ig0001', min = 1, max = 1 }, -- Эликсир жизни
				{ id = 'g001ig0180', min = 10, max = 10 }, -- Мешочек трав

        	}
        },
			},
        stack = {
        	subraceTypes = {getPlayerSubRace(race)},
        	value = {min = randleader2, max = randleader2}, --Случайный лидер Гостя
        	loot = {}
        		}
	}
	}
end

-- Лавка
function zoneMerch1(stack)
return {
	{
		guard = stack,
		goods = {
			itemTypes = { Item.Scroll },
			value = { min = 0, max = 0 },
			itemValue = { min = 0, max = 0 },
			items = {
        {},
			}
		},
	}
}
end

-- преобразует таблицу из { key = N } в массив { keyN1, keyN2 ... keyNx }
function convertN(tbl)
	local result = {}
	for k, n in pairs(tbl) do
		for _=1,n,1 do
			table.insert(result, k)
		end
	end
	return result
end

local workers_c_data = {
	{ name = 'Кастер', id = 'g000uu8298' },
	{ name = 'Юджин', id = 'g000uu8107' },
	{ name = 'Мурка', id = 'g000uu7532' },
	{ name = 'Тимум', id = 'g000uu5236' },
	{ name = 'Как ты сюда попал?', id = 'g000uu6004' },
	{ name = 'Иори', id = 'g000uu7535' }
}

--Торговцы игроков
function zmStack(playerRace)
	return {
		count = 1,
		aiPriority = 0,
		value = { min = 1, max = 1 },
		owner = playerRace,
		name = workers_c_data[playerRace+1]['name'],
		leaderIds = { workers_c_data[playerRace+1]['id'] },
		loot = {
        itemTypes = { },
        value = { min = 0, max = 0 },
        items = {
        			{ id = 'g001ig0090', min = goldbars, max = goldbars },
        			{ id = 'g001ig0481', min = 1, max = 15 },
        			{ id = 'g001ig0485', min = 1, max = 15 },
        			{ id = 'g001ig0482', min = 1, max = 15 },
        			{ id = 'g001ig0483', min = 1, max = 15 },
        			{ id = 'g001ig0484', min = 1, max = 15 }
        		}
        },
		leaderModifiers = convertN({
			g040um0279 = 1, -- Ничто
			g000um9034 = 5, -- -10% ОД
			g201um9212 = 100, -- +1 к очкам движения
			g000um9032 = 5, -- -1 лидерство
			g201um9037 = 10, -- -1 радиус обзора
			g201um9042 = 1, -- -бонус дорог
			g000um9030 = 1, -- неподкупность
			g070um0298 = 1, -- иммунитет к магии
		})
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

-- Зона столкновения1
function getPlayerZoneConnect1(zoneId, playerRace, zoneSize)
	return {
		id = zoneId,
		type = Zone.Treasure,
		size = zoneSize,
		race = playerRace,
		border = Border.Open,
		towns = zoneTown1(playerRace),

	}
end

-- Зона столкновения2
function getPlayerZoneConnect2(zoneId, playerRace, zoneSize)
	return {
		id = zoneId,
		type = Zone.Treasure,
		size = zoneSize,
		race = playerRace,
		border = Border.Open,
		towns = zoneTown2(playerRace),

	}
end
-------------------------------------------------


-- ЗОНЫ:
function getZones(races)

local p1 = 36
local p2 = 61
local em3 = 87
local em4 = 113
local em5 = 138
local em6 = 164
local em7 = 189
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
	zones[8] = getPlayerZoneConnect1(pvp11, races[1], 10) -- 
	zones[9] = getPlayerZoneConnect2(pvp12, races[2], 10) -- 


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
			goldbars = parameters[1] * 1
			goldvalue = parameters[2] * 1 -- Значение золота для передачи в доход за Т5 годод
			maxtier = parameters[3] * 1
			randleader1 = (parameters[4]-1) * 70 -- Рандомный лидер Хоста
			randleader2 = (parameters[5]-1) * 70 -- Рандомный лидер Гостя
	end
	contents.zones = getZones(races)
	contents.connections = getZoneConnections()
	contents.scenarioVariables = getScenarioVariables()
	return contents
end

-- ШАБЛОН

template = {
	name = 'The Finals 1.02b',
	description = descrtemp,
	minSize = 48,
	maxSize = 48,
	maxPlayers = 2,
	startingGold = 0,
	startingNativeMana = 0,
	roads = 100,
	forest = 60,
customParameters = {
        		{
        			name = "Золото(Слитки)",
        			unit = "",
        			default = 10,
        			min = 0,
        			max = 20,
        			step = 1
        		},
        		{
        			name = "Золото(Бонус)",
        			unit = "",
        			default = 9500,
        			min = 0,
        			max = 9500,
        			step = 500
        		},
        		{
        			name = "Макс.Тир",
        			unit = "",
        			default = 5,
        			min = 2,
        			max = 5,
        			step = 1
        		},
        		{
        			name = "СлучЛидерХост",
        			values = 	{
                "Нет",
                "Да",
                		},
        			default = 1,
        		},
        		{
        			name = "СлучЛидерГость",
        			values = 	{
                "Нет",
                "Да",
                		},
        			default = 1,
        		},
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
        'g000uu8273', -- Абоминат
        'g000uu6101', -- Адское дитя
        'g005uu6002', -- Ангел Перерожденный
        'g000uu8304', -- Ангел разорения
        'g000uu5034', -- Бес
        'g000uu8049', -- Бомбарда
        'g000uu6119', -- Вампиресса
        'g000uu8219', -- Верховный некромант
        'g000uu8007', -- Вестник Мортис
        'g000uu8173', -- Вестник немощи
        'g000uu8186', -- Вестник перемен
        'g000uu8172', -- Вестник поглощения
        'g000uu8174', -- Вестник распада
        'g000uu8175', -- Вестник ужаса
        'g000uu8218', -- Волхв
        'g000uu8209', -- Гибельный рой
        'g000uu6110', -- Гидра
        'g001uu7616', -- Гном-упырь
        'g000uu1001', -- Двойник
        'g000uu8199', -- Дитя резни
        'g000uu8266', -- Дроттар
        'g000uu8005', -- Дух волка
        'g000uu6121', -- Дхампир
        'g000uu6109', -- Женщина-некромант
        'g000uu8153', -- Жнец
        'g006uu1026', -- Жрец Смерти
        'g000uu8043', -- Жрица Безмясой
        'g001uu7614', -- Искатель рун
        'g001uu8260', -- Искуситель
        'g000uu8004', -- Исчадие
        'g001uu7597', -- Кадавр
        'g000uu8160', -- Каменная сущность
        'g000uu8169', -- Каменная сущность
        'g000uu7608', -- Каменщик
        'g001uu7560', -- Каратель
        'g000uu7609', -- Квартирмейстер
        'g001uu8259', -- Колосс
        'g000uu6111', -- Командор легиона
        'g001uu7612', -- Королевский арбалетчик
        'g000uu6115', -- Король гномов
        'g001uu8261', -- Костяная госпожа
        'g006uu1016', -- Костяной голем
        'g000uu8256', -- Костяной дракон
        'g000uu6117', -- Костяной лорд
        'g000uu7615', -- Красный топор
        'g001uu7621', -- Лазуритовый демон
        'g000uu2022', -- Ламия
        'g000uu8159', -- Ледяная сущность
        'g000uu8168', -- Ледяная сущность
        'g000uu8221', -- Ледяной кузнец
        'g000uu7610', -- Ледяной ходок
        'g000uu6105', -- Маг Хугин
        'g000uu6114', -- Магистр-оккультист
        'g000uu6116', -- Мантикора
        'g001uu8307', -- Мертворожденная
        'g000uu8002', -- Множество
        'g000uu8001', -- Небирос
        'g001uu7599', -- Ничто
        'g000uu7626', -- Ничто
        'g001uu7613', -- Огнеборец
        'g000uu6113', -- Оккультист
        'g000uu6102', -- Падший
        'g001uu7622', -- Пепельное исчадие
        'g000uu8237', -- Первородная сущность
        'g000uu7566', -- Первородная сущность
        'g000uu7567', -- Первородная сущность
        'g000uu8203', -- Повелитель теней
        'g005uu6111', -- Пожиратель
        'g000uu8305', -- Предвестница Смерти
        'g005uu8001', -- Привратник
        'g000uu6106', -- Принцесса гномов
        'g000uu0028', -- Разжигатель
        'g001uu7541', -- Свежеватель
        'g001uu8270', -- Серный змей
        'g000uu8201', -- Скальд
        'g001uu7549', -- Скелет воитель
        'g000uu8166', -- Стихийный голем
        'g000uu7611', -- Страж домн
        'g000uu8158', -- Сущность бури
        'g000uu8171', -- Сущность бури
        'g000uu8189', -- Сущность искажения
        'g000uu8190', -- Сущность искажения
        'g000uu8161', -- Сущность пламени
        'g000uu8170', -- Сущность пламени
        'g001uu7596', -- Сюзерен бездны
        'g000uu8044', -- Темный Эльф Гаст
        'g000uu8041', -- Темный Эльф Мясник
        'g000uu8042', -- Темный Эльф Потрошитель
        'g001uu7625', -- Темный оракул
        'g000uu6107', -- Темный эльф-жрец
        'g000uu5033', -- Упырь
        'g000uu6120', -- Утер
        'g001uu8303', -- Черная вдова
        'g000uu8263', -- Чернокнижница
        'g002uu5026', -- Элементаль Воды
        'g000uu6103', -- Элементаль Воздуха
        'g002uu0025', -- Элементаль Земли
        'g002uu0105', -- Элементаль Огня
        'g001uu8255', -- Эльф-тень
},

forbiddenItems = {
},
	
	getContents = getTemplateContents
	
	
}
