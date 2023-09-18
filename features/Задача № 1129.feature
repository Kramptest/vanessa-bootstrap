﻿#language: ru

@tree

Функционал: Задача № 1129

Как тестировщки я хочу
проверить отсутствие дублирования строк в отчете Валова прибыль предприятия
чтобы в отчете не было пустых строк

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка на пустые сроки
И В командном интерфейсе я выбираю 'Главное' 'Стандартные бухгалтерские отчеты'
Тогда открылось окно 'Стандартные бухгалтерские отчеты'
И в поле с именем 'СтрокаПоиска' я ввожу текст 'Валовая'
И я нажимаю на кнопку с именем 'ВыполнитьПоиск'
И я нажимаю на гиперссылку с именем "Вариант_732f0f39bf5211e9b883caea08596924_Подсистема_716a3153049011e9ac1c00505693134e"
Тогда открылось окно 'Валовая прибыль предприятия - номенклатура/артикул/ABC'
И я снимаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент7Использование'
И в поле с именем 'Период1ДатаНачала' я ввожу текст '07.09.2023'
И в поле с именем 'Период1ДатаОкончания' я ввожу текст '07.09.2023'
И я нажимаю на кнопку с именем 'СформироватьОтчет'
И табличный документ "ОтчетТабличныйДокумент" не содержит значения:
	| 'Claas Harvester NO'                         | ''                                                                                                     | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0002133040KR'                               | '0002133040KR ПОДШИПНИК ИГОЛЬЧАТЫЙ'                                                                    | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0002163290KR'                               | '0002163290KR (LY2062FFB) Подшипник'                                                                   | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0003599102N'                                | '0003599102N Кольцо подшипника'                                                                        | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0003599123KR'                               | '0003599123KR ВТУЛКА ПОДШИПНИКА'                                                                       | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0005198860N'                                | '0005198860N Щуп/Sensor'                                                                               | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0005432210KR'                               | '0005432210KR Вал'                                                                                     | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0005545022N'                                | '0005545022N Труба'                                                                                    | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006030160KR'                               | '0006030160KR Башмак'                                                                                  | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006032710KR'                               | '0006032710KR ВТУЛКА ПОДШИПНИКА'                                                                       | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006262961KR'                               | '0006262961KR Палец угловой ALASKA'                                                                    | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006286010KR'                               | '0006286010KR ВТУЛКА СКОЛЬЖЕНИЯ'                                                                       | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006286020N'                                | '0006286020N Втулка скольжения'                                                                        | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006298650KR'                               | '0006298650KR ВТУЛКА СКОЛЬЖЕНИЯ'                                                                       | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006303510NRM'                              | '0006303510NRM Звёздочка верх. вала НК'                                                                | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006306422KR'                               | '0006306422KR Планка транспортёра'                                                                     | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006349521N'                                | '0006349521N Втулка резиновая'                                                                         | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006424890KR'                               | '0006424890KR Колодка натяжная'                                                                        | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006445171KR'                               | '0006445171KR ВАЛ ПРОМЕЖУТОЧНЫЙ'                                                                       | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006477110KR'                               | '0006477110KR Перегородка'                                                                             | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006480683KR'                               | '0006480683KR Палец шнека 16x245'                                                                      | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0006702640KR'                               | '0006702640KR ШПОНКА ПРИЗМАТИЧ.'                                                                       | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0007465432N'                                | '0007465432N Ролик натяжной'                                                                           | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0007511184N'                                | '0007511184N Шнек загрузочный'                                                                         | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0007964490N'                                | '0007964490N Натяжник ремня/Belt tensioner'                                                            | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	| '0007984990N'                                | '0007984990N Патрубок впускной'                                                                        | ''          | ''          | ''         | ''   | ''           | ''          | ''          | ''         |
	
