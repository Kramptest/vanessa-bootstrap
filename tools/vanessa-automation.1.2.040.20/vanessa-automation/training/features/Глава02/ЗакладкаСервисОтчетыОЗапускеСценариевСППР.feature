﻿# language: ru

@lessons

Функционал: Интерактивная справка. Отчет в формате СППР.

Сценарий: Отчет в формате СППР

	* Привет! В этом уроке я расскажу тебе про настройки формирования отчета в формате СППР. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	* Эти настройки находятся тут.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСППР' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Настройки формирования отчета в формате СППР" UI Automation
			| 'Имя'                     |
			| 'ДелатьОтчетВФорматеСППР' |

	* Чтобы отчет формировался нужно установить этот флаг.
		И я делаю подсветку нескольких элементов VA с их заголовком "Включение отчета в формате СППР" UI Automation
			| 'Имя'                     |
			| 'ДелатьОтчетВФорматеСППР' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ДелатьОтчетВФорматеСППР' UI Automation
		И Пауза 1

	* В данном поле нужно указать каталог, в котором будут формироваться файлы отчета
		И я делаю подсветку нескольких элементов VA с их заголовком "Каталог отчета" UI Automation
			| 'Имя'                 |
			| 'КаталогВыгрузкиСППР' |
	
	* На этом всё, переходи к следующему уроку интерактивной справки.
