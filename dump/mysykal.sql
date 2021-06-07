#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=C:/Users/2/Downloads/Microsoft Access База данных.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=movedb
#   storageengine=MyISAM
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

CREATE DATABASE IF NOT EXISTS `movedb`;
USE `movedb`;

#
# Table structure for table 'Группы'
#

DROP TABLE IF EXISTS `Группы`;

CREATE TABLE `Группы` (
  `Код группы` INTEGER NOT NULL AUTO_INCREMENT, 
  `Номер группы` VARCHAR(255), 
  `Дата образования` DATETIME, 
  `Форма обучения` VARCHAR(255), 
  `Плата за семестр` DECIMAL(19,4) DEFAULT 0, 
  `Обучение закончено` TINYINT(1) DEFAULT 0, 
  PRIMARY KEY (`Код группы`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Группы'
#

INSERT INTO `Группы` (`Код группы`, `Номер группы`, `Дата образования`, `Форма обучения`, `Плата за семестр`, `Обучение закончено`) VALUES (1, '10.1', '2021-02-19 00:00:00', 'Заочная', 30000, 1);
INSERT INTO `Группы` (`Код группы`, `Номер группы`, `Дата образования`, `Форма обучения`, `Плата за семестр`, `Обучение закончено`) VALUES (2, '10.1', '2021-02-19 00:00:00', 'Очная', 0, 1);
INSERT INTO `Группы` (`Код группы`, `Номер группы`, `Дата образования`, `Форма обучения`, `Плата за семестр`, `Обучение закончено`) VALUES (3, '10.2', '2021-02-19 00:00:00', 'Заочная', 28000, 0);
INSERT INTO `Группы` (`Код группы`, `Номер группы`, `Дата образования`, `Форма обучения`, `Плата за семестр`, `Обучение закончено`) VALUES (5, '10.4', '2021-02-19 00:00:00', 'Очная', 0, 0);
INSERT INTO `Группы` (`Код группы`, `Номер группы`, `Дата образования`, `Форма обучения`, `Плата за семестр`, `Обучение закончено`) VALUES (6, '10.1', NULL, NULL, 0, 0);
# 5 records

#
# Table structure for table 'Дисциплина'
#

DROP TABLE IF EXISTS `Дисциплина`;

CREATE TABLE `Дисциплина` (
  `Код предмета` INTEGER NOT NULL DEFAULT 0, 
  `Название` VARCHAR(255), 
  PRIMARY KEY (`Код предмета`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Дисциплина'
#

INSERT INTO `Дисциплина` (`Код предмета`, `Название`) VALUES (1, 'Алгебра');
INSERT INTO `Дисциплина` (`Код предмета`, `Название`) VALUES (2, 'Геометрия');
INSERT INTO `Дисциплина` (`Код предмета`, `Название`) VALUES (3, 'Физика');
# 3 records

#
# Table structure for table 'Оценки'
#

DROP TABLE IF EXISTS `Оценки`;

CREATE TABLE `Оценки` (
  `Код записи` INTEGER NOT NULL AUTO_INCREMENT, 
  `Код студента` INTEGER DEFAULT 0, 
  `Семестр` INTEGER DEFAULT 0, 
  `Дата сдачи` DATETIME, 
  `Код ПД` INTEGER DEFAULT 0, 
  `Вид контроля` VARCHAR(255), 
  `Оценка` INTEGER DEFAULT 0, 
  `Дисциплина` INTEGER DEFAULT 0, 
  PRIMARY KEY (`Код записи`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Оценки'
#

INSERT INTO `Оценки` (`Код записи`, `Код студента`, `Семестр`, `Дата сдачи`, `Код ПД`, `Вид контроля`, `Оценка`, `Дисциплина`) VALUES (8, 3, 3, '2021-02-19 00:00:00', 3, 'Экзамен', 4, 2);
INSERT INTO `Оценки` (`Код записи`, `Код студента`, `Семестр`, `Дата сдачи`, `Код ПД`, `Вид контроля`, `Оценка`, `Дисциплина`) VALUES (10, 4, 3, '2021-02-19 00:00:00', 6, 'Диф.Зачет', 3, 3);
INSERT INTO `Оценки` (`Код записи`, `Код студента`, `Семестр`, `Дата сдачи`, `Код ПД`, `Вид контроля`, `Оценка`, `Дисциплина`) VALUES (2, 2, 4, '2021-02-19 00:00:00', 2, 'Диф.Зачет', 4, 1);
INSERT INTO `Оценки` (`Код записи`, `Код студента`, `Семестр`, `Дата сдачи`, `Код ПД`, `Вид контроля`, `Оценка`, `Дисциплина`) VALUES (4, 7, 2, '2021-02-04 00:00:00', 2, 'Зачет', 3, 2);
INSERT INTO `Оценки` (`Код записи`, `Код студента`, `Семестр`, `Дата сдачи`, `Код ПД`, `Вид контроля`, `Оценка`, `Дисциплина`) VALUES (5, 4, 3, '2021-02-04 00:00:00', 4, 'Зачет', 3, 3);
# 5 records

#
# Table structure for table 'Преподаватель'
#

DROP TABLE IF EXISTS `Преподаватель`;

CREATE TABLE `Преподаватель` (
  `Код преподавателя` INTEGER NOT NULL AUTO_INCREMENT, 
  `Фамилия` VARCHAR(255), 
  `Имя` VARCHAR(255), 
  `Отчество` VARCHAR(255), 
  `Пол` VARCHAR(255), 
  `Фотография` LONGBLOB, 
  `Дата рождения` DATETIME, 
  `Дата приема` DATETIME, 
  `Телефон` VARCHAR(255), 
  PRIMARY KEY (`Код преподавателя`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Преподаватель'
#

INSERT INTO `Преподаватель` (`Код преподавателя`, `Фамилия`, `Имя`, `Отчество`, `Пол`, `Фотография`, `Дата рождения`, `Дата приема`, `Телефон`) VALUES (2, 'Иванов', 'Иван', 'Иванович', 'Мужской', NULL, '1980-08-13 00:00:00', '2016-10-29 00:00:00', '+7(978)3132511');
INSERT INTO `Преподаватель` (`Код преподавателя`, `Фамилия`, `Имя`, `Отчество`, `Пол`, `Фотография`, `Дата рождения`, `Дата приема`, `Телефон`) VALUES (3, 'Ермаков', 'Андрей', 'Алексеевич', 'Мужской', NULL, '1988-09-21 00:00:00', '2015-11-20 00:00:00', '+7(978)73412511');
INSERT INTO `Преподаватель` (`Код преподавателя`, `Фамилия`, `Имя`, `Отчество`, `Пол`, `Фотография`, `Дата рождения`, `Дата приема`, `Телефон`) VALUES (1, 'Кучеренко', 'Ярослав', 'Александрович', 'Мужской', NULL, '1982-10-20 00:00:00', '2015-10-28 00:00:00', '+7(978)8412351');
# 3 records

#
# Table structure for table 'Преподаватель - дисциплина'
#

DROP TABLE IF EXISTS `Преподаватель - дисциплина`;

CREATE TABLE `Преподаватель - дисциплина` (
  `Код ПД` INTEGER NOT NULL AUTO_INCREMENT, 
  `Код дисциплины` INTEGER DEFAULT 0, 
  `Код преподавателя` INTEGER DEFAULT 0, 
  PRIMARY KEY (`Код ПД`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Преподаватель - дисциплина'
#

INSERT INTO `Преподаватель - дисциплина` (`Код ПД`, `Код дисциплины`, `Код преподавателя`) VALUES (2, 1, 1);
INSERT INTO `Преподаватель - дисциплина` (`Код ПД`, `Код дисциплины`, `Код преподавателя`) VALUES (3, 1, 1);
INSERT INTO `Преподаватель - дисциплина` (`Код ПД`, `Код дисциплины`, `Код преподавателя`) VALUES (4, 2, 2);
INSERT INTO `Преподаватель - дисциплина` (`Код ПД`, `Код дисциплины`, `Код преподавателя`) VALUES (6, 3, 3);
# 4 records

#
# Table structure for table 'Студент'
#

DROP TABLE IF EXISTS `Студент`;

CREATE TABLE `Студент` (
  `Код студента` INTEGER NOT NULL AUTO_INCREMENT, 
  `Фамилия` VARCHAR(255), 
  `Имя` VARCHAR(255), 
  `Отчество` VARCHAR(255), 
  `Код группы` INTEGER DEFAULT 0, 
  `Дата рождения` DATETIME, 
  `Паспорт-серия` INTEGER DEFAULT 0, 
  `Паспорт-номер` INTEGER DEFAULT 0, 
  `Фотография` LONGBLOB, 
  `Телефон` VARCHAR(255), 
  PRIMARY KEY (`Код студента`), 
  INDEX (`Паспорт-номер`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Студент'
#

INSERT INTO `Студент` (`Код студента`, `Фамилия`, `Имя`, `Отчество`, `Код группы`, `Дата рождения`, `Паспорт-серия`, `Паспорт-номер`, `Фотография`, `Телефон`) VALUES (2, 'Коротков', 'Сергей', 'Алексеевич', 1, '2002-10-21 00:00:00', 3915, 323341, NULL, '+7(978)3123412');
INSERT INTO `Студент` (`Код студента`, `Фамилия`, `Имя`, `Отчество`, `Код группы`, `Дата рождения`, `Паспорт-серия`, `Паспорт-номер`, `Фотография`, `Телефон`) VALUES (3, 'Магомедов', 'Андрей', 'Алексеевич', 2, '2002-10-14 00:00:00', 3915, 231231, NULL, '+7(978)9344221');
INSERT INTO `Студент` (`Код студента`, `Фамилия`, `Имя`, `Отчество`, `Код группы`, `Дата рождения`, `Паспорт-серия`, `Паспорт-номер`, `Фотография`, `Телефон`) VALUES (4, 'Дьяченко', 'Евкакий', 'Андреевич', 3, '2002-09-10 00:00:00', 3915, 381231, NULL, '+7(978)2138211');
INSERT INTO `Студент` (`Код студента`, `Фамилия`, `Имя`, `Отчество`, `Код группы`, `Дата рождения`, `Паспорт-серия`, `Паспорт-номер`, `Фотография`, `Телефон`) VALUES (7, 'Макаренков', 'Андрей', 'Сергеевич', 5, '2002-04-12 00:00:00', 3915, 731231, NULL, '+7(978)4123551');
# 4 records

