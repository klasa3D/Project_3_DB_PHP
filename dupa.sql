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
  `id_games` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id_games`, `name`) VALUES
(1, 'halo'),
(2, 'rust'),
(3, 'rdr2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies`
--

CREATE TABLE `movies` (
  `id_movies` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id_movies`, `name`) VALUES
(1, 'lotr'),
(2, 'shrek'),
(3, 'alien');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tab_main`
--

CREATE TABLE `tab_main` (
  `id_tab_main` int(11) NOT NULL,
  `name` text NOT NULL,
  `id_fk_movies` int(11) NOT NULL,
  `id_fk_games` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tab_main`
--

INSERT INTO `tab_main` (`id_tab_main`, `name`, `id_fk_movies`, `id_fk_games`) VALUES
(1, 'main_1', 1, 1),
(2, 'main_2', 2, 2),
(3, 'main_1', 3, 3),
(4, 'main_2', 1, 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id_games`);

--
-- Indeksy dla tabeli `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id_movies`);

--
-- Indeksy dla tabeli `tab_main`
--
ALTER TABLE `tab_main`
  ADD PRIMARY KEY (`id_tab_main`),
  ADD KEY `id_fk_games` (`id_fk_games`),
  ADD KEY `id_fk_movies` (`id_fk_movies`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id_games` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id_movies` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tab_main`
--
ALTER TABLE `tab_main`
  MODIFY `id_tab_main` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tab_main`
--
ALTER TABLE `tab_main`
  ADD CONSTRAINT `tab_main_ibfk_1` FOREIGN KEY (`id_fk_games`) REFERENCES `games` (`id_games`),
  ADD CONSTRAINT `tab_main_ibfk_2` FOREIGN KEY (`id_fk_movies`) REFERENCES `movies` (`id_movies`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
