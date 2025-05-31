-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: fitnessapp2
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `achievement`
--

DROP TABLE IF EXISTS `achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievement` (
  `achievement_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `achievement_type` enum('First Workout','First 5K Run','10 Workouts Streak','100 Workouts Completed','Other') DEFAULT NULL,
  `date_achieved` date DEFAULT NULL,
  PRIMARY KEY (`achievement_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `achievement_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement`
--

LOCK TABLES `achievement` WRITE;
/*!40000 ALTER TABLE `achievement` DISABLE KEYS */;
INSERT INTO `achievement` VALUES (1,1,'First Workout','2024-03-06'),(2,2,'First 5K Run','2024-03-07'),(3,3,'10 Workouts Streak','2024-03-08'),(4,4,'100 Workouts Completed','2024-03-09'),(5,5,'First Workout','2024-03-10'),(6,6,'First 5K Run','2024-03-11'),(7,7,'10 Workouts Streak','2024-03-12'),(8,8,'100 Workouts Completed','2024-03-13'),(9,9,'First Workout','2024-03-14'),(10,10,'First 5K Run','2024-03-15'),(11,11,'10 Workouts Streak','2024-03-16'),(12,12,'100 Workouts Completed','2024-03-17'),(13,13,'First Workout','2024-03-18'),(14,14,'First 5K Run','2024-03-19'),(15,15,'10 Workouts Streak','2024-03-20'),(16,1,'100 Workouts Completed','2024-03-21'),(17,2,'First Workout','2024-03-22'),(18,3,'First 5K Run','2024-03-23'),(19,4,'10 Workouts Streak','2024-03-24'),(20,5,'100 Workouts Completed','2024-03-25');
/*!40000 ALTER TABLE `achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise` (
  `exercise_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`exercise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
INSERT INTO `exercise` VALUES (1,'Push-up','Strength Training','Bodyweight exercise targeting upper body muscles.'),(2,'Running','Cardio','Outdoor or indoor aerobic exercise involving running or jogging.'),(3,'Yoga','Flexibility and Relaxation','Mind-body practice combining physical poses, breathing exercises, and meditation.'),(4,'Cycling','Cardio','Riding a bicycle for fitness or transportation.'),(5,'Plank','Core Strengthening','Isometric exercise targeting core muscles and improving stability.'),(6,'Deadlift','Strength','A compound exercise that targets multiple muscle groups, including the lower back, glutes, and hamstrings.'),(7,'Push-up','Bodyweight','A classic bodyweight exercise that primarily works the chest, shoulders, and triceps.'),(8,'Pull-up','Bodyweight','An upper body exercise that targets the back, biceps, and shoulders.'),(9,'Lunges','Strength','A unilateral lower body exercise that targets the quadriceps, hamstrings, and glutes.'),(10,'Bicep Curl','Strength','An isolation exercise for the biceps, typically performed with dumbbells or a barbell.'),(11,'Tricep Dip','Bodyweight','An effective exercise for targeting the triceps, often performed using parallel bars or a stable surface.'),(12,'Squat','Strength','A compound movement that targets the lower body, including the quadriceps, hamstrings, and glutes.'),(13,'Plank','Core','An isometric exercise that strengthens the core muscles, including the abdominals and lower back.'),(14,'Russian Twist','Core','A core exercise that targets the obliques, performed by twisting the torso from side to side.'),(15,'Mountain Climber','Cardio','A dynamic exercise that elevates heart rate and works multiple muscle groups, including the core and legs.');
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal` (
  `goal_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `goal_type` enum('Weight Loss','Muscle Gain','Endurance','Flexibility','Other') DEFAULT NULL,
  `target` float DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `achieved` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`goal_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `goal_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (1,1,'Weight Loss',10,'2024-01-01','2024-06-30',1),(2,2,'Muscle Gain',5,'2024-02-01','2024-07-31',0),(3,3,'Flexibility',NULL,'2024-03-01','2024-06-30',0),(4,4,'Endurance',NULL,'2024-01-01','2024-12-31',0),(5,5,'Weight Loss',8,'2024-02-15','2024-08-15',0),(6,8,'Weight Loss',10,'2024-01-01','2024-06-30',0),(7,2,'Muscle Gain',5,'2024-02-01','2024-07-31',0),(8,3,'Flexibility',NULL,'2024-03-01','2024-06-30',0),(9,4,'Endurance',NULL,'2024-01-01','2024-12-31',0),(10,5,'Weight Loss',8,'2024-02-15','2024-08-15',0),(11,6,'Muscle Gain',3,'2024-03-01','2024-08-31',0),(12,7,'Flexibility',NULL,'2024-04-01','2024-09-30',0),(13,8,'Endurance',NULL,'2024-02-01','2024-11-30',0),(14,9,'Weight Loss',6,'2024-03-15','2024-09-15',0),(15,10,'Flexibility',4,'2024-05-01','2024-10-31',0),(16,11,'Flexibility',NULL,'2024-06-01','2024-11-30',0),(17,12,'Endurance',NULL,'2024-04-01','2024-12-31',0),(18,13,'Weight Loss',9,'2024-06-15','2025-01-15',1),(19,14,'Muscle Gain',6,'2024-07-01','2025-02-28',0),(20,15,'Flexibility',NULL,'2024-08-01','2025-03-31',0),(21,1,'Endurance',NULL,'2024-09-01','2025-04-30',0),(22,2,'Weight Loss',7,'2024-10-15','2025-05-15',1),(23,3,'Muscle Gain',5,'2024-11-01','2025-06-30',0),(24,4,'Flexibility',NULL,'2024-12-01','2025-07-31',0),(25,5,'Endurance',NULL,'2025-01-01','2025-08-31',0),(26,6,'Weight Loss',5,'2025-02-15','2025-09-15',1),(27,7,'Muscle Gain',3,'2025-03-01','2025-10-31',0),(28,8,'Flexibility',NULL,'2025-04-01','2025-11-30',0),(29,9,'Endurance',NULL,'2025-05-01','2025-12-31',0),(30,10,'Weight Loss',8,'2025-06-15','2026-01-15',0),(31,11,'Muscle Gain',6,'2025-07-01','2026-02-28',0),(32,12,'Flexibility',NULL,'2025-08-01','2026-03-31',0),(33,13,'Endurance',NULL,'2025-09-01','2026-04-30',0),(34,14,'Weight Loss',7,'2025-10-15','2026-05-15',0),(35,15,'Muscle Gain',5,'2025-11-01','2026-06-30',0);
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user`
--

LOCK TABLES `system_user` WRITE;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` VALUES (1,'alice_smith','alice.smith@example.com','1990-05-15','Female',165,55),(2,'bob_jones','bob.jones@example.com','1988-09-23','Male',180,80),(3,'claire_wilson','claire.wilson@example.com','1995-02-10','Female',170,60),(4,'david_brown','david.brown@example.com','1992-11-07','Male',175,70),(5,'emma_taylor','emma.taylor@example.com','1987-07-30','Female',160,50),(6,'john_doe','john.doe@example.com','1990-05-15','Male',180,75),(7,'jane_smith','jane.smith@example.com','1988-09-23','Female',165,60),(8,'alex_wang','alex.wang@example.com','1995-02-10','Male',175,80),(9,'emily_jones','emily.jones@example.com','1992-11-07','Female',170,55),(10,'michael_nguyen','michael.nguyen@example.com','1987-07-30','Male',185,70),(11,'sarah_wilson','sarah.wilson@example.com','1993-08-20','Female',170,65),(12,'ryan_garcia','ryan.garcia@example.com','1991-04-12','Male',175,70),(13,'olivia_smith','olivia.smith@example.com','1996-01-05','Female',160,55),(14,'daniel_brown','daniel.brown@example.com','1990-12-15','Male',180,75),(15,'ava_miller','ava.miller@example.com','1988-07-25','Female',165,60);
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout`
--

DROP TABLE IF EXISTS `workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workout` (
  `workout_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `exercise_id` int(11) DEFAULT NULL,
  `calories_burned` int(11) DEFAULT NULL,
  PRIMARY KEY (`workout_id`),
  KEY `user_id` (`user_id`),
  KEY `exercise_id` (`exercise_id`),
  CONSTRAINT `exercise_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`),
  CONSTRAINT `workout_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout`
--

LOCK TABLES `workout` WRITE;
/*!40000 ALTER TABLE `workout` DISABLE KEYS */;
INSERT INTO `workout` VALUES (1,1,'Morning Workout','Start your day on a high note with an invigorating morning workout designed to awaken your body and mind, setting the tone for a productive and energized day ahead.','2024-03-01 07:00:00','2024-03-01 07:30:00',6,702),(2,2,'Afternoon Run','Another parkday!','2024-03-02 16:00:00','2024-03-02 17:00:00',2,577),(3,3,'Yoga Session','Indulge in a serene yoga session that soothes the mind, body, and soul, guiding you through gentle stretches and mindful movements to promote relaxation and inner peace.','2024-03-03 09:00:00','2024-03-03 10:00:00',3,478),(4,4,'Urban Cycling Adventure 4','Exploring the city streets on two wheels during a beautiful sunset. 4','2024-03-04 18:00:00','2024-03-04 19:00:00',4,358),(5,5,'Core Workout','Engage your core muscles and build strength from within with this dynamic and challenging core workout routine, designed to sculpt and tone your midsection.','2024-03-05 10:00:00','2024-03-05 10:30:00',13,758),(6,1,'Morning Workout','Elevate your morning routine with a refreshing workout that revitalizes your senses and boosts your mood, leaving you feeling strong, focused, and ready to conquer the day.','2024-03-01 07:00:00','2024-03-01 07:30:00',7,313),(7,2,'Afternoon Run','Scenic jog around the park.','2024-03-02 16:00:00','2024-03-02 17:00:00',2,394),(8,3,'Yoga Session','Embark on a journey of self-discovery with a transformative yoga session designed to cultivate mindfulness, enhance flexibility, and restore balance to your being.','2024-03-03 09:00:00','2024-03-03 10:00:00',3,730),(9,4,'Evening Cycle','Cycling through the city streets.','2024-03-04 18:00:00','2024-03-04 19:00:00',4,767),(10,5,'Core Workout','Ignite your core with a high-intensity workout that targets all aspects of abdominal strength, from stability to endurance, leaving you feeling empowered and energized.','2024-03-05 10:00:00','2024-03-05 10:30:00',7,645),(11,3,'Morning Workout','Fuel your morning with positivity and purpose as you engage in a dynamic workout that ignites your metabolism, increases energy levels, and enhances mental clarity.','2024-03-06 07:00:00','2024-03-06 07:30:00',8,622),(12,7,'Zen Yoga Flow 12','Embark on a journey of self-discovery and tranquility with this soothing yoga practice. 12','2024-03-07 16:00:00','2024-03-07 17:00:00',3,879),(13,8,'Yoga Session','Immerse yourself in the ancient practice of yoga as you flow through a series of poses and breathing exercises, fostering a deeper connection to yourself and the world around you.','2024-03-08 09:00:00','2024-03-08 10:00:00',3,828),(14,9,'Evening Run','Experience the thrill of urban exploration as you glide through bustling city streets during the enchanting twilight hours.','2024-03-09 18:00:00','2024-03-09 19:00:00',2,500),(15,4,'Core Workout','Unlock the power of your core with a comprehensive workout that combines innovative exercises and precise movements to enhance stability, improve posture, and boost overall fitness.','2024-03-10 10:00:00','2024-03-10 10:30:00',13,417),(16,11,'Morning Workout','Transform your mornings into moments of personal growth and empowerment with a tailored workout regimen that promotes physical well-being and fosters a positive mindset.','2024-03-11 07:00:00','2024-03-11 07:30:00',9,989),(17,12,'Afternoon Run','Rejuvenate your afternoon with a brisk run under the warm sun, exploring tranquil park trails and scenic pathways.','2024-03-12 16:00:00','2024-03-12 17:00:00',2,589),(18,7,'Yoga Session','Nourish your spirit and awaken your senses with a rejuvenating yoga session that harmonizes body and mind, leaving you feeling centered, grounded, and revitalized.','2024-03-13 09:00:00','2024-03-13 10:00:00',3,379),(19,14,'Evening Run','Embark on a scenic journey through urban landscapes, soaking in the vibrant sights and sounds of the city as the sun sets.','2024-03-14 18:00:00','2024-03-14 19:00:00',2,531),(20,15,'Core Workout','Focus on strengthening the core muscles with planks and crunches.','2024-03-15 10:00:00','2024-03-15 10:30:00',7,515),(21,1,'Morning Workout','Quick workout routine to start the day energized.','2024-03-16 07:00:00','2024-03-16 07:30:00',11,685),(22,2,'Afternoon Run','Unwind and recharge with an invigorating afternoon run, where each stride brings a sense of freedom and clarity.','2024-03-17 16:00:00','2024-03-17 17:00:00',2,877),(23,3,'Yoga Session','Relaxing yoga flow for flexibility and stress relief.','2024-03-18 09:00:00','2024-03-18 10:00:00',3,630),(24,4,'Evening Run','Discover the beauty of the city at dusk with this exhilarating evening run, weaving through iconic landmarks and bustling neighborhoods.','2024-03-19 18:00:00','2024-03-19 19:00:00',2,921),(25,5,'Core Workout','Transform your core with a series of targeted exercises that challenge and strengthen your abdominal muscles, fostering balance, agility, and functional strength.','2024-03-20 10:00:00','2024-03-20 10:30:00',13,311),(26,11,'Morning Workout','Harness the power of the morning hours to prioritize self-care and fitness, embracing a workout routine that nourishes your body, uplifts your spirit, and sets the stage for success.','2024-03-21 07:00:00','2024-03-21 07:30:00',12,594),(27,7,'Afternoon Run','Escape the hustle and bustle of daily life with a refreshing afternoon jog, soaking in the sights and sounds of nature.','2024-03-22 16:00:00','2024-03-22 17:00:00',2,337),(28,8,'Yoga Session','Elevate your practice with a dynamic yoga session that challenges your body\'s limits and expands your awareness, inviting you to explore new levels of strength, flexibility, and inner peace.','2024-03-23 09:00:00','2024-03-23 10:00:00',3,306),(29,9,'Evening Run','Immerse yourself in the magic of the city lights as you embark on a revitalizing evening run, breathing in the energy of the urban landscape.','2024-03-24 18:00:00','2024-03-24 19:00:00',2,918),(30,9,'Core Workout','Elevate your fitness routine with a core-focused workout that goes beyond traditional crunches, offering a full-body experience that enhances core stability, flexibility, and endurance.','2024-03-25 10:00:00','2024-03-25 10:30:00',14,568),(31,11,'Morning Workout','Rise and shine with a morning workout that kickstarts your metabolism, boosts circulation, and infuses your day with a burst of energy, paving the way for a vibrant and fulfilling day ahead.','2024-03-26 07:00:00','2024-03-26 07:30:00',5,490),(32,12,'Afternoon Run','Embrace the energy of the afternoon as you embark on a revitalizing run through picturesque landscapes and lush greenery.','2024-03-27 16:00:00','2024-03-27 17:00:00',2,444),(33,13,'Yoga Session','Discover the healing power of yoga as you surrender to the present moment and embrace the flow of life with grace and intention, unlocking a pathway to holistic wellness and self-discovery.','2024-03-28 09:00:00','2024-03-28 10:00:00',3,451),(34,14,'Evening Run','Elevate your evening routine with a refreshing run through the heart of the city, where every step brings new sights and sensations.','2024-03-29 18:00:00','2024-03-29 19:00:00',2,622),(35,15,'Power Core Blast 35','An intense and invigorating workout targeting core muscles with planks, crunches, and more. 35','2024-03-30 10:00:00','2024-03-30 10:30:00',13,760),(36,1,'Rise and Energize 36','Start the day with a burst of energy with this quick morning routine designed to awaken your senses. 36','2024-03-31 07:00:00','2024-03-31 07:30:00',13,930),(37,2,'Afternoon Run','Transform your afternoon into a journey of wellness and vitality with a revitalizing run through urban parks and serene nature trails.','2024-04-01 16:00:00','2024-04-01 17:00:00',2,669);
/*!40000 ALTER TABLE `workout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-18 14:59:02
