-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Jún 12. 12:49
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `products`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Product_Name` varchar(64) COLLATE utf8_hungarian_ci NOT NULL,
  `Product_Pic` varchar(120) COLLATE utf8_hungarian_ci NOT NULL,
  `Product_Disc` varchar(500) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `product`
--

INSERT INTO `product` (`ID`, `Product_Name`, `Product_Pic`, `Product_Disc`) VALUES
(1, 'Gumikacsa', 'kacsa.jpg', 'Ez a termék kiválóan lebeg a víz felszínén és szórakoztatja a fürdőző gyerkőcöket.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products2`
--

CREATE TABLE `products2` (
  `Product_ID` int(11) NOT NULL,
  `Product_Price` varchar(11) COLLATE utf8_hungarian_ci NOT NULL,
  `Product_Name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Product_Disc` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Product_Pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Product_Cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `products2`
--

INSERT INTO `products2` (`Product_ID`, `Product_Price`, `Product_Name`, `Product_Disc`, `Product_Pic`, `Product_Cat`) VALUES
(1, '490', 'Gumikacsa', 'A termék kiválóan lebeg a víz felszínén amíg a gyerkőcök fürdőznek így örömtelibbé téve a mosakodást.', 'kacsa.jpg', 1),
(2, '49.000', 'Fürdőkád', 'Egy kimerítő nap után jól esik elmerülni a habok között egy ilyen remek kádban.', 'kad.jpg', 1),
(3, '29.999', 'Csaptelep', 'Ez a remek csaptelep bármely zuhanykabinban vagy mosdókagylón jól mutat.', 'csaptelep.jpg', 1),
(4, '41.799', 'Mosdókagyló', 'Kialakításának köszönhetően gyorsan az elvezető felé tereli a vizet, mérete elég nagy hogy a víz nem fröccsenjen mellé.', 'kagylo.jpg', 1),
(5, '267.899', 'Zuhanykabin', 'Full extrás, gőzmotoros, minden vásárlói igényt kielégítő zuhanykabin.', 'kabin.jpg', 1),
(7, '6.799', 'Zuhanyfüggöny', 'Jól takaró, 3méter x 2 méteres, tartóval együtt.', 'zuhanyfuggony.jpg', 1),
(8, '399', 'Szappan', 'Kókuszos, levendulás kézműves szappanok.', 'szappan.jpg', 1),
(9, '19.199', 'Fürdőszobatükör', 'A legismertebb tükrök a síktükrök, velük lehet a legtöbbször találkozni a mindennapi életben, a fürdőszobában.', 'tukor.jpg', 1),
(10, '14.759', 'Szappanadagoló', 'Tartsa kezét egy pillanatra az adagoló alá amíg az tenyerébe nem helyez egy kézmosáshoz elegendő szappant mennyiséget.', 'szappanadagolo.jpg', 1),
(11, '1.299', 'Törölköző', 'Sárga, kék, piros, zöld színben kapható.\r\n2x 30x50 cm', 'torolkozo.jpg', 1),
(12, '6.899', 'Szappanartó', 'A szappantartó víztől óvott helyen tartja a szappant amíg az nincs éppen használatban.', 'szappantarto.jpg', 1),
(13, '489', 'Fogkefe', 'Jó minőségű színes fogkefék.', 'fogkefe.jpg', 1),
(14, '2.199', 'Törölközőtartó', 'Alkalmas törölközök tárolására, melyek itt könnyebben száradnak meg két használat között.', 'torolkozotarto.jpg', 1),
(15, '5.699', 'Csepegtető', 'A frissen elmosott edényeknek, tálaknak, csészéknek és poharaknak.', 'csepegteto.jpg', 2),
(16, '1.999', 'Tányér készlet', '6db-os tányér készlet.', 'tanyer.jpg', 2),
(17, '799', 'Villa', 'Előételes / Desszertes villakészlet 6db-os.', 'villa.jpg', 2),
(18, '799', 'Kanál', 'Levesekhez 6db-os szett.', 'leveseskanal.jpg', 2),
(19, '4.999', 'Asztalterítő', 'Virágos minta 3 Átm. Díszteríték', 'asztalterito.jpg', 2),
(20, '17.899', 'Mosogatócsap', 'Csaptelep mosogatáshoz, konyhába.', 'mosogatocsaptelep.jpg', 2),
(21, '9.899', 'Edény', 'Főzéshez, vastagfalú, zománcozott edény.', 'edeny.jpg', 2),
(22, '12.999', 'Üvegedény', 'Sütőbe,húsoknak és rakott ételeknek.', 'uvegedeny.jpg', 2),
(23, '159.999', 'Hűtőszekrény', 'Energiatalarékos, ECO- Mód, 2x0,6x1-es.', 'hutoszekreny.jpg', 2),
(24, '8.999', 'Ebédlőszék', 'Fa szerkezetes ebédlőszék, masszív.', 'ebedloszek.jpg', 2),
(25, '17.999', 'Csillár', '4 égős hagyományos, jól teríti a fényt.', 'csillar.jpg', 3),
(26, '138.999', 'Kanapé', 'Kihúzható alváshoz, 2 személyes.', 'kanape.png', 3),
(27, '78.999', 'Komód', 'Eszköztárolóshoz tökéletes.', 'komod.jpg', 3),
(28, '44.999', 'Kávézóasztal', 'Egy kávé melletti beszélgetéshez, vagy csak relaxáláshoz.', 'kavezos.jpg', 3),
(29, '39.999', 'Fotel', 'Kényelmes üléshez, meccsnézéshez.', 'fotel.jpg', 3),
(30, '11.599', 'Álló Lámpa', 'Éjszakai olvasáshoz ajánlott.', 'allolampa.jpg', 3),
(31, '47.999', 'Könyvespolc', 'A könyvek tárolására.', 'konyvespolc.jpg', 3),
(32, '6.999', 'Asztali lámpa', 'Megvilágítani az asztal tartalmát.', 'asztali.jpg', 3),
(33, '37.999', 'Íróasztal', 'Munkához vagy szórakozáshoz, vagy kettő az egyben.', 'iroasztal.jpg', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `product_cat`
--

CREATE TABLE `product_cat` (
  `P_Cat_ID` int(11) NOT NULL,
  `Product_Cat_Name` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szemely`
--

CREATE TABLE `szemely` (
  `szemely_id` int(11) NOT NULL,
  `szemely_felh` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `szemely_rang` int(11) NOT NULL,
  `szemely_jelszo` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szemely`
--

INSERT INTO `szemely` (`szemely_id`, `szemely_felh`, `szemely_rang`, `szemely_jelszo`) VALUES
(1, 'admin', 0, 'admin');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `products2`
--
ALTER TABLE `products2`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Product_Cat` (`Product_Cat`);

--
-- A tábla indexei `product_cat`
--
ALTER TABLE `product_cat`
  ADD PRIMARY KEY (`P_Cat_ID`);

--
-- A tábla indexei `szemely`
--
ALTER TABLE `szemely`
  ADD PRIMARY KEY (`szemely_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `products2`
--
ALTER TABLE `products2`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT a táblához `szemely`
--
ALTER TABLE `szemely`
  MODIFY `szemely_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
