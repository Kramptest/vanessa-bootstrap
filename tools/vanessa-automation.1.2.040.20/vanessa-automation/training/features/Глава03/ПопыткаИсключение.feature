﻿# language: ru

@lessons

Функционал: Интерактивная справка. Попытка/исключение.

Сценарий: Попытка/исключение.

	* Привет! В этом уроке я расскажу тебе про особенности использования конструкции попытка исключения в сценариях. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* И загр^узим тестовый пример.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПопыткаИсключение1.feature"

	* Первый момент. Конструкция Попытка Исключение состоит из двух обязательных ключевых слов.
	* Первое ключевое слово - это Попытка.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 'Попытка' 'Ключевое слово "Попытка"'
	* Второе ключевое слово - это Исключение.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 12 'Исключение' 'Ключевое слово "Исключение"'

	* Шаги, которые находятся внутри секции попытка отделяются дополнительным отступом.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 11 строку 'Шаги внутри секции "Попытка"' подсценарий
	* Шаги, которые находятся внутри секции исключение тоже отделяются дополнительным отступом.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 13 по 14 строку 'Шаги внутри секции "Исключение"' подсценарий

	* Если какой-либо шаг, находящийся в секции Попытка упадёт, то выполнение сценария не прервётся а перейдёт в секцию Исключение.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 13 по 14 строку 'Шаги внутри секции "Исключение"' подсценарий
	
	* Конструкцию Попытка Исключение обычно используют в тех случаях, когда нельзя гарантировать выполнение сценария.

	* Также механизм Попытки Исключения может использоваться для того, чтобы регистрировать несколько ошибок с одного сценария.
	* Для этого существует специальный шаг.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'И я регистрирую ошибку "В таблице нет нужной строки" по данным исключения' 'Шаг по регистрации ошибки'
	* Этот шаг можно использовать только в секции Исключение.
	* В итоге один сценарий сможет за один запуск зарегистрировать несколько ошибок.

	* Важный момент. Использование конструкции Попытка Исключение в тексте сценария должно быть обосновано.
	* Стоит избегать использование этой конструкции там, где без этого можно обойтись.

	* На этом всё, переходи к следующему уроку интерактивной справки.
