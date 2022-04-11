-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 11. Apr 2022 um 16:06
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `BE15_CR13_bigEventsIgorIlic`
--
CREATE DATABASE IF NOT EXISTS `BE15_CR13_bigEventsIgorIlic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `BE15_CR13_bigEventsIgorIlic`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `big_events`
--

CREATE TABLE `big_events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `big_events`
--

INSERT INTO `big_events` (`id`, `name`, `datetime`, `description`, `picture`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(1, 'Drake', '2022-04-20 19:00:00', 'Aubrey Drake Graham (born October 24, 1986) is a Canadian rapper, singer, songwriter and actor.Gaining recognition by starring as Jimmy Brooks in the CTV teen drama series Degrassi: The Next Generation (2001–08), Drake pursued a career in music releasing his debut mixtape Room for Improvement in 2006; he subsequently released the mixtapes Comeback Season (2007) and So Far Gone (2009) before signing with Young Money Entertainment.', 'drake.jpeg', 2000, 'drakemanagment@gmail.com', 436060606, 'Guglgasse 8, 1110 Wien', 'https://drakerelated.com/', 'Music'),
(2, 'J. Cole', '2022-04-21 16:57:00', 'Jermaine Lamarr Cole (born January 28, 1985) is an American rapper, singer, songwriter, and record producer. Cole is regarded as one of the most influential rappers of his generation. Born on a military base in Germany and raised in Fayetteville, North Carolina, Cole initially gained recognition as a rapper following the release of his debut mixtape, The Come Up, in early 2007. Intent on further pursuing a musical career, he went on to release two additional mixtapes, The Warm Up (2009) and Friday Night Lights (2010) both to critical acclaim, after signing to Jay-Z\'s Roc Nation imprint in 2009.', 'jcole.jpeg', 1000, 'jcole@gmail.com', 122121, 'Vienna', 'www.jcole.com', 'Music'),
(8, 'Chelsea vs Real Madrid', '2022-04-12 21:00:00', 'Chelsea Football Club is an English professional football club based in Fulham, West London. Founded in 1905, the club competes in the Premier League, the top division of English football. Domestically, the club has won six league titles, eight FA Cups, five League Cups, and four FA Community Shields. Internationally, Chelsea are the only English team to have won the three active major UEFA trophies. They have won two European Cups, two UEFA Cup Winners\' Cups, two UEFA Cups, two UEFA Super Cups, and one FIFA Club World Cup. In terms of trophies won, it is the fourth-most successful club in English football.', 'chelsea-madrid-6250af70b0a1d.jpg', 81044, 'chelsea@gmail.co.uk', 414987256, 'Av. de Concha Espina, 1, 28036 Madrid, Spanien', 'https://www.realmadrid.com/de', 'Sport'),
(9, 'Bad Bunny', '2022-08-05 19:00:00', 'It\'s undeniable that Bad Bunny is one of the hottest Latin trap stars of our time, and the numbers prove it. As of 2018, the Puerto Rican vocalist boasts 7 billion streams on YouTube, making him one of the top three artists dominating the platform. And that\'s before releasing his first proper full-length album X100PRE, which dropped on December 24.', 'badbunny-6250b0f322b95.jpg', 61348, 'badbunny@gmail.com', 19827654, 'Camping World Stadium, Orlando, FL', 'www.badbunny.com', 'Music'),
(10, 'King Richard', '2021-11-19 22:00:00', 'King Richard is a 2021 American biographical sports drama film directed by Reinaldo Marcus Green and written by Zach Baylin. It follows the life of Richard Williams, the father and coach of famed tennis players Venus and Serena Williams, who were executive producers of the film. It stars Will Smith in the title role, with Aunjanue Ellis, Saniyya Sidney, Demi Singleton, Tony Goldwyn, and Jon Bernthal.', 'kingr-62519a577a9d6.jpg', 500, 'kingrichard@gmail.com', 1987654567, 'Lugner City, WIen 1150', 'www.kingrichard.com', 'Movie'),
(11, 'The Wolf of the Wallstreet', '2020-01-01 00:00:00', 'The Wolf of Wall Street is a 2013 American biographical crime black comedy film directed by Martin Scorsese and written by Terence Winter, based on the 2007 memoir by Jordan Belfort. It recounts Belfort\'s perspective on his career as a stockbroker in New York City and how his firm, Stratton Oakmont, engaged in rampant corruption and fraud on Wall Street, which ultimately led to his downfall. Leonardo DiCaprio, who was also a producer on the film, stars as Belfort, with Jonah Hill as his business partner and friend, Donnie Azoff, Margot Robbie as his wife, Naomi Lapaglia, and Kyle Chandler as FBI agent Patrick Denham, who tries to bring Belfort down.', 'wolf-62519aeaa5ef1.jpg', 500, 'leonardo@gmail.com', 198376334, 'Lugner City, 1150 Wien', 'www.wolfofwallstreet.com', 'Movie'),
(12, 'Southampton vs Chelsea', '2022-04-09 16:00:00', 'Chelsea Football Club is an English professional football club based in Fulham, West London. Founded in 1905, the club competes in the Premier League, the top division of English football. Domestically, the club has won six league titles, eight FA Cups, five League Cups, and four FA Community Shields. Internationally, Chelsea are the only English team to have won the three active major UEFA trophies. They have won two European Cups, two UEFA Cup Winners\' Cups, two UEFA Cups, two UEFA Super Cups, and one FIFA Club World Cup. In terms of trophies won, it is the fourth-most successful club in English football.', 'chelseaa-62519c0486508.png', 32384, 'www.southampton.co.uk', 90128765, 'Britannia Rd, Southampton SO14 5FP, Vereinigtes Königreich', 'www.southampton.co.uk', 'Sport'),
(13, 'Jordan Peterson: Beyond Order', '2017-01-01 00:00:00', 'Dr. Jordan Peterson is an outstanding keynote speaker who is professor at the University of Toronto, a clinical psychologist and the author of “12 Rules for Life: An Antidote to Chaos” (2018). His now-classic book, “Maps of Meaning: The Architecture of Belief,” offers a revolutionary take on the psychology of religion, and the hundred or more scientific papers he has published with his colleagues and students have substantively advanced the modern understanding of creativity and personality. As a Harvard professor, he was nominated for the prestigious Levinson Teaching Prize, and is regarded by his current University of Toronto students as one of three truly life-changing professors. His classroom lectures on mythology and psychology, based on Maps of Meaning, were turned into a popular 13-part TV series on TVO.', 'jordannn-62519da2929e3.jpg', 2400, 'jordanbpeterson@gmail.com', 12987621, 'Zagreb', 'www.jordanbpeterson.com', 'Keynote');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220408125513', '2022-04-08 12:55:25', 113);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `big_events`
--
ALTER TABLE `big_events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `big_events`
--
ALTER TABLE `big_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
