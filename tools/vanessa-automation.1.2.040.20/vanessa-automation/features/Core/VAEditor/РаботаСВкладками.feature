﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
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

@ServerCodeCoverage


Функциональность: Работа с вкладками

    Как разработчик
    Я хочу чтобы в редакторе можно было открыть несколько фич одновременно
    Чтобы я мог быстро создавать и выполнять сценарии

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'


Сценарий: Октрытие новой вкладки и подбор шагов из известных шагов
// Тест на https://github.com/Pr-Mex/vanessa-automation/issues/1231

	* Создание новой фичи
		И я перехожу в редактор Vanessa Automation из дерева
		И я нажимаю на кнопку с именем 'ФормаVanessaEditorСоздатьНовыйСценарий'
		И Пауза 3
	
	* Подбор шагов	
		И я нажимаю на кнопку с именем 'VanessaEditorДобавитьИзвестныйШаг'
		Тогда открылось окно 'Известные шаги*'
		И в таблице "ДеревоШагов" я разворачиваю строку:
			| 'Тип'   |
			| 'Файлы' |
		И в таблице "ДеревоШагов" я разворачиваю строку:
			| 'Тип'         |
			| 'Выбор файла' |
		И в таблице "ДеревоШагов" я перехожу к строке:
			| 'Тип'                            |
			| 'И я выбираю файл "ИмяФайла" ВК' |
		И в таблице "ДеревоШагов" я выбираю текущую строку
		И в таблице "ДеревоШагов" я перехожу к строке:
			| 'Тип'                                                     |
			| 'И я выбираю файл с индексом фильтра "Индекс" "ИмяФайла"' |
		И в таблице "ДеревоШагов" я выбираю текущую строку
		И Я закрываю окно 'Известные шаги*'
				
	* Проверка подбора шагов в редактор
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(VanessaTabs.current.editor.getLineContent(15))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'И я выбираю файл "ИмяФайла" ВК'|

		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(VanessaTabs.current.editor.getLineContent(16))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'И я выбираю файл с индексом фильтра "Индекс" "ИмяФайла"'|
		
				

