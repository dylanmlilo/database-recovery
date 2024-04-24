-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: bcc_data
-- ------------------------------------------------------
-- Server version	5.7.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dam_data`
--

DROP TABLE IF EXISTS `dam_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dam_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dam_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `dam_reading` decimal(10,2) NOT NULL,
  `dam_percentage` decimal(5,2) NOT NULL,
  `dam_volume` decimal(15,2) NOT NULL,
  `daily_inflow` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dam_id` (`dam_id`),
  CONSTRAINT `dam_data_ibfk_1` FOREIGN KEY (`dam_id`) REFERENCES `dams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dam_data`
--

LOCK TABLES `dam_data` WRITE;
/*!40000 ALTER TABLE `dam_data` DISABLE KEYS */;
INSERT INTO `dam_data` VALUES (1,1,'2024-03-04',87.18,28.58,23543522.34,100.00),(2,2,'2024-03-04',90.21,50.23,21833794.23,100.00),(3,3,'2024-03-04',89.23,40.34,19782341.54,0.00),(4,4,'2024-03-04',78.34,43.23,18235463.34,100.00),(5,5,'2024-03-04',90.20,41.30,17235243.76,0.00),(6,6,'2024-03-04',88.24,38.67,23847343.21,0.00),(7,1,'2024-03-05',90.23,40.12,26354846.34,0.00),(8,2,'2024-03-05',88.74,45.33,21837463.45,0.00),(9,3,'2024-03-05',80.34,51.45,19263745.33,0.00),(10,4,'2024-03-05',84.22,47.12,18236273.46,0.00),(11,5,'2024-03-05',90.12,46.22,21264538.55,0.00),(12,6,'2024-03-05',89.78,48.25,22546354.33,0.00),(13,1,'2024-03-06',78.22,38.25,21276362.23,0.00),(14,2,'2024-03-06',90.22,45.33,23424232.24,0.00),(15,3,'2024-03-06',87.35,47.22,21323232.45,129.00),(16,4,'2024-03-06',88.34,50.12,23442323.32,100.00),(17,5,'2024-03-06',90.12,49.01,21232323.32,250.00),(18,6,'2024-03-06',86.33,30.00,23423232.34,105.00),(19,1,'2024-03-07',89.32,49.55,21343242.00,0.00),(20,2,'2024-03-07',87.35,58.00,25455553.00,0.00),(21,3,'2024-03-07',87.45,37.33,23232323.00,100.00),(22,4,'2024-03-07',89.34,45.34,22364543.87,50.00),(23,5,'2024-03-07',90.00,50.32,22364543.87,0.00),(24,6,'2024-03-07',89.00,49.32,22338490.87,0.00),(25,4,'2024-03-08',87.00,45.00,23435435.00,400.00),(26,3,'2024-03-10',88.44,45.34,232424324.23,325.00);
/*!40000 ALTER TABLE `dam_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dams`
--

DROP TABLE IF EXISTS `dams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dam_name` varchar(255) NOT NULL,
  `dam_description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dams`
--

LOCK TABLES `dams` WRITE;
/*!40000 ALTER TABLE `dams` DISABLE KEYS */;
INSERT INTO `dams` VALUES (1,'Inyankuni Dam','Nestled in Insiza District, Zimbabwe, Inyankuni Dam serves as a crucial water source for Bulawayo. Constructed in 1965 on the Inyankuni River, it boasts a maximum capacity of 44 million cubic meters (m³).  This dam has become a vital part of Bulawayo\'s water security since the mid-20th century, supplementing the supplies from Upper Ncema and Umzingwane Dams.  However, water restrictions are likely to be implemented if the dam level falls below 30% capacity. Inyankuni Dam also attracts birdwatchers due to the diverse birdlife found around the dam.'),(2,'Insiza Mayfair Dam','Holding the title of the largest dam supplying water to Bulawayo, Insiza Mayfair Dam boasts a capacity of 109 million cubic meters (m³). Completed in 1933, it\'s the oldest operational dam in the city\'s water system.  Insiza Mayfair Dam played a critical role in Bulawayo\'s development during the early 20th century by providing a reliable water source for its growing population. Water rationing might be necessary if the dam level falls below 40% capacity. The dam\'s scenic location, surrounded by picturesque hills, adds to its significance.'),(3,'Mtshabezi Dam','Located on the Mtshabezi River, Mtshabezi Dam is a multi-purpose dam serving various needs.  This dam, with a capacity of 35.5 million cubic meters (m³), provides water for irrigation, domestic use, and hydropower generation.  Constructed in 1972, Mtshabezi Dam significantly influenced the development of the agricultural sector in the region. The dam\'s hydroelectric power station contributes to the national grid. Water restrictions for irrigation and reduced power generation might occur if the level falls below 25% capacity. The dam also offers recreational opportunities like fishing and boating (during high water levels).'),(4,'uMzingwane Dam','While no longer the primary source, uMzingwane Dam, also known as the Bulawayo Dam, still contributes to the city\'s water supply with a capacity of 12.1 million cubic meters (m³). Built-in 1903, uMzingwane Dam stands as a historical landmark showcasing early water management techniques in Zimbabwe. Water restrictions for Bulawayo are highly likely if the level falls below 15% capacity. The dam and its surroundings are a protected wildlife sanctuary, offering a haven for diverse plant and animal species.'),(5,'Lower Ncema Dam','Although smaller with a capacity of 4.8 million cubic meters (m³), Lower Ncema Dam plays a supporting role in supplying water for Bulawayo and surrounding communities. Constructed in the 1950s, this dam\'s role became crucial as the population grew. Water shortages are likely if the level reaches the critical point of 10% capacity. Lower Ncema Dam also serves as a vital stopover point for migratory birds, attracting birdwatchers to the area.'),(6,'Upper Ncema Dam','Built in 1924 with a capacity of 23.8 million cubic meters (m³), Upper Ncema Dam was one of the first major water sources for Bulawayo.  This dam significantly contributed to Bulawayo\'s early development by supplying water for domestic and industrial uses. Water restrictions for Bulawayo are likely to be implemented if the level dips below 20% capacity.  The dam\'s surroundings, with rolling hills and grasslands, provide opportunities for nature enthusiasts.');
/*!40000 ALTER TABLE `dams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservoir_data`
--

DROP TABLE IF EXISTS `reservoir_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservoir_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservoir_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `reservoir_level` float NOT NULL,
  `reservoir_percentage` float NOT NULL,
  `reservoir_volume` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reservoir_id` (`reservoir_id`),
  CONSTRAINT `reservoir_data_ibfk_1` FOREIGN KEY (`reservoir_id`) REFERENCES `reservoirs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservoir_data`
--

LOCK TABLES `reservoir_data` WRITE;
/*!40000 ALTER TABLE `reservoir_data` DISABLE KEYS */;
INSERT INTO `reservoir_data` VALUES (1,1,'2024-03-01',12.5,69.83,50040),(2,2,'2024-03-01',17,91.4,41129),(3,3,'2024-03-01',15.6,86.67,58500),(4,4,'2024-03-01',15,78.95,35526.3),(5,5,'2024-03-01',15.9,83.68,37657.9),(6,6,'2024-03-01',2.69,72,64560),(7,7,'2024-03-01',0.91,12.13,169867),(8,1,'2024-03-02',13.5,75.42,0),(9,2,'2024-03-02',16,86.02,38709.7),(10,3,'2024-03-02',11,61.11,41250),(11,4,'2024-03-02',17,89.47,40263.2),(12,5,'2024-03-02',17.5,92.11,41447.4),(13,6,'2024-03-02',2.38,63,57120),(14,7,'2024-03-02',0.91,12.13,169867),(15,1,'2024-03-03',12,67.04,0),(16,1,'2024-03-04',10.5,58.66,0),(17,1,'2024-03-05',13,72.63,0),(18,1,'2024-03-06',13.2,73.74,0),(19,1,'2024-03-07',12.8,71.51,0),(20,1,'2024-03-08',13,72.63,0),(21,1,'2024-03-09',13.5,75.42,0),(22,1,'2024-03-10',12,67.04,0),(23,1,'2024-03-11',13,72.63,0),(24,1,'2024-03-12',15,83.8,0),(25,1,'2024-03-13',13,72.63,0),(26,1,'2024-03-14',13,72.63,0),(27,1,'2024-03-15',13.5,75.42,0),(28,1,'2024-03-16',13,72.63,0),(29,1,'2024-03-17',12,67.04,0),(30,1,'2024-03-18',13,72.63,0),(31,1,'2024-03-19',13,72.63,0),(32,1,'2024-03-20',13,72.63,0),(33,1,'2024-03-21',12,67.04,0),(34,1,'2024-03-22',12,67.04,0),(35,1,'2024-03-23',10,55.87,0),(36,1,'2024-03-24',11,61.45,0),(37,1,'2024-03-25',13,72.63,0),(38,1,'2024-03-26',13,72.63,0),(39,1,'2024-03-27',14,78.21,0),(40,1,'2024-03-28',13,72.63,0),(41,1,'2024-03-29',10,55.87,0),(42,1,'2024-03-30',10.5,58.66,0),(43,1,'2024-03-31',14,78.21,0),(44,1,'2024-04-01',12,67.04,0),(45,2,'2024-03-03',16,86.02,0),(46,2,'2024-03-04',17,91.4,0),(47,2,'2024-03-05',17,91.4,0),(48,2,'2024-03-05',17,91.4,0),(49,2,'2024-03-06',17,91.4,0),(50,2,'2024-03-07',17,91.4,0),(51,2,'2024-03-08',16,86.02,0),(52,2,'2024-03-09',17,91.4,0),(53,2,'2024-03-10',17,91.4,0),(54,2,'2024-03-11',17,91.4,0),(55,2,'2024-03-12',17,91.4,0),(56,2,'2024-03-13',17,91.4,0),(57,2,'2024-03-14',16,86.02,0),(58,2,'2024-03-15',16.5,88.71,0),(59,2,'2024-03-16',15.5,83.33,0),(60,2,'2024-03-17',16.5,88.71,0),(61,2,'2024-03-18',16,86.02,0),(62,2,'2024-03-19',16.5,88.71,0),(63,2,'2024-03-20',15.5,83.33,0),(64,2,'2024-03-21',17,91.4,0),(65,2,'2024-03-22',16,86.02,0),(66,2,'2024-03-23',17,91.4,0),(67,2,'2024-03-24',15,80.65,0),(68,2,'2024-03-25',8,43.01,0),(69,2,'2024-03-26',15,80.65,0),(70,2,'2024-03-27',17,91.4,0),(71,2,'2024-03-28',15.5,83.33,0),(72,2,'2024-03-29',17,91.4,0),(73,2,'2024-03-30',17,91.4,0),(74,2,'2024-03-31',16,86.02,0),(75,2,'2024-04-01',16,86.02,0),(76,2,'2024-04-02',16,86.02,0),(77,3,'2024-03-03',11,61.11,0),(78,3,'2024-03-04',16,88.89,0),(79,3,'2024-03-05',17,94.44,0),(80,3,'2024-03-06',16.5,91.67,0),(81,3,'2024-03-07',15.8,87.78,0),(82,3,'2024-03-08',15.5,86.11,0),(83,3,'2024-03-09',16.3,90.56,0),(84,3,'2024-03-10',17.5,97.22,0),(85,3,'2024-03-11',18,100,0),(86,3,'2024-03-12',13,72.22,0),(87,3,'2024-03-13',13,72.22,0),(88,3,'2024-03-14',15.8,87.78,0),(89,3,'2024-03-15',16.2,90,0),(90,3,'2024-03-16',17,94.44,0),(91,3,'2024-03-17',18,100,0),(92,3,'2024-03-18',16,88.89,0),(93,3,'2024-03-19',15,83.33,0),(94,3,'2024-03-20',14,77.78,0),(95,3,'2024-03-21',16,88.89,0),(96,3,'2024-03-22',16.8,93.33,0),(97,3,'2024-03-23',17.2,95.56,0),(98,3,'2024-03-24',17,94.44,0),(99,3,'2024-03-25',18,100,0),(100,3,'2024-03-26',17,94.44,0),(101,3,'2024-03-27',18,100,0),(102,3,'2024-03-28',17,94.44,0),(103,3,'2024-03-29',17.4,96.67,0),(104,3,'2024-03-30',16,88.89,0),(105,3,'2024-03-31',16,88.89,0),(106,3,'2024-04-01',15,83.33,0),(107,3,'2024-04-02',14,77.78,0),(108,4,'2024-03-03',11.5,60.53,0),(109,4,'2024-03-04',14.5,76.32,0),(110,4,'2024-03-05',17,89.47,0),(111,4,'2024-03-06',18.5,97.37,0),(112,4,'2024-03-07',14,73.68,0),(113,4,'2024-03-08',15.5,81.58,0),(114,4,'2024-03-09',14.5,76.32,0),(115,4,'2024-03-10',15.8,83.16,0),(116,4,'2024-03-11',18,94.74,0),(117,4,'2024-03-12',17,89.47,0),(118,4,'2024-03-13',14.5,76.32,0),(119,4,'2024-03-14',14.8,77.89,0),(120,4,'2024-03-15',14,73.68,0),(121,4,'2024-03-16',12.8,67.37,0),(122,4,'2024-03-17',15,78.95,0),(123,4,'2024-03-18',16.8,88.42,0),(124,4,'2024-03-19',11.8,62.11,0),(125,4,'2024-03-20',15.3,80.53,0),(126,4,'2024-03-21',15.8,83.16,0),(127,4,'2024-03-22',16,84.21,0),(128,4,'2024-03-23',16.2,85.26,0),(129,4,'2024-03-24',13.3,70,0),(130,4,'2024-03-25',11.2,58.95,0),(131,4,'2024-03-26',10.2,53.68,0),(132,4,'2024-03-27',14.8,77.89,0),(133,4,'2024-03-28',10.2,53.68,0),(134,4,'2024-03-29',10,52.63,0),(135,4,'2024-03-30',10,52.63,0),(136,4,'2024-03-31',13,68.42,0),(137,4,'2024-04-01',5,26.32,0),(138,4,'2024-04-02',9,47.37,0);
/*!40000 ALTER TABLE `reservoir_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservoirs`
--

DROP TABLE IF EXISTS `reservoirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservoirs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservoir_name` varchar(255) NOT NULL,
  `critical_level` float NOT NULL,
  `max_level` float NOT NULL,
  `design_volume` float NOT NULL,
  `reservoir_description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservoirs`
--

LOCK TABLES `reservoirs` WRITE;
/*!40000 ALTER TABLE `reservoirs` DISABLE KEYS */;
INSERT INTO `reservoirs` VALUES (1,'Magwegwe',9,17.9,10800,'Constructed in 1952, Magwegwe Reservoir played a crucial role in the early development of the city\'s western suburbs. With a design volume of 108,000 cubic meters, it holds a critical level of 9 feet and a maximum capacity of 17.9 feet.  Fun fact: The original design documents for Magwegwe Reservoir are rumored to have been signed by a famous engineer while he was picnicking near the dam site! Today, it primarily supplies water to the growing industrial zone on the city\'s outskirts.'),(2,'Hillside',7,18.6,45000,'Hillside Reservoir, built in 1978, is known for its picturesque location and is a popular spot for birdwatching. Though smaller than its counterparts, with a design volume of 45,000 cubic meters, it provides a vital source of water for the surrounding residential neighborhoods. The reservoir maintains a critical level of 7 feet and a maximum capacity of 8.6 feet.'),(3,'Rifle Range',5,18,67500,'Rifle Range Reservoir, constructed in 1960, has an interesting history. It was originally built to support a nearby shooting range, but its purpose shifted to municipal water supply after the range closed in the 1980s.  Boasting a design volume of 67,500 cubic meters, it has a critical level of 5 feet and a maximum capacity of 18 feet. The reservoir supplies water to the central business district and several high-rise buildings.'),(4,'6J',12,19,45000,'The relatively new 6J Reservoir, completed in 1995, incorporates modern water management technologies.  This 45,000 cubic meter capacity reservoir plays a vital role in ensuring a consistent water supply during peak demand periods. It maintains a critical level of 12 feet and a maximum capacity of 19 feet.  Primarily, 6J Reservoir supplies water to the city\'s eastern suburbs.'),(5,'Tuli',6,19,45000,'Tuli Reservoir, constructed in 1939, is the oldest and largest reservoir in the city\'s network.  With a design volume of 45,000 cubic meters, it has a critical level of 6 feet and a maximum capacity of 19 feet.  Tuli Reservoir serves as a critical backup source during emergencies and supplies water to several outlying communities.'),(6,'Criterion Clear',1,3.75,90000,'Criterion Clear Reservoir, built in 1998, is known for its advanced water treatment facilities.  This 90,000 cubic meter capacity reservoir plays a vital role in supplying high-quality drinking water to the city\'s central areas. It maintains a critical level of 1 meter and a maximum capacity of 3.75 meters.'),(7,'Criterion Raw',1,7.5,140000,'Criterion Raw Reservoir, the largest reservoir in the system completed in 1997, provides raw water for further treatment at the Criterion Water Treatment Plant.  This massive reservoir boasts a design volume of 1,400,000 cubic meters and maintains a critical level of 1 meter and a maximum capacity of 7.5 meters.  It serves as the primary source of water for the entire city.');
/*!40000 ALTER TABLE `reservoirs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dylan','Mlilo','Sherry123#','dylanmlilo12@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-24 20:47:56
