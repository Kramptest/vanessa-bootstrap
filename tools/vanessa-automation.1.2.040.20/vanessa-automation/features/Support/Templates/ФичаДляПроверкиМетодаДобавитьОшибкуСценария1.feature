# language: ru
# encoding: utf-8
#parent ua:
@UA29_Макеты_для_проверки_обработки_ошибок
#parent uf:
@UF9_Вспомогательные_фичи

@IgnoreOnCIMainBuild

Функциональность: ФичаДляПроверкиМетодаДобавитьОшибкуСценария1



@classname=ModuleExceptionPath
Сценарий: ФичаДляПроверкиМетодаДобавитьОшибкуСценария1
	И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"
	И я выполняю код встроенного языка
		| 'Ванесса.ЗапретитьВыполнениеШагов();' |
		| 'Сообщить("Служебное сообщение.")' |
	И Я запоминаю значение выражения '2' в переменную "ИмяПеременной"
	