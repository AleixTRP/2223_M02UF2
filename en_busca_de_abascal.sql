-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2022 at 06:58 AM
-- Server version: 10.5.17-MariaDB-1:10.5.17+maria~deb11
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `en_busca_de_abascal`
--

-- --------------------------------------------------------

--
-- Table structure for table `armors`
--

CREATE TABLE `armors` (
  `id_armor` int(10) UNSIGNED NOT NULL,
  `armor` varchar(24) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `physic_defense` float DEFAULT NULL,
  `magic_defense` float DEFAULT NULL,
  `penetration_resistance` float DEFAULT NULL,
  `size` varchar(12) DEFAULT NULL,
  `temp_protect` float DEFAULT NULL,
  `critic_resistance` float DEFAULT NULL,
  `anti_heal` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `lvl_min` int(11) DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL,
  `class` char(16) DEFAULT NULL,
  `notoriety` int(11) DEFAULT NULL,
  `id_armor_type` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `armors`
--

INSERT INTO `armors` (`id_armor`, `armor`, `durability`, `quality`, `rarity`, `weight`, `physic_defense`, `magic_defense`, `penetration_resistance`, `size`, `temp_protect`, `critic_resistance`, `anti_heal`, `cost`, `lvl_min`, `lvl`, `class`, `notoriety`, `id_armor_type`) VALUES
(1, 'Plumas angelicales', 600, 700, 700, 70, 600, 500, 400, 'XL', 700, 500, 700, 999, 10, 399, 'Mago', 50, 2),
(2, 'Hierro', 300, 150, 100, 200, 300, 300, 150, 'L', 500, 300, 200, 300, 20, 50, 'Caballero', 20, 1),
(3, 'Camuglage', 200, 200, 200, 40, 150, 150, 150, 'M', 150, 150, 150, 150, 15, 37, 'Assesino', 800, 3);

-- --------------------------------------------------------

--
-- Table structure for table `armor_type`
--

CREATE TABLE `armor_type` (
  `id_armor_type` int(10) UNSIGNED NOT NULL,
  `type` varchar(24) NOT NULL,
  `description` text NOT NULL,
  `icon` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `armor_type`
--

INSERT INTO `armor_type` (`id_armor_type`, `type`, `description`, `icon`) VALUES
(1, 'HE', 'Armadura basica de hierro.', '0'),
(2, 'PL', 'Armadura legendaria de plumas.', '0'),
(3, 'CAM', 'Armadura comun de camuflage de caza', '0');

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id_character` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `Race` varchar(16) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Class` varchar(16) NOT NULL,
  `Height` float NOT NULL,
  `Weight` float NOT NULL,
  `Origin` char(3) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id_character`, `name`, `age`, `Race`, `Gender`, `Class`, `Height`, `Weight`, `Origin`, `Description`) VALUES
(1, 'Payoh', 67, 'Cambiapieles', 'L', 'Dictador', 1.75, 80, 'RUM', 'Payoh es.... un cambiapieles muy raton.'),
(2, 'Yuca ', 27, 'Sirenido', 'F', 'Cryptolai', 1, 40, 'PUR', 'Yuca esta en la academia de mundocrypto junto a Mani Thawani para luchar contra Tamayo.'),
(3, 'Yulen', 104, 'No muerto', 'D', 'Minero', 0.8, 25, 'NDE', 'Yulen se fue para no volver, o eso cree la gente....'),
(4, 'Josema', 3000, 'Deidad', 'T', 'Procrastinador', 3.14, 0, 'PER', 'Josema, es tal su grandeza que decidio vivir en latam.');

-- --------------------------------------------------------

--
-- Table structure for table `characters_weapons`
--

CREATE TABLE `characters_weapons` (
  `id_character_weapon` int(10) UNSIGNED NOT NULL,
  `id_character` int(10) UNSIGNED DEFAULT NULL,
  `id_weapons` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_item` int(10) UNSIGNED NOT NULL,
  `item` varchar(24) DEFAULT NULL,
  `consumbale` tinyint(1) DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `key` tinyint(1) DEFAULT NULL,
  `fusion` tinyint(1) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `dismantled` tinyint(1) DEFAULT NULL,
  `id_item_type` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_item`, `item`, `consumbale`, `rarity`, `cost`, `key`, `fusion`, `weight`, `height`, `durability`, `description`, `dismantled`, `id_item_type`) VALUES
(1, 'Queso', 1, 3, 50, 0, 1, 20, 0.1, 3, 'Queso que sabe a beso', 0, 1),
(2, 'Carne de Zombie', 1, 2, 20, 0, 1, 40, 0.3, 1, 'Esto huele mal', 0, 1),
(3, 'Fragmento Escarlata', 1, 45, 500, 0, 1, 10000, 0.25, -1, 'Piedra rara de un volcan', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `id_item_type` int(10) UNSIGNED NOT NULL,
  `type` varchar(24) NOT NULL,
  `description` text NOT NULL,
  `icon` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`id_item_type`, `type`, `description`, `icon`) VALUES
(1, 'TE', 'La perla negra se utiliza para craftear objetos raros.', '0'),
(2, 'PB', 'Un jabon creado a partir de abuelas', '0'),
(3, 'BU', 'Item legendario, hecho a partir de furros. ', '0');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id_material` int(10) UNSIGNED NOT NULL,
  `material` varchar(16) DEFAULT NULL,
  `color` char(6) DEFAULT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id_material`, `material`, `color`, `cost`) VALUES
(1, 'Obsidiana', '00000', 40),
(2, 'Madera', 'ddeeaa', 10),
(3, 'Carne', 'fff00', 5),
(4, 'Pana', 'ffdd', 50),
(5, 'Goma Sagrada', '0', 1000),
(6, 'Piedra', 'ccccc', 1),
(7, 'Cuero', 'ddddd', 20),
(8, 'BanderaEspaña', 'ESPAÑA', 2030),
(9, 'Plumas de angel', 'fffff', 100000),
(10, 'Materia Oscura', '0', 10000),
(11, 'Hueso', 'dddda', 10),
(12, 'agua', '000f', 1),
(13, 'Lava', 'ffd000', 500);

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `id_stats` int(10) UNSIGNED NOT NULL,
  `agility` int(11) NOT NULL,
  `hp` float NOT NULL,
  `hp_max` int(11) NOT NULL,
  `xp` float NOT NULL,
  `xp_max` int(11) NOT NULL,
  `mp` float NOT NULL,
  `mp_max` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `physic_attack` float NOT NULL,
  `magic_attack` float NOT NULL,
  `physic_defense` float NOT NULL,
  `magic_defense` float NOT NULL,
  `stamina` float NOT NULL,
  `intel` int(11) NOT NULL,
  `stealth` int(11) NOT NULL,
  `lucky` int(11) NOT NULL,
  `faith` int(11) NOT NULL,
  `velocity` int(11) NOT NULL,
  `dexterity` int(11) NOT NULL,
  `strength` int(11) NOT NULL,
  `charisma` int(11) NOT NULL,
  `vigor` int(11) NOT NULL,
  `tenacity` int(11) NOT NULL,
  `critical_rate` float NOT NULL,
  `steal_life` float NOT NULL,
  `accurry` float NOT NULL,
  `balance` float NOT NULL,
  `mana` int(11) NOT NULL,
  `id_characters` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`id_stats`, `agility`, `hp`, `hp_max`, `xp`, `xp_max`, `mp`, `mp_max`, `lvl`, `physic_attack`, `magic_attack`, `physic_defense`, `magic_defense`, `stamina`, `intel`, `stealth`, `lucky`, `faith`, `velocity`, `dexterity`, `strength`, `charisma`, `vigor`, `tenacity`, `critical_rate`, `steal_life`, `accurry`, `balance`, `mana`, `id_characters`) VALUES
(1, 900, 950, 0, 820, 0, 300, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 75, 0, 0, 500, 0, 700, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(3, 1000, 1000, 0, 999, 0, 1000, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(4, 200, 600, 0, 150, 0, 750, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `id_weapon` int(10) UNSIGNED NOT NULL,
  `weapon` varchar(24) DEFAULT NULL,
  `grip` int(11) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `physic_attack` float DEFAULT NULL,
  `physic_defense` float DEFAULT NULL,
  `magic_attack` float DEFAULT NULL,
  `magic_defense` float DEFAULT NULL,
  `description` text DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `level_min` int(11) DEFAULT NULL,
  `id_weapon_type` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`id_weapon`, `weapon`, `grip`, `durability`, `distance`, `quality`, `physic_attack`, `physic_defense`, `magic_attack`, `magic_defense`, `description`, `level`, `level_min`, `id_weapon_type`) VALUES
(1, 'Blue Shell', 1, 1, 10000000, 0, 0, 0, 0, 0, 'Arma ultralegendaria que mata', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `weapons_types`
--

CREATE TABLE `weapons_types` (
  `id_weapon_type` int(10) UNSIGNED NOT NULL,
  `type` varchar(24) NOT NULL,
  `description` text NOT NULL,
  `icon` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weapons_types`
--

INSERT INTO `weapons_types` (`id_weapon_type`, `type`, `description`, `icon`) VALUES
(1, 'Tw', 'Arma ultralegendaria de un solo uso, el cual mata a cualquier objetivo indiferentemente de donde este.', '0'),
(2, 'Sw', 'Grafica 4080RTX, arma a dos manos  muy poderosa pero con un defecto, si se usa demasiado puede explotar.', '0'),
(3, 'Me', 'Crowbar, arma rara pero con un uso en combate excelente. El poder del arma depende de la experiencia en combate del portador. Cuanto más uso en combate más fuerte puede ser el arma.', '0'),
(4, 'Di', 'Gravity Gun, arma a distancia legendaria. Arma a distancia con un gran rango en area de gravitacion. ', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armors`
--
ALTER TABLE `armors`
  ADD PRIMARY KEY (`id_armor`),
  ADD KEY `id_armor_type` (`id_armor_type`);

--
-- Indexes for table `armor_type`
--
ALTER TABLE `armor_type`
  ADD PRIMARY KEY (`id_armor_type`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id_character`);

--
-- Indexes for table `characters_weapons`
--
ALTER TABLE `characters_weapons`
  ADD PRIMARY KEY (`id_character_weapon`),
  ADD KEY `id_character` (`id_character`),
  ADD KEY `id_weapons` (`id_weapons`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_item_type` (`id_item_type`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`id_item_type`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id_material`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id_stats`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id_weapon`),
  ADD KEY `id_weapon_type` (`id_weapon_type`);

--
-- Indexes for table `weapons_types`
--
ALTER TABLE `weapons_types`
  ADD PRIMARY KEY (`id_weapon_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `armors`
--
ALTER TABLE `armors`
  MODIFY `id_armor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `armor_type`
--
ALTER TABLE `armor_type`
  MODIFY `id_armor_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id_character` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `characters_weapons`
--
ALTER TABLE `characters_weapons`
  MODIFY `id_character_weapon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `id_item_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id_material` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `id_stats` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id_weapon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `weapons_types`
--
ALTER TABLE `weapons_types`
  MODIFY `id_weapon_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `armors`
--
ALTER TABLE `armors`
  ADD CONSTRAINT `armors_ibfk_1` FOREIGN KEY (`id_armor_type`) REFERENCES `armor_type` (`id_armor_type`);

--
-- Constraints for table `characters_weapons`
--
ALTER TABLE `characters_weapons`
  ADD CONSTRAINT `characters_weapons_ibfk_1` FOREIGN KEY (`id_character`) REFERENCES `characters` (`id_character`),
  ADD CONSTRAINT `characters_weapons_ibfk_2` FOREIGN KEY (`id_weapons`) REFERENCES `weapons` (`id_weapon`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`id_item_type`) REFERENCES `item_type` (`id_item_type`);

--
-- Constraints for table `weapons`
--
ALTER TABLE `weapons`
  ADD CONSTRAINT `weapons_ibfk_1` FOREIGN KEY (`id_weapon_type`) REFERENCES `weapons_types` (`id_weapon_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
