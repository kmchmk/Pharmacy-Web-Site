-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: malithtk_pharmacy
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `productName` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `rackNo` int(11) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `code`, `productName`, `brand`, `rackNo`, `price`, `description`) VALUES (1,'900a','Acetaminophen','A & Z Pharmaceutical, Inc.',2,50.00,'the gastrointestinal tract (digestive system)'),(2,'901b','Adderall','A-S Medication Solutions, LLC',2,30.00,'For the cardiovascular system.'),(3,'902c','Alprazolam','AAIPharma',12,70.00,'the central nervous system'),(4,'903d','Amitriptyline','Abbott Laboratories',0,110.00,'pain (analgesic drugs)'),(5,'904e','Amlodipine','AbbVie Inc.',5,190.00,'musculo-skeletal disorders'),(6,'905f','Amoxicillin','Acadia Pharmaceuticals, Inc.',12,180.00,'the eye'),(7,'906g','Ativan','Accord Healthcare Inc.',0,30.00,'the ear, nose and oropharynx'),(8,'907h','Atorvastatin','Accredo Health Group, Inc.',12,40.00,'the respiratory system'),(9,'908i','Azithromycin','Acella Pharmaceuticals, LLC',2,90.00,'endocrine problems'),(10,'909j','Ciprofloxacin','Acorda Therapeutics, Inc.',15,190.00,'For the reproductive system or urinary system'),(11,'910k','Citalopram','Actavis Pharma, Inc.',1,80.00,'For contraception'),(12,'911l','Clindamycin','Actelion Pharmaceuticals US, Inc.',2,150.00,'For obstetrics and gynecology'),(13,'912m','Clonazepam','Acura Pharmaceuticals, Inc.',2,100.00,'For the skin'),(14,'913n','Codeine','Acusphere, Inc.',11,10.00,'For infections and infestations'),(15,'914o','Cyclobenzaprine','Adapt Pharma, Inc.',11,130.00,'For the immune system'),(16,'915p','Cymbalta','Adeona Pharmaceuticals, Inc.,',15,180.00,'For allergic disorders'),(17,'916q','Doxycycline','Adolor Corporation',9,130.00,'For nutrition'),(18,'917r','Gabapentin','Advance Pharmaceuticals Inc.',14,60.00,'For neoplastic disorders'),(19,'918s','Hydrochlorothiazide','Advanced Life Sciences, Inc',4,190.00,'For diagnostics'),(20,'919t','Ibuprofen','Advanced Pharmaceutical Services Inc',9,170.00,'For euthanasia'),(21,'920u','Lexapro','A & Z Pharmaceutical, Inc.',5,170.00,'the gastrointestinal tract (digestive system)'),(22,'921v','Lisinopril','A-S Medication Solutions, LLC',12,40.00,'For the cardiovascular system'),(23,'922w','Loratadine','AAIPharma',13,140.00,'the central nervous system'),(24,'923x','Lorazepam','Abbott Laboratories',1,140.00,'pain (analgesic drugs)'),(25,'924y','Losartan','AbbVie Inc.',5,170.00,'musculo-skeletal disorders'),(26,'925z','Lyrica','Acadia Pharmaceuticals, Inc.',14,60.00,'the eye'),(27,'926a','Meloxicam','Accord Healthcare Inc.',13,80.00,'the ear, nose and oropharynx'),(28,'927b','Metformin','Accredo Health Group, Inc.',0,70.00,'the respiratory system'),(29,'928c','Metoprolol','Acella Pharmaceuticals, LLC',11,60.00,'endocrine problems'),(30,'929d','Naproxen','Acorda Therapeutics, Inc.',7,150.00,'For the reproductive system or urinary system'),(31,'930e','Omeprazole','Actavis Pharma, Inc.',10,120.00,'For contraception'),(32,'931f','Oxycodone','Actelion Pharmaceuticals US, Inc.',11,70.00,'For obstetrics and gynecology'),(33,'932g','Pantoprazole','Acura Pharmaceuticals, Inc.',4,190.00,'For the skin'),(34,'933h','Prednisone','Acusphere, Inc.',7,10.00,'For infections and infestations'),(35,'934i','Tramadol','Adapt Pharma, Inc.',3,20.00,'For the immune system'),(36,'935j','Trazodone','Adeona Pharmaceuticals, Inc.,',11,70.00,'For allergic disorders'),(37,'936k','Panadol','Adolor Corporation',8,150.00,'For nutrition'),(38,'937l','Wellbutrin','Advance Pharmaceuticals Inc.',14,70.00,'For neoplastic disorders'),(39,'938m','Xanax','Advanced Life Sciences, Inc',14,70.00,'For diagnostics'),(40,'939n','Zoloft','Advanced Pharmaceutical Services Inc',0,170.00,'For euthanasia');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-16 18:20:42
