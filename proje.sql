-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 May 2019, 23:07:56
-- Sunucu sürümü: 10.1.28-MariaDB
-- PHP Sürümü: 7.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adminler`
--

CREATE TABLE `adminler` (
  `username` text CHARACTER SET latin1 NOT NULL,
  `password` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `adminler`
--

INSERT INTO `adminler` (`username`, `password`) VALUES
('seyma', 'seyma'),
('melike', 'melike'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hammaddesatinalma`
--

CREATE TABLE `hammaddesatinalma` (
  `hammaddeAdi` text COLLATE utf8_turkish_ci NOT NULL,
  `istenilenMiktar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hammaddesatinalma`
--

INSERT INTO `hammaddesatinalma` (`hammaddeAdi`, `istenilenMiktar`) VALUES
('O', 40);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kimyasalmadde`
--

CREATE TABLE `kimyasalmadde` (
  `urunID` int(11) NOT NULL,
  `kimyasalBilesen` text COLLATE utf8_turkish_ci NOT NULL,
  `gerekenMiktar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kimyasalmadde`
--

INSERT INTO `kimyasalmadde` (`urunID`, `kimyasalBilesen`, `gerekenMiktar`) VALUES
(1, 'H', 3),
(1, 'N', 1),
(2, 'C', 1),
(2, 'O', 2),
(3, 'O', 2),
(3, 'S', 1),
(4, 'C', 6),
(4, 'H', 12),
(4, 'O', 6),
(5, 'Cl', 1),
(5, 'H', 1),
(6, 'C', 2),
(6, 'H', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kimyasalmaddeadlari`
--

CREATE TABLE `kimyasalmaddeadlari` (
  `urunID` int(11) NOT NULL,
  `kimyasalAdi` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kimyasalmaddeadlari`
--

INSERT INTO `kimyasalmaddeadlari` (`urunID`, `kimyasalAdi`) VALUES
(1, 'Amonyak'),
(2, 'Karbondioksit'),
(3, 'Kukurtdioksit'),
(4, 'Glikoz'),
(5, 'Hidrojen Klorur'),
(6, 'Asetilen');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteribilgiler`
--

CREATE TABLE `musteribilgiler` (
  `MID` int(11) NOT NULL,
  `musteriAd` text COLLATE utf8_turkish_ci NOT NULL,
  `mahalle` text COLLATE utf8_turkish_ci NOT NULL,
  `cadde` text COLLATE utf8_turkish_ci NOT NULL,
  `sehir` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteribilgiler`
--

INSERT INTO `musteribilgiler` (`MID`, `musteriAd`, `mahalle`, `cadde`, `sehir`) VALUES
(1, 'Seymanur Mutlu', '46 Baggot Street', '9th Flor', 'Berlin'),
(2, 'Melike Oguz', '350 Water Street', '5th Flor', 'Londra'),
(3, 'Leyla Yasar', 'Irmak Mahallesi', 'Ufuk Caddesi', 'Ankara'),
(4, 'Kagan Sayar', 'Kiraz Mahallesi', 'Isik Caddesi', 'Eskisehir'),
(5, 'Furkan Karasu', 'Ataturk Mahallesi', 'Alemdag Caddesi', 'Istanbul'),
(6, 'Tolga Varol', 'Emek Mahallesi', 'Akınturk Caddesi', 'Ankara'),
(7, 'Eylul Sagyasar', 'Kuzey Mahallesi', 'Gundogdu Caddesi', 'Istanbul'),
(8, 'Kagan Sayar', 'Visnezade Mahallesi', 'Sema Caddesi', 'Gaziantep'),
(9, 'Ali Kara', 'Tepekoy Mahallesi', 'Sandalye Caddesi', 'Eskisehir'),
(10, 'Hazal Mutlu', 'Yildiz Mahallesi', 'Mutluluk Caddesi', 'Ankara'),
(11, 'Hakan Bilgin', 'Kablo', 'Jumper', 'Eskisehir');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteritalep`
--

CREATE TABLE `musteritalep` (
  `talepSirasi` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `talepEdilenUrun` text COLLATE utf8_turkish_ci NOT NULL,
  `talepSayisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteritalep`
--

INSERT INTO `musteritalep` (`talepSirasi`, `MID`, `talepEdilenUrun`, `talepSayisi`) VALUES
(1, 1, 'Amonyak', 50),
(2, 2, 'Karbondioksit', 30);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sehirlerarasimesafe`
--

CREATE TABLE `sehirlerarasimesafe` (
  `sehirSirasi` int(11) NOT NULL,
  `sehirler` text COLLATE utf8_turkish_ci NOT NULL,
  `mesafe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sehirlerarasimesafe`
--

INSERT INTO `sehirlerarasimesafe` (`sehirSirasi`, `sehirler`, `mesafe`) VALUES
(1, 'Ankara', 342),
(2, 'Eskisehir', 214),
(3, 'Gaziantep', 1000),
(4, 'Istanbul', 111),
(5, 'Londra', 2582),
(6, 'Berlin', 1809),
(7, 'SarayBosna', 1008);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tedarikcibilgiler`
--

CREATE TABLE `tedarikcibilgiler` (
  `FID` int(11) NOT NULL,
  `firmaAdi` text COLLATE utf8_turkish_ci NOT NULL,
  `ulke` text COLLATE utf8_turkish_ci NOT NULL,
  `sehir` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tedarikcibilgiler`
--

INSERT INTO `tedarikcibilgiler` (`FID`, `firmaAdi`, `ulke`, `sehir`) VALUES
(1, 'ANK1', 'Turkiye', 'Ankara'),
(2, 'ESK1', 'Turkiye', 'Eskisehir'),
(3, 'GAZ1', 'Turkiye', 'Gaziantep'),
(4, 'IST1', 'Turkiye', 'Istanbul'),
(5, 'IST2', 'Turkiye', 'Istanbul'),
(6, 'IST3', 'Turkiye', 'Istanbul'),
(7, 'LON1', 'Londra', 'Londra'),
(8, 'BER1', 'Berlin', 'Berlin'),
(9, 'BER2', 'Berlin', 'Berlin'),
(10, 'SB1', 'Saraybosna', 'Saraybosna'),
(11, 'SB2', 'SarayBosna', 'Saraybosna');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tedarikedilenurunbilgileri`
--

CREATE TABLE `tedarikedilenurunbilgileri` (
  `FID` int(11) NOT NULL,
  `uretilenHammadde` text COLLATE utf8_turkish_ci NOT NULL,
  `hammaddeMiktari` int(11) NOT NULL,
  `urtTarih` text COLLATE utf8_turkish_ci NOT NULL,
  `rafOmru` int(11) NOT NULL,
  `satisFiyati` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tedarikedilenurunbilgileri`
--

INSERT INTO `tedarikedilenurunbilgileri` (`FID`, `uretilenHammadde`, `hammaddeMiktari`, `urtTarih`, `rafOmru`, `satisFiyati`) VALUES
(1, 'C', 150, '11082019', 3, 10),
(1, 'N', 100, '13052019', 1, 8),
(1, 'O', 400, '14022019', 4, 11),
(1, 'H', 300, '14052019', 2, 9),
(1, 'S', 200, '15052019', 1, 12),
(1, 'Cl', 250, '15062018', 3, 13),
(2, 'H', 15, '14062019', 1, 2),
(2, 'N', 10, '19042019', 2, 1),
(2, 'N', 10, '24042019', 2, 1),
(2, 'C', 20, '24052019', 1, 3),
(3, 'N', 150, '12082019', 2, 3),
(3, 'H', 200, '13082019', 2, 4),
(3, 'C', 200, '16102019', 3, 5),
(3, 'S', 200, '17032019', 1, 6),
(3, 'Cl', 200, '27042018', 2, 7),
(4, 'N', 1000, '12042018', 2, 10),
(4, 'O', 1000, '14022019', 6, 13),
(4, 'C', 2000, '15042019', 5, 12),
(4, 'S', 1000, '17112018', 2, 14),
(4, 'Cl', 1000, '19092019', 2, 14),
(4, 'H', 3000, '23122019', 3, 11),
(5, 'C', 50, '05122018', 4, 8),
(5, 'N', 50, '06122019', 6, 7),
(5, 'H', 50, '12052019', 5, 10),
(5, 'O', 50, '14052019', 4, 9),
(6, 'S', 30, '01082019', 3, 8),
(6, 'N', 30, '09102019', 2, 5),
(6, 'O', 30, '12062018', 3, 7),
(6, 'H', 30, '15022019', 2, 7),
(6, 'Cl', 40, '16052019', 4, 8),
(6, 'C', 30, '17082019', 2, 7),
(7, 'H', 1000, '08082018', 4, 25),
(7, 'N', 1000, '09032019', 3, 20),
(7, 'C', 1000, '09092019', 2, 30),
(8, 'C', 1000, '01012019', 3, 11),
(8, 'H', 1000, '05052019', 2, 8),
(8, 'N', 500, '07072017', 4, 7),
(8, 'O', 2000, '08062019', 9, 9),
(8, 'S', 600, '14042018', 5, 10),
(9, 'C', 200, '02032015', 9, 5),
(9, 'N', 100, '02032016', 10, 3),
(9, 'H', 300, '04052019', 3, 4),
(9, 'Cl', 100, '08092019', 2, 8),
(9, 'O', 300, '10102017', 10, 6),
(9, 'S', 100, '17122019', 2, 7),
(10, 'C', 5, '06062018', 2, 2),
(10, 'S', 10, '07082017', 7, 4),
(10, 'O', 5, '08042016', 5, 3),
(10, 'N', 10, '15012019', 1, 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ureticialis`
--

CREATE TABLE `ureticialis` (
  `satinAlmaSirasi` int(11) NOT NULL,
  `firmaAdi` text COLLATE utf8_turkish_ci NOT NULL,
  `satinAlinan` text COLLATE utf8_turkish_ci NOT NULL,
  `alisMaliyeti` int(11) NOT NULL,
  `alinanMaddeMiktari` int(11) NOT NULL,
  `stokSayisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ureticialis`
--

INSERT INTO `ureticialis` (`satinAlmaSirasi`, `firmaAdi`, `satinAlinan`, `alisMaliyeti`, `alinanMaddeMiktari`, `stokSayisi`) VALUES
(1, 'ANK1', 'H', 540, 60, 60),
(2, 'SB1', 'N', 20, 20, 20),
(3, 'ESK1', 'C', 60, 20, 20),
(4, 'SB1', 'O', 120, 40, 40);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ureticibilgi`
--

CREATE TABLE `ureticibilgi` (
  `FID` int(11) NOT NULL,
  `firmaAdi` text COLLATE utf8_turkish_ci NOT NULL,
  `sehir` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ureticibilgi`
--

INSERT INTO `ureticibilgi` (`FID`, `firmaAdi`, `sehir`) VALUES
(1, 'Klon Kimya', 'Ankara');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ureticisatis`
--

CREATE TABLE `ureticisatis` (
  `satisSirasi` int(11) NOT NULL,
  `urunID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `iscilikMaliyeti` int(11) NOT NULL,
  `toplamMaliyet` int(11) NOT NULL,
  `satisFiyati` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ureticisatis`
--

INSERT INTO `ureticisatis` (`satisSirasi`, `urunID`, `MID`, `iscilikMaliyeti`, `toplamMaliyet`, `satisFiyati`) VALUES
(1, 1, 1, 560, 600, 850),
(2, 2, 2, 80, 250, 375);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ureticiuretilen`
--

CREATE TABLE `ureticiuretilen` (
  `urunID` int(11) NOT NULL,
  `kimyasalAdi` text COLLATE utf8_turkish_ci NOT NULL,
  `uretimTarihi` text COLLATE utf8_turkish_ci NOT NULL,
  `rafOmru` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ureticiuretilen`
--

INSERT INTO `ureticiuretilen` (`urunID`, `kimyasalAdi`, `uretimTarihi`, `rafOmru`, `stok`) VALUES
(1, 'Amonyak', '01012019', 9, 50),
(1, 'Amonyak', '13122019', 14, 20),
(1, 'Amonyak', '14072019', 6, 10),
(1, 'Amonyak', '19092019', 8, 40),
(2, 'Karbondioksit', '11082019', 6, 200),
(2, 'Karbondioksit', '17102019', 12, 30),
(3, 'Kukurtdioksit', '14082019', 5, 50),
(4, 'Glikoz', '04042019', 17, 10),
(5, 'Hidrojen Klorur', '19112027', 3, 50),
(6, 'Asetilen', '11022016', 5, 10),
(6, 'Asetilen', '13062019', 5, 50);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kimyasalmadde`
--
ALTER TABLE `kimyasalmadde`
  ADD PRIMARY KEY (`urunID`,`kimyasalBilesen`(2));

--
-- Tablo için indeksler `kimyasalmaddeadlari`
--
ALTER TABLE `kimyasalmaddeadlari`
  ADD PRIMARY KEY (`urunID`);

--
-- Tablo için indeksler `musteribilgiler`
--
ALTER TABLE `musteribilgiler`
  ADD PRIMARY KEY (`MID`);

--
-- Tablo için indeksler `musteritalep`
--
ALTER TABLE `musteritalep`
  ADD PRIMARY KEY (`talepSirasi`);

--
-- Tablo için indeksler `sehirlerarasimesafe`
--
ALTER TABLE `sehirlerarasimesafe`
  ADD PRIMARY KEY (`sehirSirasi`);

--
-- Tablo için indeksler `tedarikcibilgiler`
--
ALTER TABLE `tedarikcibilgiler`
  ADD PRIMARY KEY (`FID`);

--
-- Tablo için indeksler `tedarikedilenurunbilgileri`
--
ALTER TABLE `tedarikedilenurunbilgileri`
  ADD PRIMARY KEY (`FID`,`urtTarih`(8));

--
-- Tablo için indeksler `ureticialis`
--
ALTER TABLE `ureticialis`
  ADD PRIMARY KEY (`satinAlmaSirasi`);

--
-- Tablo için indeksler `ureticibilgi`
--
ALTER TABLE `ureticibilgi`
  ADD PRIMARY KEY (`FID`);

--
-- Tablo için indeksler `ureticisatis`
--
ALTER TABLE `ureticisatis`
  ADD PRIMARY KEY (`satisSirasi`);

--
-- Tablo için indeksler `ureticiuretilen`
--
ALTER TABLE `ureticiuretilen`
  ADD PRIMARY KEY (`urunID`,`uretimTarihi`(8));

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kimyasalmaddeadlari`
--
ALTER TABLE `kimyasalmaddeadlari`
  MODIFY `urunID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `musteribilgiler`
--
ALTER TABLE `musteribilgiler`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `musteritalep`
--
ALTER TABLE `musteritalep`
  MODIFY `talepSirasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `sehirlerarasimesafe`
--
ALTER TABLE `sehirlerarasimesafe`
  MODIFY `sehirSirasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `tedarikcibilgiler`
--
ALTER TABLE `tedarikcibilgiler`
  MODIFY `FID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `ureticialis`
--
ALTER TABLE `ureticialis`
  MODIFY `satinAlmaSirasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `ureticibilgi`
--
ALTER TABLE `ureticibilgi`
  MODIFY `FID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `ureticisatis`
--
ALTER TABLE `ureticisatis`
  MODIFY `satisSirasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
