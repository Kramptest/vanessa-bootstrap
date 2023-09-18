﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316
@IgnoreOn8317


Функционал: Проверка работы шагов, использующих расширение VAExtension



Сценарий: Установка расширения VAExtension

	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension01"
	
	И в поле с именем "КаталогПроекта" я ввожу текст "$КаталогИнструментов$"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	Тогда в логе сообщений TestClient есть строки:
		|'Ошибок не было.'|
		


Сценарий: Основная проверка VAExtension

	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе

	* Проверка открытия внешней обработки
		И я открываю внешнюю обработку или отчет "$КаталогИнструментов$\features\Libraries\UITestRunner\step_definitions\РаботаСИнтерфейсом.epf" (Расширение)
		Тогда открылось окно 'Работа с интерфейсом'
		И Я закрываю окно 'Работа с интерфейсом'
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	* Проверка вывода данных текущего окна
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension02"
				

		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

		Тогда открылось окно 'Значения элементов окна*'
		Затем я  закрываю окно 'Значения элементов окна*'

	* Проверка основных шагов		
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension03"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


		Тогда в логе сообщений TestClient есть строки:
			|'НавигационнаяСсылка = e1cib/data/Справочник.Справочник1?ref='|
			|'ПометкаУдаления = Нет'|
			|'ИмяКонфигурации = Конфигурация'|
			|'КодНаКлиенте = 2'|
			|'Ошибок не было.'|


	* Проверка получения макета с помощью расширения
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаВыполнениеСценариев"
		И я устанавливаю флаг с именем 'ПолучатьМакетыСПомощьюРасширенияVAExtension'
				
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension04"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'
		
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                                                             | 'Статус'  |
			| 'VAExtension04.feature'                                                                                                    | ''        |
			| 'VAExtension04'                                                                                                            | ''        |
			| 'VAExtension04'                                                                                                            | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий'                                              | 'Success' |
			| 'И я удаляю все элементы справочника "Справочник3"'                                                                        | 'Success' |
			| 'И В командном интерфейсе я выбираю \'Основная\' \'Справочник3\''                                                          | 'Success' |
			| 'Тогда открылось окно \'Справочник3\''                                                                                     | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаСоздать\''                                                                          | 'Success' |
			| 'Тогда открылось окно \'Справочник3 (создание)\''                                                                          | 'Success' |
			| 'И в поле с именем \'Наименование\' я ввожу текст \'111\''                                                                 | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаЗаписать\''                                                                         | 'Success' |
			| 'Тогда открылось окно \'* (Справочник3)\''                                                                                 | 'Success' |
			| 'И я нажимаю на кнопку с именем \'СформироватьОтчет\''                                                                     | 'Success' |
			| 'Дано Табличный документ \'РеквизитТабличныйДокумент\' равен макету "ПолучениеМакетаЧерезРасширение"'                      | 'Success' |
			| 'Тогда табличный документ "РеквизитТабличныйДокумент" равен:'                                                              | 'Success' |
			| '\| \'Наименование\' \| \'Предопределенный\' \| \'ВерсияДанных\' \| \'ИмяПредопределенныхДанных\' \| \'ПараметрЧисло\' \|' | ''        |
			| '\| \'111\'          \| \'Нет\'              \| \'*\'            \| \'\'                          \| \'1,2\'           \|' | ''        |
			| 'И я очищаю табличный документ "РеквизитТабличныйДокумент" (расширение)'                                                   | 'Success' |
			| 'Тогда табличный документ формы с именем "РеквизитТабличныйДокумент" стал пустым'                                          | 'Success' |
		
		

						

	* Окно Функции для технического специалиста
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension05"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'

		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                  | 'Статус'  |
			| 'VAExtension05.feature'                                                         | ''        |
			| 'VAExtension05'                                                                 | ''        |
			| 'VAExtension05'                                                                 | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий'   | 'Success' |
			| 'И я открываю окно функции для технического специалиста (расширение)'           | 'Success' |
			| 'Тогда открылось окно \'Функции для технического специалиста\''                 | 'Success' |
			| 'И в таблице "Table" я перехожу к строке:'                                      | 'Success' |
			| '\| \'Имя\'         \|'                                                         | ''        |
			| '\| \'Справочники\' \|'                                                         | ''        |
			| 'И в таблице "Table" я перехожу к строке:'                                      | 'Success' |
			| '\| \'Имя\'       \|'                                                           | ''        |
			| '\| \'Константы\' \|'                                                           | ''        |
			| 'И в таблице "Table" я разворачиваю текущую строку'                             | 'Success' |
			| 'И в таблице "Table" я перехожу к строке:'                                      | 'Success' |
			| '\| \'Имя\'                             \|'                                     | ''        |
			| '\| \'Инициализировать vanessa editor\' \|'                                     | ''        |
			| 'И в таблице "Table" я нажимаю на кнопку с именем \'CommandOpen\''              | 'Success' |
			| 'Тогда открылось окно \'Инициализировать vanessa editor\''                      | 'Success' |
			| 'И я нажимаю на кнопку \'Записать и закрыть\''                                  | 'Success' |
			| 'И я жду закрытия окна \'Инициализировать vanessa editor\' в течение 20 секунд' | 'Success' |
		
		

		

	* Окно Настройка начальной страницы
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension06"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'

		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                | 'Статус'  |
			| 'VAExtension06.feature'                                                       | ''        |
			| 'VAExtension06'                                                               | ''        |
			| 'VAExtension06'                                                               | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий' | 'Success' |
			| 'И я открываю окно настройка начальной страницы (расширение)'                 | 'Success' |
			| 'Тогда открылось окно \'Настройка начальной страницы\''                       | 'Success' |
			| 'И я нажимаю на кнопку \'OK\''                                                | 'Success' |
		
		

		
	* Шаги сортировки динамического списка
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension07"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'

		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                                                       | 'Статус'  |
			| 'VAExtension07.feature'                                                                                              | ''        |
			| 'VAExtension07'                                                                                                      | ''        |
			| 'VAExtension07'                                                                                                      | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий'                                        | 'Success' |
			| 'И В командном интерфейсе я выбираю \'Основная\' \'Справочник1\''                                                    | 'Success' |
			| 'И в таблице "Список" текущего окна я устанавливаю сортировку по колонке "Реквизит1" по убыванию (расширение)'       | 'Success' |
			| 'И в таблице "Список" текущего окна я устанавливаю сортировку по колонке "Наименование" по возрастанию (расширение)' | 'Success' |
		
		
				
	* Нажатие гиперссылок в HTML документе
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension08"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'

		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                                             | 'Статус'  |
			| 'VAExtension08.feature'                                                                                    | ''        |
			| 'VAExtension08'                                                                                            | ''        |
			| 'VAExtension08'                                                                                            | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий'                              | 'Success' |
			| 'И я закрываю все окна клиентского приложения'                                                             | 'Success' |
			| 'И я удаляю все элементы справочника "Справочник2"'                                                        | 'Success' |
			| '* Создание тестовых элементов справочника 2'                                                              | ''        |
			| 'И В командном интерфейсе я выбираю \'Основная\' \'Справочник2\''                                          | 'Success' |
			| 'Тогда открылось окно \'Справочник2\''                                                                     | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаСоздать\''                                                          | 'Success' |
			| 'Тогда открылось окно \'Справочник2 (создание)\''                                                          | 'Success' |
			| 'И в поле с именем \'Наименование\' я ввожу текст \'ТестHtml01\''                                          | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаЗаписатьИЗакрыть\''                                                 | 'Success' |
			| 'И я жду закрытия окна \'Справочник2 (создание) *\' в течение 20 секунд'                                   | 'Success' |
			| 'Тогда открылось окно \'Справочник2\''                                                                     | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаСоздать\''                                                          | 'Success' |
			| 'Тогда открылось окно \'Справочник2 (создание)\''                                                          | 'Success' |
			| 'И в поле с именем \'Наименование\' я ввожу текст \'ТестHtml02\''                                          | 'Success' |
			| 'И я перехожу к следующему реквизиту'                                                                      | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаЗаписатьИЗакрыть\''                                                 | 'Success' |
			| 'И я жду закрытия окна \'Справочник2 (создание) *\' в течение 20 секунд'                                   | 'Success' |
			| 'И Я закрываю окно \'Справочник2\''                                                                        | 'Success' |
			| '* Создания поля HTML'                                                                                     | ''        |
			| 'И В командном интерфейсе я выбираю \'Основная\' \'Справочник1\''                                          | 'Success' |
			| 'Тогда открылось окно \'Справочник1\''                                                                     | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаСоздать\''                                                          | 'Success' |
			| 'Тогда открылось окно \'Справочник1 (создание)\''                                                          | 'Success' |
			| 'И я перехожу к закладке с именем "СтраницаHTML"'                                                          | 'Success' |
			| 'И в поле с именем \'ПолеДляПоискаЭлементаСправочника2\' я ввожу текст \'ТестHtml01\''                     | 'Success' |
			| 'И в поле с именем \'ПолеДляПоискаЭлементаСправочника2_2\' я ввожу текст \'ТестHtml02\''                   | 'Success' |
			| 'И я перехожу к следующему реквизиту'                                                                      | 'Success' |
			| 'И я нажимаю на кнопку с именем \'СоздатьHTMLСтраницуСЭлементомСправочника2\''                             | 'Success' |
			| 'И Пауза 1'                                                                                                | 'Success' |
			| '* Проверка нажатия на гиперссылки'                                                                        | ''        |
			| 'И у поля с именем "HTMLДокументНаФорме" я нажимаю гиперссылку по значению "ТестHtml01" (расширение)'      | 'Success' |
			| 'И Пауза 1'                                                                                                | 'Success' |
			| 'Тогда элемент формы с именем "ОтветHTML" стал равен \'ТестHtml01\''                                       | 'Success' |
			| 'И у поля с именем "HTMLДокументНаФорме" я нажимаю гиперссылку по представлению "ТестHtml02" (расширение)' | 'Success' |
			| 'И Пауза 1'                                                                                                | 'Success' |
			| 'Тогда элемент формы с именем "ОтветHTML" стал равен \'ТестHtml02\''                                       | 'Success' |
			| 'И у поля с именем "HTMLДокументНаФорме" я нажимаю гиперссылку по номеру 0 (расширение)'                   | 'Success' |
			| 'И Пауза 1'                                                                                                | 'Success' |
			| 'Тогда элемент формы с именем "ОтветHTML" стал равен \'ТестHtml01\''                                       | 'Success' |
		
		
	* Проверка получения состояния объекта
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension09"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'

		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                | 'Статус'  |
			| 'VAExtension09.feature'                                                       | ''        |
			| 'VAExtension09'                                                               | ''        |
			| 'VAExtension09'                                                               | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий' | 'Success' |
			| 'И я закрываю все окна клиентского приложения'                                | 'Success' |
			| 'И В командном интерфейсе я выбираю \'Основная\' \'Справочник1\''             | 'Success' |
			| 'Тогда открылось окно \'Справочник1\''                                        | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаСоздать\''                             | 'Success' |
			| 'Тогда открылось окно \'Справочник1 (создание)\''                             | 'Success' |
			| 'И в поле с именем \'Наименование\' я ввожу текст \'111\''                    | 'Success' |
			| 'И я нажимаю на кнопку \'Записать\''                                          | 'Success' |
			| 'И пауза 1'                                                                   | 'Success' |
			| 'И я получаю состояние текущего объекта (Расширение)'                         | 'Success' |
		
				
		И я нажимаю на кнопку с именем 'ПоказатьСкрытьТаблоПеременных'
		И Пауза 1
		И в таблице "ТаблоПеременных" я перехожу к строке:
			| 'Имя'           |
			| 'ЗаголовокОкна' |
		И в таблице "ТаблоПеременных" я перехожу к строке:
			| 'Имя' |
			| 'Код' |
		И в таблице "ТаблоПеременных" я перехожу к строке:
			| 'Имя'             |
			| 'ПометкаУдаления' |
		И в таблице "ТаблоПеременных" я перехожу к строке:
			| 'Имя'         |
			| 'ТипЭлемента' |

	* Получение ID UI Automation
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension10"
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я устанавливаю флаг с именем 'ИспользоватьКомпонентуVanessaExt'
				
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И в таблице "ТаблоПеременных" я перехожу к строке:
			| 'Имя'        | 'Тип'    |
			| 'IDЭлемента' | 'Строка' |
				

	* Закрытие клиента тестирования
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
		
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'


