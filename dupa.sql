-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 20, 2023 at 02:54 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dupa`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `games`
--

CREATE TABLE `games` (
  `ID_GAMES` int(11) NOT NULL,
  `NAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`ID_GAMES`, `NAME`) VALUES
(1, 'HALO'),
(2, 'RUST'),
(3, 'RDR2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies`
--

CREATE TABLE `movies` (
  `ID_MOVIES` int(11) NOT NULL,
  `NAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`ID_MOVIES`, `NAME`) VALUES
(1, 'LOTR'),
(2, 'SHREK'),
(3, 'ALIEN');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tab_main`
--

CREATE TABLE `tab_main` (
  `ID_TAB_MAIN` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `ID_FK_MOVIES` int(11) NOT NULL,
  `ID_FK_GAMES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tab_main`
--

INSERT INTO `tab_main` (`ID_TAB_MAIN`, `NAME`, `ID_FK_MOVIES`, `ID_FK_GAMES`) VALUES
(1, 'MAIN_1', 1, 1),
(2, 'MAIN_2', 2, 2),
(3, 'MAIN_1', 3, 3),
(4, 'MAIN_2', 1, 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`ID_GAMES`);

--
-- Indeksy dla tabeli `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`ID_MOVIES`);

--
-- Indeksy dla tabeli `tab_main`
--
ALTER TABLE `tab_main`
  ADD PRIMARY KEY (`ID_TAB_MAIN`),
  ADD KEY `ID_FK_MOVIES` (`ID_FK_MOVIES`),
  ADD KEY `ID_FK_GAMES` (`ID_FK_GAMES`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `ID_GAMES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `ID_MOVIES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tab_main`
--
ALTER TABLE `tab_main`
  MODIFY `ID_TAB_MAIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tab_main`
--
ALTER TABLE `tab_main`
  ADD CONSTRAINT `tab_main_ibfk_1` FOREIGN KEY (`ID_FK_MOVIES`) REFERENCES `movies` (`ID_MOVIES`),
  ADD CONSTRAINT `tab_main_ibfk_2` FOREIGN KEY (`ID_FK_GAMES`) REFERENCES `games` (`ID_GAMES`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
