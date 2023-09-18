﻿#Область ОписаниеПеременных

Перем ПутьКФайлуПолный Экспорт; // в эту переменную будет установлен правильный клиентский путь к текущему файлу

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

#Область ВнешнийИнтерфейсПлагина

Процедура Инициализация(КонтекстЯдра) Экспорт
КонецПроцедуры

Функция ОписаниеПлагина(КонтекстЯдра, ВозможныеТипыПлагинов) Экспорт
	Возврат ОписаниеПлагинаНаСервере(ВозможныеТипыПлагинов);	
КонецФункции

#КонецОбласти

#Область ВнутреннийИнтерфейсПлагина

Функция ОписаниеПлагинаНаСервере(ВозможныеТипыПлагинов) Экспорт
	
	Результат = Новый Структура;
	Результат.Вставить("Тип", ВозможныеТипыПлагинов.Утилита);
	Результат.Вставить("Идентификатор", Метаданные().Имя);
	Результат.Вставить("Представление", Метаданные().Представление());
	ВызватьИсключение "Необходимо задать представление или убрать вызов исключения";
	
	Возврат Новый ФиксированнаяСтруктура(Результат);

КонецФункции

#КонецОбласти

#КонецОбласти 
