-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: NOEL
-- ------------------------------------------------------
-- Server version	8.2.0
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity` varchar(100) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `day_type` tinyint(1) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `opening_hours` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` (`activity`,`type_id`,`link`,`image`,`day_type`,`content`,`adresse`,`opening_hours`)
VALUES ('Marché de Noël',2,'https://maps.app.goo.gl/No4VYx2op89sbts88','https://th.bing.com/th/id/OIP.fOsYKLG0YDXYyDXzWgg24QHaE8?rs=1&pid=ImgDetMain',0,'Marché sur les allées Tourny',' All. de Tourny, 33000 Bordeaux',"14h-00h"),
('La Meule Du Berger',1,'https://www.lameuleduberger-bordeaux.com','https://static.wixstatic.com/media/5d752f_a94bbc5c994246e3b663f5a80c656d0d~mv2_d_4032_1960_s_2.jpg/v1/fill/w_560,h_272,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/20180728_213947.jpg',1,'Restaurant de raclette','30 Rue Saint-Rémi, 33000 Bordeaux','11h45-00h'),
('Creation de boule de Noël maison',5,'https://flowrette.com/blogs/do-it-yourself/tuto-comment-fabriquer-une-bougie-soi-meme','https://tcheen.com/uploads/blog/pictures/faireunebougiemaison_diy1-5fab9143506fd.png',1,"Ingredients : /Cire de parrafine/Méche de bougie/Recipient/Huile essentielle/Colorant//Etape 1 : Faire fondre la cire à bougie au bain Marie/Etape 2 : Mélanger la cire à un colorant/Etape 3 : Ajouter quelques gouttes d'huile essentielle/Etape 4 : Verser la cire chaude dans les contenants/Etape 5 : Placez les mèches/Etape 6 : Laisser la cire refroidir",'66 Cr Edouard Vaillant, 33300 Bordeaux','8h00-19h30'),
('Buche chocolat',3,'https://www.marmiton.org/recettes/buche-de-noel-la-recette-facile-a-preparer-a-l-avance-pour-des-fetes-sans-stress-s4074832.html','https://cache.magicmaman.com/data/photo/w600_c18/138/web-buche-carte-dor.jpg',1,"Ingredients : /125g de sucre/125g de farine 125g/5 oeufs/250g chocolat noir/250mg crème liquide//Recette : /Préparation du biscuit : /Etape 1 : Dans des saladiers, séparez les blancs des jaunes d'œufs. Montez les blancs en neige, à l'aide d'un batteur électrique, à vitesse rapide. Dans un autre saladier, mélangez les jaunes, le sucre et la farine. Incorporez les blancs délicatement et en trois fois, tout en mélangeant. Versez la préparation du biscuit de la bûche légère au chocolat sur une plaque recouverte de papier cuisson. Enfournez sur une grille à mi-hauteur. Faites cuire le biscuit pendant 10 min./Etapes 2 : Préparez un moule à cake dans lequel vous appliquez une feuille de papier cuisson ou du film alimentaire. Faites déborder les bords. Une fois cuit, roulez le biscuit sur lui-même et placez-le sur un plat ou dans le moule à cake que vous venez de préparer./Etapes 3 : Préparation de l'appareil : Il s'agit d'une préparation d'une ganache au chocolat. Faites bouillir la crème. Hors du feu ajoutez le chocolat en morceau et mélangez. L'appareil doit être lisse.",'',''),
('Carafe à whisky',4,'https://www.cristal-sky.com/collections/carafe-a-whisky/products/carafe-a-whisky-vintage-scotch','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN0r-NX0AGZo5FBuMcNa3B3lb8dlKdT1BR5A&usqp=CAU',0,'Idée de cadeaux de Noël pour Homme' ,'7 Pl. du Maucaillou, 33800 Bordeaux','10h-21h');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumed`
--

DROP TABLE IF EXISTS `consumed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `activity_id` int DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumed`
--

LOCK TABLES `consumed` WRITE;
/*!40000 ALTER TABLE `consumed` DISABLE KEYS */;
INSERT INTO `consumed` (`user_id`,`activity_id`,`favorite`)
VALUES (1,2,0);
/*!40000 ALTER TABLE `consumed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music` (
  `id` int NOT NULL AUTO_INCREMENT,
  `music` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` (`music`) 
  VALUES ('https://licensing.jamendo.com/fr/track/1400078/jingle-bells-techno'),
  ('https://licensing.jamendo.com/fr/track/1488790/ich-steh-an-deiner-krippen-hier'),
  ('https://licensing.jamendo.com/fr/track/1482054/happy-christmas'),
  ('https://licensing.jamendo.com/fr/track/1078366/les-trois-rois-mages'),
  ('https://licensing.jamendo.com/fr/track/479837/le-pere-noel');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preference`
--

DROP TABLE IF EXISTS `preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preference` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `value` int DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preference`
--

LOCK TABLES `preference` WRITE;
/*!40000 ALTER TABLE `preference` DISABLE KEYS */;
INSERT INTO `preference` (`user_id`,`type_id`, `value`)
    VALUES (3, 5, 1),
    (2, 2, 1),
    (6, 4, 3),
    (4, 2, 7),
    (2, 4, 4),
    (7, 2, 7),
    (9, 1, 6),
    (1, 4, 3),
    (9, 2, 5),
    (1, 4, 10);
/*!40000 ALTER TABLE `preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`name`)
  VALUES ('restaurant'), ('sortie'), ('recette'), ('cadeau'), ('DIY');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`username`,`password`) 
  VALUES 
  ('FrappeFrançaise','mdp123'),
  ('ParisPixel','mdp123'),
  ('LyonLaser','mdp123'),
  ('MarseilleMana','mdp123'),
  ('NantesNinja','mdp123'),
  ('GuerrierGaulois','mdp123'),
  ('LoupLorrain','mdp123'),
  ('ProvencePhoenix','mdp123'),
  ('ToulouseTitan','mdp123'),
  ('BretagneBlaster','mdp123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23 19:00:39
