-- Create "arma" user
CREATE USER 'arma'@'%' IDENTIFIED BY '123';

-- Database: `weaponsArma3`
CREATE DATABASE IF NOT EXISTS `weaponsArma3`;

-- Grant privileges
GRANT ALL PRIVILEGES ON `weaponsArma3` . * TO 'arma'@'%';

-- Switch to database weaponsArma3
USE `weaponsArma3`;

-- Table structure for table `users`
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ammo` text,
  `weapons` text,
  `items` text,
  `assignitems` text,
  `headgear` text,
  `goggles` text,
  `vest` text,
  `vestitems` text,
  `uniform` text,
  `uniformitems` text,
  `backpack` text,
  `packitems` text,
  `handgunitems` text,
  `primarywep` text,
  `secondarywep` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;