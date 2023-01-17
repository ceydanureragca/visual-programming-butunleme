-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 17 Oca 2023, 16:16:20
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `fitnesscenter_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `antrenmanlar`
--

DROP TABLE IF EXISTS `antrenmanlar`;
CREATE TABLE IF NOT EXISTS `antrenmanlar` (
  `id` int(11) NOT NULL,
  `antrenmanAD` varchar(100) NOT NULL,
  `antrenmanEgitmen` varchar(100) NOT NULL,
  `antrenmanSaat` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `antrenmanlar`
--

INSERT INTO `antrenmanlar` (`id`, `antrenmanAD`, `antrenmanEgitmen`, `antrenmanSaat`) VALUES
(1, 'Yoga', 'Merve Papuc', '22:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `egitmenler`
--

DROP TABLE IF EXISTS `egitmenler`;
CREATE TABLE IF NOT EXISTS `egitmenler` (
  `id` int(11) NOT NULL,
  `antrenorAdSoyad` varchar(100) NOT NULL,
  `antrenorDGT` varchar(100) NOT NULL,
  `antrenorPass` varchar(100) NOT NULL,
  `antrenorMail` varchar(100) NOT NULL,
  `antrenorCinsiyet` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `egitmenler`
--

INSERT INTO `egitmenler` (`id`, `antrenorAdSoyad`, `antrenorDGT`, `antrenorPass`, `antrenorMail`, `antrenorCinsiyet`) VALUES
(1, 'Aysun Hanci', '12.07.1997', 'aysun1504', 'aysunhanci@gmail.com', 'Kadin'),
(2, 'ceydanur eragca', '12', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

DROP TABLE IF EXISTS `kullanicilar`;
CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `id` int(11) NOT NULL,
  `userAccName` varchar(100) NOT NULL,
  `userPassword` varchar(100) NOT NULL,
  `userRealName` varchar(100) NOT NULL,
  `userMail` varchar(100) NOT NULL,
  `userDGT` varchar(10) NOT NULL,
  `userCinsiyet` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `userAccName`, `userPassword`, `userRealName`, `userMail`, `userDGT`, `userCinsiyet`) VALUES
(1, 'admin', 'admin', 'Ceydanur Eragca', 'eragcaceydanur@gmail.com ', '04.12.2002', 'Kadin'),
(2, 'deneme', 'deneme', 'deneme', 'deneme', '12.05.1995', 'Kadin'),
(3, 'enes', 'enes', 'enes', 'enes@enes.sahin', '12.07.1997', 'Erkek'),
(4, 'deneme1', 'deneme1', 'deneme1', 'deneme1', '15.12.1995', 'Kadin'),
(5, 'seyma', '123', 'seymanur', 'seyma@gmail.com', '13.12.2002', 'kadin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odemeler`
--

DROP TABLE IF EXISTS `odemeler`;
CREATE TABLE IF NOT EXISTS `odemeler` (
  `id` int(11) NOT NULL,
  `userAccName` varchar(100) NOT NULL,
  `userRealName` varchar(100) NOT NULL,
  `userPayment` varchar(100) NOT NULL,
  `userDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
