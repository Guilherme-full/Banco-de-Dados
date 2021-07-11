-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: db_biblioteca
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `ID_Autor` smallint NOT NULL,
  `Nome_Autor` varchar(50) DEFAULT NULL,
  `sobrenome_autor` varchar(60) DEFAULT 'da Silva',
  PRIMARY KEY (`ID_Autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (3,'Vitor','Souza'),(4,'Isis','Moreira'),(5,'Nelsivaldo','Ribeiro'),(6,'Italo','Santiago'),(7,'Igor','Estevão'),(8,'Walter','Santos'),(14,'Daniel','Barret'),(20,'Guilherme','Xavier'),(55,'Sandro','Alves'),(66,'Mickael','Bispo'),(77,'Erika','Souza'),(88,'Jamily','Ferreira'),(89,'Luis','F'),(90,'Miche','A'),(91,'William','B'),(92,'Giacomo','B'),(93,'Honoré','C'),(94,'Victor Hugo','D'),(95,'Ralph','E'),(96,'Nathaniel','E'),(97,'Gérard','E'),(98,'Lorde','E'),(99,'Charles','F'),(100,'Robert','F'),(101,'Sören','F'),(102,'Charlotte','F'),(103,'Emily','F'),(104,'George','F'),(105,'Herman','J'),(106,'Walt','K'),(107,'Charles','K'),(108,'Gustave','K'),(109,'Fiodor','K'),(110,'Dante','K'),(111,'Henrik','K'),(112,'Leon','L'),(113,'Emily','L'),(114,'Christina','L'),(115,'Lewis','L'),(116,'Mark','L'),(117,'Algernon','L'),(118,'Walter','M'),(119,'Joaquim','M'),(120,'Friedrich','M'),(121,'Arthur','Rimbaud'),(122,'Oscar','Wilde'),(123,'Sigmund','Freud'),(124,'Anton','Tchekhov'),(125,'Marcel','Proust'),(126,'Paul','Valéry'),(127,'James','Joyce'),(128,'Franz','Kafka'),(129,'Eugenio','Montale'),(130,'William','Faulkner'),(131,'Hart','Crane'),(132,'Ernest','Hemingway'),(133,'Jorge Luis','Borges'),(134,'Luis','Cernuda'),(135,'Alejo','Carpentier'),(136,'Samuel','Beckett');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoras`
--

DROP TABLE IF EXISTS `editoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoras` (
  `ID_Editora` smallint NOT NULL AUTO_INCREMENT,
  `Nome_Editora` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Editora`),
  KEY `idx_editora` (`Nome_Editora`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoras`
--

LOCK TABLES `editoras` WRITE;
/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` VALUES (225,'Aleluia'),(113,'Aleph'),(226,'AltoAstral'),(227,'AnimalWorld'),(228,'Antenna Edições Técnicas'),(229,'APCultural'),(22,'Apple'),(231,'Artenova'),(26,'Bertelsmann'),(232,'Bruguera'),(233,'CalvinoLimitada'),(234,'CampusElsevier'),(236,'Casa PBrasileira'),(237,'Centro'),(239,'Cléofas'),(240,'Companhia das Letras'),(241,'Companhia Editora Leitura'),(242,'Companhia Editora Nacional'),(243,'Cortez Cosac & Naify'),(114,'Darkside'),(244,'Difusão Cultural do Livro'),(245,'Difusão Européia do Livro'),(246,'Digerati'),(250,'Edições CNBB'),(248,'Edições G.R.D.'),(249,'Editora da Fundação Getúlio'),(247,'Editora do Autor'),(23,'Editora Rocco'),(230,'EditoraAriel'),(251,'Estação Liberdade'),(252,'Fundamento'),(253,'Geração Editorial'),(254,'Gianlorenzo Schettino'),(112,'Globo Livros'),(255,'Graphia Editorial'),(256,'Grupo Cultivar'),(257,'Grupo Lund'),(258,'Guanabara Koogan'),(259,'Guarda-chuva'),(260,'Hemus'),(261,'Ibis Libris'),(262,'Iluminuras'),(264,'Imprensa Liberdade'),(263,'Imprensa Oficial'),(266,'Impressão Régia'),(267,'Intrínseca'),(268,'J. Ribeiro dos Santos'),(269,'Jorge Zahar Editor'),(270,'Junta de Educação Religiosa'),(271,'Livraria José Olympio'),(272,'Livraria Schmidt'),(3,'Microsoft Press'),(2,'O relly'),(1,'Prentice Hall'),(235,'Presbiteriana'),(111,'Suma'),(25,'Thomson'),(4,'Wiley');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `ID_Livro` smallint NOT NULL AUTO_INCREMENT,
  `Nome_livro` varchar(50) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `Data_Pub` date NOT NULL,
  `Preco_Livro` decimal(10,0) NOT NULL,
  `ID_Autor` smallint NOT NULL,
  `ID_editora` smallint NOT NULL,
  PRIMARY KEY (`ID_Livro`),
  KEY `fk_ID_Autor` (`ID_Autor`),
  KEY `fk_ID_Editora` (`ID_editora`),
  CONSTRAINT `fk_ID_Autor` FOREIGN KEY (`ID_Autor`) REFERENCES `autores` (`ID_Autor`),
  CONSTRAINT `fk_ID_Editora` FOREIGN KEY (`ID_editora`) REFERENCES `editoras` (`ID_Editora`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'Harry Potter','152780','2016-05-10',51,4,3),(2,'O segredo do Violinista','113490','2018-02-10',91,3,4),(3,'O Paraiso','202040','2020-10-01',100,6,1),(4,'Correr ou Morrer','303040','2019-07-01',200,8,22),(5,'A arte do conhecimento','556786','2014-09-24',120,20,23),(6,'O Segredo','404020','2013-09-10',91,5,26),(8,'Vale da escuridão','512360','2014-05-10',61,7,25),(9,'Turma da Mônica','511111','2015-08-18',21,14,2),(10,'O descobrimento','131322','2021-07-21',200,55,111),(11,'Guerra e Paz','564212','2020-10-10',120,66,112),(12,'Em Busca do Tempo Perdido','101011','2019-11-29',100,77,113),(13,'Em Busca da Felicidade','554665','2011-10-09',40,88,114),(162,'O Nome da Rosa','111111','2011-02-14',61,100,225),(163,'O Pêndulo de Foucault','222222','2011-03-15',75,101,226),(164,'O Estrangeiro','333333','2011-04-16',89,102,227),(165,'A Peste','444444','2011-05-17',79,103,228),(166,'Admirável Mundo Novo','555555','2011-06-17',56,104,229),(199,'A Revolução dos Bichos','666666','2011-07-18',78,105,230),(200,'Os Irmãos Karamázov ','777777','2011-08-19',45,106,231),(201,'Crime e Castigo','888888','2011-09-20',44,107,232),(202,'O Pequeno Príncipe','999999','2011-10-21',22,108,234),(203,'Por Quem os Sinos Dobram','101010','2011-11-22',11,109,235),(204,'Ulysses','101011','2011-12-23',66,110,236),(226,'Finnegans Wake','121212','2012-01-01',89,111,237),(241,'Hamlet','252525','2013-01-24',50,123,249),(242,'Os Buddenbrook','262626','2013-02-26',70,124,250),(243,'A Montanha Mágica','272727','2013-03-27',80,125,256),(244,'Doutor Fausto','282828','2013-04-18',90,126,257),(245,'Capitães da Areia','292929','2013-05-12',100,127,258),(246,'As Flores do Mal','303030','2013-06-10',119,128,259),(247,'A Terra Desolada','313131','2013-07-25',120,129,260),(248,'O Tempo e o Vento','323232','2013-08-19',121,130,261),(249,'Vidas Secas','333331','2013-09-15',198,131,262),(250,'Os Miseráveis','343434','2013-10-24',200,132,263),(251,'Notre-Dame de Paris','353535','2013-11-28',220,133,264),(252,'Ilusões Perdidas','373737','2014-01-12',22,135,266),(253,'A Tarde de um Fauno','383838','2014-02-14',21,136,267);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_relacao`
--

DROP TABLE IF EXISTS `vw_relacao`;
/*!50001 DROP VIEW IF EXISTS `vw_relacao`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_relacao` AS SELECT 
 1 AS `livro`,
 1 AS `autor`,
 1 AS `editora`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_relacao`
--

/*!50001 DROP VIEW IF EXISTS `vw_relacao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_relacao` AS select `pc`.`Nome_livro` AS `livro`,`pp`.`Nome_Autor` AS `autor`,`po`.`Nome_Editora` AS `editora` from ((`livro` `pc` join `autores` `pp` on((`pc`.`ID_Autor` = `pp`.`ID_Autor`))) join `editoras` `po` on((`pc`.`ID_editora` = `po`.`ID_Editora`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-11 11:04:53
