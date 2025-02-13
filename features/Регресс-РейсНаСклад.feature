﻿#language: ru

@tree

Функционал: Регресс-РейсНаСклад
Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Регресс-РейсНаСклад: создается рейс
И В командном интерфейсе я выбираю 'KRAMP' 'Рейс на склад'
Тогда открылось окно 'Рейс на склад'
И я нажимаю на кнопку с именем 'ФормаСоздать'
И элемент формы с именем "АдресДоставки" стал равен ''
И у элемента формы с именем "ВесРейса" текст редактирования стал равен '0,000'
И элемент формы с именем "Город" стал равен ''
И элемент формы с именем "Дом" стал равен ''
Тогда в таблице "Заказы" количество строк "равно" 0
И элемент формы с именем "Квартира" стал равен ''
И элемент формы с именем "КЛАДР" стал равен ',,,,,,,,,,,,,,,,'
И элемент формы с именем "КлассификаторГород" стал равен ''
И элемент формы с именем "КлассификаторНаселёнПункт" стал равен ''
И элемент формы с именем "КлассификаторРайон" стал равен ''
И элемент формы с именем "КлассификаторРегион" стал равен ''
И элемент формы с именем "КлассификаторУлица" стал равен ''
И элемент формы с именем "КоличествоМест" стал равен '0'
И элемент формы с именем "Комментарий" стал равен ''
И элемент формы с именем "КомментарийТК" стал равен ''
И элемент формы с именем "КонтактноеЛицо" стал равен ''
И элемент формы с именем "Контрагент" стал равен ''
И элемент формы с именем "НаселёнПункт" стал равен ''
И элемент формы с именем "НеВыдавать" стал равен 'Нет'
И элемент формы с именем "Номер" стал равен ''
И элемент формы с именем "НомерНакладной" стал равен ''
И у элемента формы с именем "ОбъемРейса" текст редактирования стал равен '0,000'
И элемент формы с именем "Плательщик" стал равен 'КРАМП ООО 142324, Московская обл, Чехов г, Люторец'
И элемент формы с именем "Подарок" стал равен 'Нет'
И элемент формы с именем "Район" стал равен ''
И элемент формы с именем "Регион" стал равен ''
И элемент формы с именем "Рекламация" стал равен 'Нет'
И элемент формы с именем "Склад" стал равен 'Основной склад'
И элемент формы с именем "СписокТерминаловDPD" стал равен ''
И элемент формы с именем "СпособДоставки" стал равен ''
И элемент формы с именем "СтатусРейса" стал равен 'Статус рейса'
И элемент формы с именем "Строение" стал равен ''
И у элемента формы с именем "СуммаДоставки" текст редактирования стал равен '0,00'
И у элемента формы с именем "СуммаРейса" текст редактирования стал равен '0,00'
И элемент формы с именем "Телефон" стал равен ''
И элемент формы с именем "ТипПлательщика" стал равен '1'
И элемент формы с именем "Транспортная" стал равен ''
И элемент формы с именем "Улица" стал равен ''
И элемент формы с именем "ФизЛицо" стал равен 'Нет'
Когда открылось окно 'Рейс на склад (создание)'
И Я закрываю окно 'Рейс на склад (создание)'
Тогда открылось окно 'Рейс на склад'
И Я закрываю окно 'Рейс на склад'

Сценарий: Регресс-РейсНаСклад: ID терминала
И В командном интерфейсе я выбираю 'KRAMP' 'Рейс на склад'
Тогда открылось окно 'Рейс на склад'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Рейс на склад (создание)'
И я перехожу к закладке с именем "Страница_Адрес"
И я нажимаю кнопку выбора у поля с именем "АдресДоставки"
Тогда открылось окно 'Адрес'
И из выпадающего списка с именем "НаселенныйПункт" я выбираю по строке 'Москва'
И я перехожу к закладке с именем "СтраницаМуниципальныйАдрес"
И я нажимаю на кнопку с именем 'ФормаКомандаОК'
Тогда открылось окно 'Рейс на склад (создание) *'
И я нажимаю на кнопку с именем 'НайтиТерминалДЛ_по_Городу'
Тогда элемент формы с именем "IDTerminal" стал равен '36'
Когда открылось окно 'Рейс на склад (создание) *'
И я нажимаю кнопку выбора у поля с именем "АдресДоставки"
Тогда открылось окно 'Адрес'
И из выпадающего списка с именем "НаселенныйПункт" я выбираю по строке 'Новосибирск'
И из выпадающего списка с именем "Улица" я выбираю по строке 'ленина'
И из выпадающего списка с именем "Дом" я выбираю по строке '53'
И я нажимаю на кнопку с именем 'ФормаКомандаОК'
Тогда открылось окно 'Рейс на склад (создание) *'
И я нажимаю на кнопку с именем 'НайтиТерминалДЛ_по_Городу'
Тогда элемент формы с именем "IDTerminal" стал равен '52'
И Я закрываю окно 'Рейс на склад (создание) *'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button1'
Тогда открылось окно 'Рейс на склад'
И Я закрываю окно 'Рейс на склад'


Сценарий: Регресс-РейсНаСклад: Проверка на редактирование полей
И В командном интерфейсе я выбираю 'KRAMP' 'Рейс на склад'
Тогда открылось окно 'Рейс на склад'
И я нажимаю на кнопку с именем 'ФормаСоздать'
И в поле с именем 'СуммаДоставки' я ввожу текст '100,00'
И в поле с именем 'ВесРейса' я ввожу текст '100,000'
И в поле с именем 'ОбъемРейса' я ввожу текст '100,000'
И в поле с именем 'КоличествоМест' я ввожу текст '100'
И в поле с именем 'НомерНакладной' я ввожу текст '100'
И Я закрываю окно 'Рейс на склад (создание) *'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button1'
Тогда открылось окно 'Рейс на склад'
И Я закрываю окно 'Рейс на склад'

Сценарий: Регресс-РейсНаСклад: Форма адреса
И В командном интерфейсе я выбираю 'KRAMP' 'Рейс на склад'
Тогда открылось окно 'Рейс на склад'
И я нажимаю на кнопку с именем 'ФормаСоздать'
И я нажимаю кнопку выбора у поля с именем "АдресДоставки"
Тогда элемент формы с именем "Страна" стал равен 'РОССИЯ'
Тогда элемент формы с именем "НаселенныйПункт" стал равен ''
Тогда элемент формы с именем "Улица" стал равен ''
Тогда элемент формы с именем "Дом" стал равен ''
Тогда элемент формы с именем "Строение" стал равен ''
Тогда элемент формы с именем "Помещение" стал равен ''
Тогда элемент формы с именем "Индекс" стал равен ''
Тогда элемент формы с именем "ПредставлениеАдреса" стал равен ''
И я нажимаю на кнопку с именем 'ФормаОтмена'
И Я закрываю окно 'Рейс на склад (создание)'
И Я закрываю окно 'Рейс на склад'
