-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 13, 2022 alle 23:39
-- Versione del server: 10.4.24-MariaDB
-- Versione PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thespacecinema`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `ID` int(11) NOT NULL,
  `titolo` varchar(50) NOT NULL,
  `genere` varchar(30) NOT NULL,
  `regia` varchar(50) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `durata` varchar(10) NOT NULL,
  `immagine` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `film`
--

INSERT INTO `film` (`ID`, `titolo`, `genere`, `regia`, `cast`, `durata`, `immagine`) VALUES
(1, 'AVATAR - LA VIA DELL\'ACQUA', 'Avventura, Fantasy, Azione', 'James Cameron', 'Kate Winslet, \r\nZoe Saldana, \r\nSam Worthington, \r\nSigourney Weaver, \r\nOona Chaplin', '190 minuti', 'https://cdn1.thespacecinema.it/-/media/tsc/2022/12/avatar-2-le-vie-dell-acqua/locandina_avatar-la-via-dell-acqua.jpg?w=200'),
(8, 'IL GATTO CON GLI STIVALI 2 - L\'ULTIMO DESIDERIO', 'Animazione', 'Joel Crawford, \r\nJanuel Mercado', 'Chris Miller (II), \r\nFlorence Pugh, \r\nSalma Hayek, \r\nOlivia Colman, \r\nAntonio Banderas', '111 min', 'https://cdn1.thespacecinema.it/-/media/tsc/2022/12/il-gatto-con-gli-stivali-2-l-ultimo-desiderio/locandina_il-gatto-con-gli-stivali.jpg?h=477&w=319'),
(9, 'BLACK PANTHER - WAKANDA FOREVER', 'Fantasy', 'Ryan Coogler', 'Angela Bassett, \r\nMartin Freeman, \r\nDanai Gurira, \r\nLupita Nyong\'o, \r\nWinston Duke', '161 min', 'https://cdn1.thespacecinema.it/-/media/tsc/2022/11/black-panter-wakanda-forever/locandinatop.jpg?h=477&w=319'),
(10, 'UNA NOTTE VIOLENTA E SILENZIOSA', 'Thriller', 'Tommy Wirkola', 'David Harbour, \r\nBeverly D\'Angelo, \r\nJohn Leguizamo, \r\nCam Gigandet, \r\nAlex Hassell', '111 min', 'https://cdn1.thespacecinema.it/-/media/tsc/2022/12/una-notte-violenta-e-silenziosa/locandina.jpg?h=477&w=319');

-- --------------------------------------------------------

--
-- Struttura della tabella `proiezioni`
--

CREATE TABLE `proiezioni` (
  `film` int(11) NOT NULL,
  `sala` int(11) NOT NULL,
  `giorno` date NOT NULL,
  `ora` time NOT NULL,
  `posti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `proiezioni`
--

INSERT INTO `proiezioni` (`film`, `sala`, `giorno`, `ora`, `posti`) VALUES
(1, 1, '2022-12-15', '15:00:00', 60),
(1, 2, '2022-12-15', '16:15:00', 60),
(8, 3, '2022-12-14', '18:00:00', 60),
(8, 2, '2022-12-16', '17:00:00', 60),
(9, 3, '2022-12-15', '17:30:00', 60),
(9, 1, '2022-12-15', '19:00:00', 60),
(10, 2, '2022-12-15', '20:30:00', 60),
(10, 3, '2022-12-16', '19:45:00', 60);

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `ID` int(11) NOT NULL,
  `NomeUtente` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`ID`, `NomeUtente`, `Password`, `Email`) VALUES
(1, 'FanchinAlberto', 'sonoFanchin', 'fanchin@gmail.com');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `film`
--
ALTER TABLE `film`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
