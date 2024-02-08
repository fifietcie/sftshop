-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 08 fév. 2024 à 15:08
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240208083216', '2024-02-08 08:32:28', 35),
('DoctrineMigrations\\Version20240208084909', '2024-02-08 08:49:15', 64),
('DoctrineMigrations\\Version20240208094848', '2024-02-08 09:50:39', 71),
('DoctrineMigrations\\Version20240208101734', '2024-02-08 10:20:47', 56),
('DoctrineMigrations\\Version20240208101920', '2024-02-08 10:20:47', 27),
('DoctrineMigrations\\Version20240208135026', '2024-02-08 13:50:35', 145),
('DoctrineMigrations\\Version20240208140507', '2024-02-08 14:05:18', 54);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tshirt`
--

DROP TABLE IF EXISTS `tshirt`;
CREATE TABLE IF NOT EXISTS `tshirt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prix` int NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `taille` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `moyendepaiement` varchar(255) NOT NULL,
  `online` tinyint(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=496 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tshirt`
--

INSERT INTO `tshirt` (`id`, `nom`, `prix`, `couleur`, `taille`, `description`, `moyendepaiement`, `online`, `image`) VALUES
(466, 'quidem', 48, 'Beige', 'M', 'Repudiandae assumenda laborum ad reprehenderit.', 'Prélèvement', 1, 'https://via.placeholder.com/200x200.png/008888?text=fashion+Tshirt+pariatur'),
(467, 'incidunt', 32, 'Jaune', '2XL', 'Et nihil et molestiae rerum id pariatur.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/0044ff?text=fashion+Tshirt+accusamus'),
(468, 'libero', 81, 'Kaki', '2XS', 'Est et et dicta non.', 'Prélèvement', 0, 'https://via.placeholder.com/200x200.png/00ccaa?text=fashion+Tshirt+eum'),
(469, 'voluptates', 15, 'Gris', '2XS', 'Vero aperiam ut assumenda impedit sunt aut vitae sit.', 'Chèque', 1, 'https://via.placeholder.com/200x200.png/0077ee?text=fashion+Tshirt+impedit'),
(470, 'ut', 12, 'Bleu', 'L', 'Quo rem aliquid et ratione mollitia cum minima.', 'Prélèvement', 1, 'https://via.placeholder.com/200x200.png/00cc99?text=fashion+Tshirt+in'),
(471, 'iure', 15, 'Vert', 'M', 'Eum voluptate sequi nisi ut natus.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/00dd55?text=fashion+Tshirt+repellat'),
(472, 'dolore', 98, 'Rose', 'XL', 'Ipsam doloremque qui voluptatem quasi.', 'Virement', 1, 'https://via.placeholder.com/200x200.png/000055?text=fashion+Tshirt+atque'),
(473, 'modi', 91, 'Kaki', 'XL', 'Quam architecto unde qui.', 'Prélèvement', 1, 'https://via.placeholder.com/200x200.png/001188?text=fashion+Tshirt+voluptate'),
(474, 'quos', 62, 'Beige', 'XL', 'Et unde reiciendis reiciendis ut harum ullam sed.', 'Prélèvement', 1, 'https://via.placeholder.com/200x200.png/00aa00?text=fashion+Tshirt+illum'),
(475, 'dolores', 37, 'Violet', 'L', 'Vel sint consectetur dolores.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/0044dd?text=fashion+Tshirt+quis'),
(476, 'dicta', 98, 'Vert', '2XS', 'Fugit earum autem nam fuga quidem velit.', 'Chèque', 1, 'https://via.placeholder.com/200x200.png/0033ff?text=fashion+Tshirt+tenetur'),
(477, 'necessitatibus', 53, 'Blanc', '2XL', 'Inventore officia quam in minima quae nam.', 'Chèque', 1, 'https://via.placeholder.com/200x200.png/006633?text=fashion+Tshirt+impedit'),
(478, 'et', 89, 'Beige', '3XL', 'Nemo velit ad quos molestias.', 'Virement', 1, 'https://via.placeholder.com/200x200.png/009922?text=fashion+Tshirt+consectetur'),
(479, 'corrupti', 97, 'Blanc', 'S', 'Possimus necessitatibus qui et.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/001199?text=fashion+Tshirt+dolorem'),
(480, 'et', 55, 'Rose', '2XL', 'Veritatis eum alias natus dolorum maiores.', 'Chèque', 1, 'https://via.placeholder.com/200x200.png/00aa11?text=fashion+Tshirt+inventore'),
(481, 'suscipit', 74, 'Rouge', '3XL', 'Eos ut quis saepe odit porro mollitia id.', 'Chèque', 1, 'https://via.placeholder.com/200x200.png/00eeff?text=fashion+Tshirt+tempore'),
(482, 'non', 55, 'Rouge', 'M', 'Alias aut excepturi sed sequi tempora dolorum.', 'Virement', 1, 'https://via.placeholder.com/200x200.png/0055ff?text=fashion+Tshirt+dignissimos'),
(483, 'dolores', 35, 'Violet', 'L', 'Ut doloremque voluptas ut accusamus sed eos nemo.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/000033?text=fashion+Tshirt+in'),
(484, 'velit', 23, 'Blanc', '3XL', 'Incidunt suscipit voluptate recusandae ipsam earum.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/008833?text=fashion+Tshirt+possimus'),
(485, 'praesentium', 10, 'Gris', 'S', 'Sint itaque id quasi quis in necessitatibus.', 'Prélèvement', 1, 'https://via.placeholder.com/200x200.png/005577?text=fashion+Tshirt+quidem'),
(486, 'id', 67, 'Orange', '3XL', 'Totam voluptas aut eligendi suscipit dolores eveniet.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/001199?text=fashion+Tshirt+et'),
(487, 'fugit', 69, 'Bleu', '3XL', 'Iste voluptas vel porro voluptates adipisci autem aliquam.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/000099?text=fashion+Tshirt+quaerat'),
(488, 'sed', 44, 'Rouge', 'XL', 'Perferendis totam dolor nemo laboriosam numquam mollitia reprehenderit.', 'Chèque', 1, 'https://via.placeholder.com/200x200.png/00dd22?text=fashion+Tshirt+reiciendis'),
(489, 'expedita', 17, 'Vert', 'S', 'Sapiente et totam et quod quia natus dicta.', 'Prélèvement', 1, 'https://via.placeholder.com/200x200.png/006633?text=fashion+Tshirt+qui'),
(490, 'laborum', 57, 'Beige', 'S', 'Accusantium error corporis dolorem aliquam error illo dolor consequatur.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/00bbff?text=fashion+Tshirt+fugit'),
(491, 'amet', 84, 'Jaune', 'L', 'Nisi dignissimos non voluptatem voluptatum vitae.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/006699?text=fashion+Tshirt+illo'),
(492, 'amet', 86, 'Rose', 'S', 'Rerum beatae accusamus qui velit laudantium.', 'Chèque', 1, 'https://via.placeholder.com/200x200.png/00bbcc?text=fashion+Tshirt+dignissimos'),
(493, 'pariatur', 85, 'Rose', '2XS', 'Et error quo dicta distinctio esse esse et.', 'Prélèvement', 1, 'https://via.placeholder.com/200x200.png/00ee55?text=fashion+Tshirt+illo'),
(494, 'quis', 67, 'Gris', 'XL', 'Iusto dignissimos et quidem quos provident corporis.', 'Carte de crédit', 1, 'https://via.placeholder.com/200x200.png/0055bb?text=fashion+Tshirt+quia'),
(495, 'odit', 95, 'Blanc', 'M', 'Dolores explicabo eveniet quia non distinctio nulla qui.', 'Chèque', 1, 'https://via.placeholder.com/200x200.png/009944?text=fashion+Tshirt+quaerat');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `age`, `adresse`, `telephone`, `avatar`) VALUES
(56, 'laroche.elisabeth@orange.fr', '[\"ROLE_ADMIN\"]', '$2y$13$C/yfM6U8sMNZXAB0wkt4Seec/r6eInfDg8DRAY4TT0/Tx4grnOHPa', 'Marchal', 'Pierre', '41', 'place de Delorme\n20134 Pascal', '+33 (0)6 81 70 96 71', 'https://via.placeholder.com/640x480.png/00bbee?text=people+excepturi'),
(57, 'william.gomez@chevalier.com', '[\"ROLE_USER\"]', '$2y$13$MtlnoE/QlaO0fFWlMC42B.2Jdkp2CIekV.r9K9HESa5RiE7Tu3M3S', 'Buisson', 'Alain', '44', '9, avenue de Delmas\n44778 Devaux', '+33 (0)9 83 82 87 21', 'https://via.placeholder.com/640x480.png/00cc22?text=people+inventore'),
(58, 'chevallier.martine@live.com', '[\"ROLE_USER\"]', '$2y$13$jtoV6LZvUDypIQGOTVtDgepAz/lA94OAvkA76vbEAdSTFpzQ6U0ve', 'Cohen', 'Monique', '39', '365, chemin Lucas\n24971 Pruvostnec', '09 58 71 41 70', 'https://via.placeholder.com/640x480.png/008866?text=people+molestias');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
