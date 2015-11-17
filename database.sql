SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DELIMITER $$
CREATE PROCEDURE `insertIntoTUserDetails`(
        IN user_name varchar(50),
        IN user_pn char(10)

    )
BEGIN
	INSERT INTO TUserDetails
    	(
            `name`,
            `phonenumber`
        )
     VALUES
     	(
            user_name,
            user_pn
        );
END$$

CREATE PROCEDURE `selectById_TUserDetails`(
        INOUT user_id int(6),
        OUT user_name varchar(50),
        OUT user_pn char(10)
    )
BEGIN
    SELECT id, name, phonenumber
    INTO user_id, user_name, user_pn
    FROM TUserDetails 
    WHERE ID = user_id;
    IF user_name IS NULL THEN SET user_id = NULL; 
    END IF;
END$$

DELIMITER ;

CREATE TABLE IF NOT EXISTS `TUserDetails` (
  `id` int(6) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phonenumber` char(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

INSERT INTO `TUserDetails` (`id`, `name`, `phonenumber`) VALUES
(1, 'NAME1', '1234567890'),
(2, 'NAAME2', '1234567890'),
(3, 'NAME3', '0987654321'),
(4, 'NAME3', '0984321'),
(5, 'djkls', '1234567890'),
(6, 'jdkfl', '7878972183'),
(7, 'hon', '1253621576'),
(8, 'hon', '1253621576'),
(9, 'hon', '1253621576'),
(10, 'hon', '1253621576'),
(11, 'hon', '1253621576'),
(12, 'hon', '1253621576'),
(13, 'hon', '1253621576'),
(14, 'hon', '1253621576'),
(15, 'someone', 'thatjfkdla'),
(16, 'hon', '1253621576'),
(17, 'hon', '1253621576'),
(18, 'fjdkla', 'jfkldsa'),
(19, 'fjdkla', '2813672186'),
(20, 'somethin', '123456789'),
(21, 'data', '1234567890'),
(22, 'new entry', 'herekkfdsl'),
(23, 'name', '23456789'),
(24, 'fjkldafajfkldajkflsa', '3456789'),
(25, 'fjksadl', '99999999'),
(26, 'some', 'jfdklsa'),
(27, 'some', 'jfdklsa'),
(28, 'fdjalk', '23456789'),
(29, 'jkldsaj', 'jfkjfkdsa'),
(30, 'vishal', '1234567890'),
(31, 'djfal', 'jfkldsa'),
(32, 'ravi', '1234567890'),
(33, 'fklaj', 'fjdklsa'),
(34, 'fklaj', 'fjdklsa'),
(35, 'fjkdla', 'jfkdla'),
(36, 'fjkdla', 'jfkdla'),
(37, 'jfdkla', 'jfkljal'),
(38, 'fjdakl', 'jfkldaj'),
(39, 'fjdakl', 'jfkldaj'),
(40, 'jfkald', 'jfklda'),
(41, 'fdla', '23456789'),
(42, 'fjdakl', '123456789'),
(43, 'fjdakl', '123456789'),
(44, 'fdkas', 'jkfdlajklf'),
(45, 'jfdklaj', 'jkljlkfad'),
(46, 'jfklads', 'jkfldajlfa'),
(47, 'jfkldsa', 'jfkldaklfa'),
(48, 'ashim', '1234567890'),
(49, 'fjkdlsa', '123456789'),
(50, 'bshsb', '726364748'),
(51, 'bshsb', '726364748'),
(52, 'bshsb', '726364748'),
(53, 'bshsb', '726364748'),
(54, 'bshsb', '726364748'),
(55, 'bshsb', '726364748'),
(56, 'bshsb', '726364748'),
(57, 'bshsb', '726364748'),
(58, 'bshsb', '726364748'),
(59, 'bshsb', '726364748'),
(60, 'bshsb', '726364748'),
(61, 'ty', 'hdhd'),
(62, 'tester', 'qwertty j'),
(63, 'testyyyy', '1234466;&&'),
(64, 'testyyyy', '1234466;&&'),
(65, 'dude', 'dude'),
(66, 'dude', 'dude'),
(67, 'power', 'full'),
(68, 'power', 'full'),
(69, 'par', 'par'),
(70, 'par', 'par'),
(71, 'par', ''),
(72, 'par', '1253621576'),
(73, 'bishal', '1234566789');


ALTER TABLE `TUserDetails`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `TUserDetails`
  MODIFY `id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;