Сценарий: Открытие подсценария, когда не отображаются строки подсценариев

	* Загрузка первой служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor\VanessaEditor38"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

			
	* Переход к строке подсценария и открытие подсценари в новой вкладке
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(19, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюОткрытьПодсценарийВНовойВкладке'
		И Пауза 3


	* Проверка текущей строки
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(VanessaTabs.current.editor.getPosition().linenumber)'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'25'|






Сценарий: Создание новой вкладки и её сохранение в новый файл через закрытие вкладки
	* Создание новой вкладки
		И я перехожу в редактор Vanessa Automation из дерева
		И я нажимаю на кнопку с именем 'ФормаVanessaEditorСоздатьНовыйСценарий'

	* Сохранение сценария в файл	
		Если Файл "C:\Temp\CI" существует тогда
		Иначе
			Тогда я создаю каталог "C:\Temp\CI"		
		И я запоминаю строку "C:\Temp\CI\temp.feature" в переменную "ИмяФайла"
		Если Файл "$ИмяФайла$" существует тогда
			Тогда я удаляю файл "$ИмяФайла$"

		И я выбираю файл "$ИмяФайла$"

		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.close()'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку 'Да'

		И Пауза 5

	* Проверка
		И файл "$ИмяФайла$" содержит строки
			|"<описание сценария>"|
						

				
Сценарий: Создание новой вкладки и её сохранение в новый файл через кнопку сохранить
	* Создание новой вкладки
		И я перехожу в редактор Vanessa Automation из дерева
		И я нажимаю на кнопку с именем 'ФормаVanessaEditorСоздатьНовыйСценарий'

	* Сохранение сценария в файл	
		Если Файл "C:\Temp\CI" существует тогда
		Иначе
			Тогда я создаю каталог "C:\Temp\CI"		
		И я запоминаю строку "C:\Temp\CI\temp.feature" в переменную "ИмяФайла"
		Если Файл "$ИмяФайла$" существует тогда
			Тогда я удаляю файл "$ИмяФайла$"

		И я выбираю файл "$ИмяФайла$"

		И я нажимаю на кнопку с именем 'ПанельVanessaEditorСохранитьФайл'
		И у элемента с именем "ФлагСценарииЗагружены" я жду значения "Да" в течение 60 секунд

	* Проверка
		И файл "$ИмяФайла$" содержит строки
			|"<описание сценария>"|

	* Проверка кнопки "Сохранить как"						
		И я запоминаю строку "C:\Temp\CI\temp1.feature" в переменную "ИмяФайла"
		Если Файл "$ИмяФайла$" существует тогда
			Тогда я удаляю файл "$ИмяФайла$"
		И я выбираю файл "$ИмяФайла$"
		И я нажимаю на кнопку с именем 'ПанельVanessaEditorСохранитьФайлКак'
		И Пауза 1
		И файл "$ИмяФайла$" содержит строки
			|"<описание сценария>"|
		

				
				

Сценарий: Открытие двух подсценариев в новой вкладке

	* Включение отображения строк подсценариев
		И я перехожу в редактор Vanessa Automation из дерева
		И я нажимаю на кнопку с именем 'VanessaEditorПоказыватьСтрокиПодсценариев'

	* Загрузка первой служебной фичи	
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor\VanessaEditor31"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

			
	* Переход к первой строке первого подсценария
		И Пауза 1
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.selectSubcodeLine("b1", 0);'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И Пауза 1
				
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюОткрытьПодсценарийВНовойВкладке'
		И Пауза 2

	* Проверка текущей строки
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(VanessaTabs.current.editor.getPosition().linenumber)'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'27'|
				
	* Активизация первой вкладки	
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'МодульРедакторТекста().АктивизироватьВкладкуПоЗаголовку("VanessaEditor31")'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
				
					
	* Переход ко второй строке второго подсценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.selectSubcodeLine("b2", 1);'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюОткрытьПодсценарийВНовойВкладке'
		И Пауза 2

	* Проверка текущей строки
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(VanessaTabs.current.editor.getPosition().linenumber)'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'33'|


Сценарий: Выполнение сценариев сначала в одной вкладке, затем в другой


	* Загрузка первой служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor\VanessaEditor29"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Выполнение сценария
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	* Загрузка второй служебной фичи	
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor\VanessaEditor30"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Выполнение сценария
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	* Проверка результата
		
		И я нажимаю на кнопку с именем 'ПанельVanessaEditorФормаПерейтиВДеревоШагов'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                | 'Статус'  |
			| 'VanessaEditor30.feature'                                                     | ''        |
			| 'VAEditor30'                                                                  | ''        |
			| 'VAEditor30'                                                                  | 'Success' |
			| 'И Я запоминаю значение выражения \'200+200\' в переменную "ИмяПеременной20"' | 'Success' |
			| 'И Я вызываю экспортный сценарий, который не вызывает исключение'             | ''        |
			| 'И я удаляю переменную \'ИмяПеременной1\''                                    | 'Success' |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"'      | 'Success' |
			| 'И Я запоминаю значение выражения \'30+30\' в переменную "ИмяПеременной3"'    | 'Success' |
		
		
		И я перехожу в редактор Vanessa Automation из дерева
		И я нажимаю на кнопку с именем 'МенюЗагрузитьФичиVanessaEditor2'
		
		И Пауза 2		

		И я нажимаю на кнопку с именем 'ПанельVanessaEditorФормаПерейтиВДеревоШагов'
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                              | 'Статус' |
			| 'VanessaEditor29.feature'                                                   | ''       |
			| 'VAEditor29'                                                                | ''       |
			| 'VAEditor29'                                                                | ''       |
			| 'И Я запоминаю значение выражения \'20+20\' в переменную "ИмяПеременной20"' | ''       |
			| 'И Я вызываю экспортный сценарий, который не вызывает исключение'           | ''       |
			| 'И я удаляю переменную \'ИмяПеременной1\''                                  | ''       |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"'    | ''       |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"'    | ''       |
		
		* Активируем вторую вкладку и переходим в дерево. Дерево должно само обновиться.
			
			И я перехожу в редактор Vanessa Automation из дерева
			И я перехожу к закладке с именем "ГруппаСлужебная"
			И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
			И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'МодульРедакторТекста().АктивизироватьВкладкуПоЗаголовку("VanessaEditor30")'
			И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
			И пауза 1
			И я перехожу к закладке с именем "ГруппаЗапускТестов"
			
			И я нажимаю на кнопку с именем 'ПанельVanessaEditorФормаПерейтиВДеревоШагов'
			И я перехожу к закладке с именем "ГруппаСлужебная"
			И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
			И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
			И я перехожу к закладке с именем "ГруппаЗапускТестов"

			Тогда таблица "ДеревоТестов" стала равной:
				| 'Наименование'                                                                | 'Статус' |
				| 'VanessaEditor30.feature'                                                     | ''       |
				| 'VAEditor30'                                                                  | ''       |
				| 'VAEditor30'                                                                  | ''       |
				| 'И Я запоминаю значение выражения \'200+200\' в переменную "ИмяПеременной20"' | ''       |
				| 'И Я вызываю экспортный сценарий, который не вызывает исключение'             | ''       |
				| 'И я удаляю переменную \'ИмяПеременной1\''                                    | ''       |
				| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"'      | ''       |
				| 'И Я запоминаю значение выражения \'30+30\' в переменную "ИмяПеременной3"'    | ''       |
			
						
			И я закрываю сеанс TESTCLIENT
						
					
		

				
						
				
