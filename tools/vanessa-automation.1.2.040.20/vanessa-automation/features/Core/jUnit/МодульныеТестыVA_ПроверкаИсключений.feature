﻿# language: ru
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA21_формировать_отчет_jUnit

@IgnoreOn82Builds
@IgnoreOn836
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOnUFSovm82Builds

Функционал: Проверка формирования отчета jUnit при работе из EDT. Проверка исключений.


Контекст: 
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	

Сценарий: Тест_ЧислоОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ЧислоОшибка"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной по шаблону
		| 'Статус' | 'Снипет'                                   |
		| ''       | ''                                         |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |



	
	
Сценарий: Тест_ТипУспехОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ТипУспехОшибка"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной по шаблону
		| 'Статус' | 'Снипет'                                   |
		| ''       | ''                                         |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |






Сценарий: Тест_СтрокаОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_СтрокаОшибка"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной по шаблону
		| 'Статус' | 'Снипет'                                   |
		| ''       | ''                                         |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |





Сценарий: Тест_КоллекцииОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_КоллекцииОшибка"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной по шаблону
		| 'Статус' | 'Снипет'                                   |
		| ''       | ''                                         |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |




Сценарий: Тест_ЗначениеЗаполненоОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ЗначениеЗаполненоОшибка"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной по шаблону
		| 'Статус' | 'Снипет'                                   |
		| ''       | ''                                         |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |




Сценарий: Тест_ДатаОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ДатаОшибка"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной по шаблону
		| 'Статус' | 'Снипет'                                   |
		| ''       | ''                                         |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |






Сценарий: Тест_ВыполнитьОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ВыполнитьОшибка"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной по шаблону
		| 'Статус' | 'Снипет'                                   |
		| ''       | ''                                         |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |









Сценарий: Тест_ВызватьИсключение
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_ВызватьИсключение"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной по шаблону
		| 'Статус' | 'Снипет'                                   |
		| ''       | ''                                         |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |



Сценарий: Тест_БулевоОшибка
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_БулевоОшибка"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	Тогда таблица "ДеревоТестов" стала равной по шаблону
		| 'Статус' | 'Снипет'                                   |
		| ''       | ''                                         |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыкаНаСервере(*)' |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |
		| 'Failed' | ''                                         |
		| 'Failed' | 'ЯВыполняюКодВстроенногоЯзыка(*)'          |
		| ''       | ''                                         |




	
Сценарий: Тест_АсинхронныеВызовыКлиент
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Тест_АсинхронныеВызовыКлиент"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаjUnit"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеjUnit'
	И в поле каталог отчета jUnit я указываю путь к относительному каталогу "tools\jUnit"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге jUnit появился 1 файл xml	
	
	И файл "$НайденноеИмяФайлаxml$" содержит строки
				| '<expected>Файл3</expected>'                                                      |
				| 'Не нашли элемент &lt;Файл3&gt; в коллекции, а хотели, чтобы он был в коллекции.' |
				| '&lt;Файл ошибочно непередан.&gt;'                                                |
	
		
	