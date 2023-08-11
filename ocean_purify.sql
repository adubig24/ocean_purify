-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Aug 11, 2023 at 09:31 PM
-- Server version: 8.0.33
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocean_purify`
--

-- --------------------------------------------------------

--
-- Table structure for table `info_don`
--

CREATE TABLE `info_don` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `don` int NOT NULL,
  `comments` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `info_don`
--

INSERT INTO `info_don` (`id`, `nom`, `prenom`, `email`, `adresse`, `don`, `comments`, `timestamp`) VALUES
(1, 'MARTIN', 'Alice', 'alice.martin@example.com', '123 Rue du Soleil', 50, 'Je suis ravi de soutenir OceanPurify dans leur noble mission de purification des océans.', '2023-08-11 20:53:18'),
(2, 'DUPONT', 'Lucas', 'lucas.dupont@example.com', '456 Avenue des Roses', 25, 'Ensemble, créons un avenir plus propre pour nos amis marins !', '2023-08-11 20:53:18'),
(3, 'TREMBLAY', 'Élise', 'elise.tremblay@example.com', '789 Chemin de la Plage', 100, 'Protéger nos océans, c\'est protéger notre planète tout entière.', '2023-08-11 20:53:18'),
(4, 'JOHNSON', 'Maxime', 'maxime.johnson@example.com', '1010 Rue Principale', 75, 'Contribuer à la santé des océans est un investissement pour les générations futures.', '2023-08-11 20:53:18'),
(5, 'GARCIA', 'Sophia', 'sophia.garcia@example.com', '111 Boulevard des Étoiles', 30, 'Chaque petit geste compte. Merci à OceanPurify de mener ce combat.', '2023-08-11 20:53:18'),
(6, 'SMITH', 'Noah', 'noah.smith@example.com', '1212 Rue de la Liberté', 20, 'Les océans sont nos poumons. Soutenons-les.', '2023-08-11 20:53:18'),
(7, 'BROWN', 'Emma', 'emma.brown@example.com', '1313 Avenue de la Mer', 50, 'Je veux un avenir où nos enfants peuvent profiter de plages propres et de vagues saines.', '2023-08-11 20:53:18'),
(8, 'ANDERSON', 'Liam', 'liam.anderson@example.com', '1414 Chemin de la Forêt', 10, 'Chaque euro que je donne contribue à un océan plus pur.', '2023-08-11 20:53:18'),
(9, 'MARTINEZ', 'Olivia', 'olivia.martinez@example.com', '1515 Rue de la Rivière', 200, 'Un grand merci à OceanPurify pour leur dévouement envers la préservation marine.', '2023-08-11 20:53:18'),
(10, 'TAYLOR', 'Ethan', 'ethan.taylor@example.com', '1616 Avenue du Mont', 40, 'J\'ai hâte de voir les océans retrouver leur splendeur.', '2023-08-11 20:53:18'),
(11, 'LEE', 'Ava', 'ava.lee@example.com', '1717 Boulevard du Ciel', 150, 'Chaque don compte double quand il s\'agit de préserver nos océans.', '2023-08-11 20:53:18'),
(12, 'WILSON', 'Jackson', 'jackson.wilson@example.com', '1818 Rue des Nuages', 30, 'Soutenir OceanPurify, c\'est défendre la vie sous-marine.', '2023-08-11 20:53:18'),
(13, 'GARCIA', 'Mia', 'mia.garcia@example.com', '1919 Avenue des Oiseaux', 25, 'Chaque goutte compte pour restaurer la pureté des océans.', '2023-08-11 20:53:18'),
(14, 'JOHNSON', 'Aiden', 'aiden.johnson@example.com', '2020 Chemin de la Plage', 50, 'Je donne pour des mers plus propres et des plages sans déchets.', '2023-08-11 20:53:18'),
(15, 'BROWN', 'Isabella', 'isabella.brown@example.com', '2121 Rue du Sable', 15, 'Soutenons OceanPurify dans sa mission cruciale pour les océans.', '2023-08-11 20:53:18'),
(16, 'ANDERSON', 'Liam', 'liam.anderson@example.com', '2222 Avenue de la Mer', 100, 'Aider à nettoyer les océans, c\'est agir pour la planète.', '2023-08-11 20:53:18'),
(17, 'MARTINEZ', 'Sophia', 'sophia.martinez@example.com', '2323 Rue de la Rivière', 70, 'Les océans sont le trésor de la Terre. Aidons à les protéger.', '2023-08-11 20:53:18'),
(18, 'TAYLOR', 'Noah', 'noah.taylor@example.com', '2424 Boulevard du Ciel', 40, 'Chaque pas vers un océan plus propre est un pas vers un avenir meilleur.', '2023-08-11 20:53:18'),
(19, 'LEE', 'Olivia', 'olivia.lee@example.com', '2525 Rue des Étoiles', 80, 'Aidons à effacer les empreintes du plastique sur nos côtes.', '2023-08-11 20:53:18'),
(20, 'WILSON', 'Ethan', 'ethan.wilson@example.com', '2626 Avenue des Nuages', 60, 'Mon don pour les océans est un investissement pour notre Terre.', '2023-08-11 20:53:18'),
(21, 'GONZALEZ', 'Mateo', 'mateo.gonzalez@example.com', '2727 Chemin du Rivage', 90, 'Chaque pièce compte pour réparer les dommages causés à nos océans.', '2023-08-11 20:53:18'),
(22, 'PETROV', 'Ivan', 'ivan.petrov@example.com', '2828 Rue des Marées', 55, 'Soutenons OceanPurify dans son combat pour une mer plus propre.', '2023-08-11 20:53:18'),
(23, 'LEFEBVRE', 'Chloé', 'chloe.lefebvre@example.com', '2929 Avenue du Littoral', 35, 'Je crois en une planète où les océans sont libérés des déchets.', '2023-08-11 20:53:18'),
(24, 'SAITO', 'Haruki', 'haruki.saito@example.com', '3030 Rue des Vagues', 120, 'Les océans sont une ressource précieuse à protéger pour les générations futures.', '2023-08-11 20:53:18'),
(25, 'BIANCHI', 'Sofia', 'sofia.bianchi@example.com', '3131 Chemin de la Mer', 70, 'Aidons OceanPurify à restaurer la splendeur de nos océans.', '2023-08-11 20:53:18'),
(26, 'CRUZ', 'Miguel', 'miguel.cruz@example.com', '3232 Boulevard de la Côte', 25, 'Soutenons OceanPurify pour que nos océans puissent respirer à nouveau.', '2023-08-11 20:53:18'),
(27, 'D\'ARC', 'Jeanne', 'jeanne.darc@example.com', 'Buchet anglais', 1431, 'Puissions-nous défendre ces mers et offrir à notre planète un avenir purifié et radieux.', '2023-08-11 21:01:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info_don`
--
ALTER TABLE `info_don`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info_don`
--
ALTER TABLE `info_don`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
