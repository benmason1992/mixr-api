-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: homestead
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `cocktail_ingredient`
--

DROP TABLE IF EXISTS `cocktail_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cocktail_ingredient` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cocktail_id` bigint(20) unsigned NOT NULL,
  `ingredient_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cocktail_ingredient_cocktail_id_foreign` (`cocktail_id`),
  KEY `cocktail_ingredient_ingredient_id_foreign` (`ingredient_id`),
  CONSTRAINT `cocktail_ingredient_cocktail_id_foreign` FOREIGN KEY (`cocktail_id`) REFERENCES `cocktails` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cocktail_ingredient_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cocktail_ingredient`
--

LOCK TABLES `cocktail_ingredient` WRITE;
/*!40000 ALTER TABLE `cocktail_ingredient` DISABLE KEYS */;
INSERT INTO `cocktail_ingredient` VALUES (1,1,1),(2,1,7),(3,1,8),(4,1,9),(5,1,10),(6,1,11),(7,1,12),(8,2,1),(9,2,13),(10,2,7),(11,2,14),(12,2,15),(13,2,16),(14,2,8),(15,2,17),(16,2,18),(17,3,1),(18,3,19),(19,3,20),(20,3,9),(21,3,21),(22,3,14),(23,3,15),(24,3,12),(25,4,1),(26,4,9),(27,4,22),(28,5,1),(29,5,23),(30,5,24),(31,5,21),(32,5,12),(33,6,20),(34,6,25),(35,6,21),(36,6,9),(37,6,6),(38,7,2),(39,7,26),(40,7,9),(41,7,27),(42,7,18),(43,8,2),(44,8,28),(45,8,29),(46,8,18),(47,9,2),(48,9,31),(49,9,30),(50,9,8),(51,10,2),(52,10,32),(53,10,33),(54,10,34),(55,10,35),(56,10,36),(57,10,18),(58,11,2),(59,11,17),(60,11,16),(61,11,18),(62,12,2),(63,12,30),(64,12,18),(65,13,3),(66,13,8),(67,13,10),(68,13,13),(69,13,18),(70,14,3),(71,14,8),(72,14,13),(73,14,10),(74,14,19),(75,14,18),(76,15,3),(77,15,37),(78,15,38),(79,16,3),(80,16,39),(81,16,8),(82,16,10),(83,16,18),(84,17,3),(85,17,28),(86,17,16),(87,17,26),(88,17,18),(89,17,17),(90,18,3),(91,18,40),(92,18,17),(93,18,18),(94,19,4),(95,19,34),(96,19,26),(97,19,18),(98,19,9),(99,20,4),(100,20,17),(101,20,16),(102,20,18),(103,21,4),(104,21,18),(105,21,41),(106,22,4),(107,22,18),(108,22,10),(109,22,9),(110,22,43),(111,22,42),(112,23,4),(113,23,26),(114,23,18),(115,23,21),(116,24,4),(117,24,16),(118,24,18),(119,24,44),(120,24,45),(121,25,5),(122,25,18),(123,25,19),(124,25,46),(125,26,5),(126,26,18),(127,26,27),(128,26,47),(129,27,5),(130,27,12),(131,27,16),(132,27,8),(133,27,9),(134,27,18),(135,28,5),(136,28,18),(137,28,17),(138,28,48),(139,28,49),(140,29,5),(141,29,18),(142,29,47),(143,30,5),(144,30,10),(145,30,18),(146,30,19),(147,30,42),(148,31,6),(149,31,50),(150,32,6),(151,32,51),(152,33,6),(153,33,2),(154,34,6),(155,34,3),(156,34,8),(157,34,13),(158,35,6),(159,35,17),(160,36,6),(161,36,3),(162,36,8),(163,36,13),(164,6,1);
/*!40000 ALTER TABLE `cocktail_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cocktails`
--

DROP TABLE IF EXISTS `cocktails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cocktails` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cocktails`
--

LOCK TABLES `cocktails` WRITE;
/*!40000 ALTER TABLE `cocktails` DISABLE KEYS */;
INSERT INTO `cocktails` VALUES (1,'Mojito','Add 2 tbsp of sugar, 6 mint leaves, pour 1.5 parts of lime juice, crush lime juice, sugar and mint leaves with a muddler, fill the glass up with crushed ice, pour 2 parts white rum into the glass, fill up the glass with 3 parts club soda, garnish with mint leaves and lime wedges.','https://assets.bonappetit.com/photos/57acc0be1b33404414975167/16:9/w_2560,c_limit/mojito.jpg','2020-03-25 13:00:40','2020-03-25 16:25:23'),(2,'Hurricane','Fill up the shaker with ice cubes, add 1 part lemon juice, dash of grenadine, 1 tbsp sugar syrup, 3 parts orange juice, 1.5 part overproof rum, 1.5 part white rum, 1.5 part dark rum to the shaker. Shake well, fill up the glass with ice, strain into the glass, garnish with orange wedge.','https://d3m7xw68ay40x8.cloudfront.net/assets/2015/04/16170421/hurricane.jpg','2020-03-25 15:06:04','2020-03-25 16:25:51'),(3,'Zombie','Fill up the glass with ice, fill up the shaker with ice, pour 1 part pineapple juice, 1 part gold rum, 1 part overproof rum, 1 dash Angostura bitters, 1 part white rum into the shaker. Shake well, strain into the glass, garnish with pineapple and orange.','https://s3.us-east-2.amazonaws.com/chrissy-tuxedo-no2/1500x861recipe-zombie-cocktail-recipe.jpg','2020-03-25 15:08:42','2020-03-25 16:26:12'),(4,'Cuba Libre','Fill up the glass with ice, pour 0.5 part lime juice and 2.5 part white rum into the glass. Fill up the glass with cola, garnish with a lime wedge.','https://www.31dover.com/media/image/c2/aa/56/cuba_600x600.jpg','2020-03-25 15:10:49','2020-03-25 16:26:26'),(5,'Pina Colada','Add ice to the blender, add 4.5 parts pineapple juice, 1.5 parts coconut liquor and 1.5 parts white rum to the blender, blend together. Strain into the glass, garnish with a cocktail cherry and pineapple wedges','https://www.mensjournal.com/wp-content/uploads/mf/pina-colada-cocktail-1280.jpg?w=1200&h=630&crop=1','2020-03-25 15:13:19','2020-03-25 16:26:39'),(6,'Barracuda','Pour 3 parts pineapple juice, 1 dash of lime juice, 2.5 parts gold rum, 1 part Galliano into the glass, Stir together, Fill up the glass with 1 part prosecco, Garnish with a cocktail cherry','https://opendrinks.netlify.com/img/mojito.1a6252cf.jpg','2020-03-25 15:15:27','2020-03-25 16:27:22'),(7,'Cosmopolitan','Fill up the shaker with ice cubes, pour 2 parts of vodka, 1 and a half parts of cranberry juice, 1 part lime juice, 1 part cointreau, into the shaker, shake well, strain into the cocktail glass, garnish with orange wedge.','https://www.cointreau.com/uk/en/sites/uk/files/styles/share_image/public/cocktail-images/cocktail-cosmopolitan.jpg?h=99e9674f&itok=7GJGOi5O','2020-03-25 15:19:21','2020-03-25 16:27:44'),(8,'Vodka Martini','Add ice to the mixer glass, pour 3 parts vodka, half part olive juice, half part dry vermouth into the mixer glass, stir together, strain into the cocktail glass, garnish with olives.','https://uk.inshaker.com/uploads/cocktail/promo/281/wide_1542205198-Vodka_Martini-promo.jpg','2020-03-25 15:21:24','2020-03-25 15:21:24'),(9,'Expresso Martini','Fill up the shaker with ice cubes, pour 2 parts vodka, 1 part sugar syrup, half part coffee liquor, 2 and half parts coffee into the shaker. Shake well, strain into the cocktail glass.','https://americaoncoffee3.files.wordpress.com/2018/08/espresso-martini-1200x628-social.jpg?w=775','2020-03-25 15:22:55','2020-03-25 15:22:55'),(10,'Bloody Mary','Fill up the collins glass with ice cubes, pour half part lemon juice, 2 and half parts vodka into the glass, add 1 pinch of salt, 2 dashes of worcester sauce, 1 dash of tobasco sauce and a pinch of pepper. Fill up the glass with 4 and half parts of tomato juice, stir together, garnish with lemon wedge and celery.','https://cf.ltkcdn.net/cocktails/images/orig/221213-2091x1434-Bloody-mary.jpg','2020-03-25 15:25:34','2020-03-25 15:25:34'),(11,'Screwdriver','Fill up the collins glass with ice, Pour 1 part orange juice into the glass, Add 2 and half parts of vodka to the glass, Add a dash of grenadine to the glass, Garnish with orange wheel.','https://www.inspiredtaste.net/wp-content/uploads/2011/10/Screwdriver-Cocktail-Recipe-2-1200.jpg','2020-03-25 15:27:15','2020-03-26 15:42:26'),(12,'White Russian','Fill up the glass with ice, fill up the shaker with ice cubes, pour 1 part coffee liquor, 2 and half parts vodka into the shaker. Shake well, strain into the glass, add half and half.','https://mealplannerpro.com/images/recipes/4/698746.jpg','2020-03-25 15:30:01','2020-03-25 15:30:01'),(13,'Gin Fizz','Fill up the shaker with ice cubes, Pour 1 and a half parts lemon juice, 1 dash sugar syrup and 2 and a half parts gin into the shaker, Shake well, Strain into the collins glass, Fill up the glass with 4 parts soda, Garnish the glass with lemon wheel.','https://s3.us-east-2.amazonaws.com/chrissy-tuxedo-no2/1500x861recipe-ramos-gin-fizz-cocktail-recipe.jpg','2020-03-25 15:32:23','2020-03-26 15:45:48'),(14,'Tom Collins','Fill up the collins glass with ice, pour 1 and half parts lemon juice, half part sugar syrup, 2 and half parts gin into the glass. Stir together, fill up the glass with 3 parts club soda. Add 1 dash angostura drop by drop. Garnish with cocktail cherry and lime wedge.','https://www.inspiredtaste.net/wp-content/uploads/2011/07/Tom-Collins-Recipe-1200.jpg','2020-03-25 15:34:35','2020-03-25 15:34:35'),(15,'Negroni','Fill up the old fashioned glass with ice, pour 1 and a half part campari, 1 and a half sweet vermouth and 1 and a half part gin into the glass. Stir together, garnish with orange wedge.','https://assets.punchdrink.com/wp-content/uploads/2016/11/Recipe-How-to-Make-a-Negroni-Campari-Cocktail-Recipe-Ratio-Naren-Young-Dante-NYC.jpg','2020-03-25 15:36:09','2020-03-25 15:36:09'),(16,'Singapore Sling','Add ice cubes to the shaker, pour 2 parts of gin, 1 dash of lime juice and half a part sugar syrup. Shake well, strain into a highball glass over fresh ice. Add 3 parts club soda, garnish with lemon slice and cherry.','https://149347875.v2.pressablecdn.com/wp-content/uploads/2020/02/IG-1-SingaporeSling-1080x675.jpg','2020-03-25 15:39:35','2020-03-25 15:39:35'),(17,'Luigi','Fill up the mixer glass with ice cubes, pour half a part grenadine, half part orange juice, 1 dash cointreau, half part dry vermouth, 2 parts gin into the mixer glass. Stir together, strain into the cocktail glass, garnish with orange peel.','https://www.scienceofdrink.com/wp-content/uploads/2007/11/luigi-cocktail.jpg','2020-03-25 15:44:25','2020-03-25 15:44:25'),(18,'Paradise','Fill up the shaker with ice cubes, pour 1 part orange juice, 2 parts gin, 1 part apricot brandy into the shaker. Shake well, and strain into the cocktail glass.','https://winedharma.com/sites/winedharma.com/files/imagecache/auto-768/story/1923-cocktail-paradise-original-recipe-gin-apricot-brandy-orange-juice.jpg','2020-03-25 15:45:37','2020-03-25 15:45:37'),(19,'Margarita','Garnish with salt rim, fill up the shaker with ice cubes, pour 1 part lime juice, 1 part cointraue, 2 parts tequila into the shaker. Shake well, strain into the glass, garnish with lime wedge.','https://www.rachaelrayshow.com/sites/default/files/styles/video_1920x1080/public/images/2019-04/david_burtka_-_margarita_-_cropped_stock.jpg?itok=uyazmIgV','2020-03-25 15:50:18','2020-03-25 15:50:18'),(20,'Tequila Sunrise','Fill up the collins glass with ice, pour 4 and half parts orange juice, 2 and half parts tequila into the glass, add 1 part grenadine drop by drop, garnish with cocktail cherry and orange wedge.','https://drivito3.imgix.drizly.com/4d3bc8cd3bcf114b/958e64c1cc60/TequilaSunrise_Header.png?auto=format%2Ccompress&fm=jpeg&h=440&q=25','2020-03-25 15:51:42','2020-03-25 15:51:42'),(21,'Irish Cactus','Fill up the old fashioned glass with ice, Pour 1 part tequila, 2 parts irish cream into the glass, Stir together.','https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=1217&h=811&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2019%2F02%2FPrickly-Pear-Liqueur-2-FT-BLOG0219.jpg','2020-03-25 15:55:06','2020-03-26 15:47:21'),(22,'Turtle Time','Crush 1 tablespoon of sugar, 6 mint leaves, Half a part lime juice, 2 basic leaves with muddler, Add 2 parts tequila to the old fashioned glass, Stir together, Fill up the glass with 4 parts club soda, Add ice to the glass, Garnish with mint leaves and lemon wedge.','https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/alcoholic-lime-margarita-with-tequila-royalty-free-image-957892610-1550855871.jpg','2020-03-25 15:57:11','2020-03-26 15:49:40'),(23,'Pokerface','Fill up the collins glass with ice, pour 4 parts pineapple juice, half part cointreau and 1 and a half part tequila into the glass. Stir together, garnish with cocktail cherry and pineapple wedges.','https://i1.wp.com/liqr.com/wp-content/uploads/2018/08/PokerFace_Kevin-John_Chenoweth-0001.jpg?zoom=2.625&fit=1300%2C731','2020-03-25 15:58:37','2020-03-25 15:58:37'),(24,'Icebreaker','Fill up the shaker with ice cubes, pour 2 parts grapefruit juice, 1 dash grenadine, 1 dash triple sec, 2 parts tequila into the shaker. Shake well, strain into the sour glass.','https://i.pinimg.com/originals/08/54/26/085426fe713f2071cccead4faf3caf8d.jpg','2020-03-25 16:00:22','2020-03-25 16:00:22'),(25,'Manhattan','Fill up the mixer glass with ice cubes, pour 1 dash angostura, 1 part red vermouth and 2 and a half parts whiskey into the mixer glass, stir together, strain into the cocktail glass, garnish with cocktail cherry.','https://assets.punchdrink.com/wp-content/uploads/2013/09/Social-Perfect-Manhattan.jpg','2020-03-25 16:02:39','2020-03-26 15:40:12'),(26,'Red Snapper','Fill up the shaker with ice, pour 2 parts cranberry juice, 1 part amaretto, 1 part whiskey into the shaker. Shake well, strain into the shot glass.','https://dmford.files.wordpress.com/2014/12/wpid21301-bloody-mary-20141219-1102.jpg?w=1216','2020-03-25 16:04:43','2020-03-25 16:04:43'),(27,'New Yorker','Fill up the old fashioned glass with ice, fill up the shaker with ice cubes, pour 1 part lime juice, 1 tablespoon of grenadine, half part sugar syrup, 3 parts whiskey into the shaker. Shake well, strain into the glass.','https://uk.inshaker.com/uploads/cocktail/promo/658/1542205393-New-Yorker-_promo.jpg','2020-03-25 16:06:29','2020-03-25 16:06:29'),(28,'Irish Gold','Fill up the collins glass with ice, pour 1 splash orange juice, half part peach schnapps, 2 parts whiskey into the glass. Fill up the glass with 2 parts ginger ale, stir together and garnish with lemon wedge.','https://www.comptoir-irlandais.com/img/cms/blog/2019/05-Mai/Cocktails%20Whisky/Irish-Gold.jpg','2020-03-25 16:08:30','2020-03-25 16:08:30'),(29,'Godfather','Fill up the old fashioned glass with ice, pour 2 parts amaretto, 2 parts whiskey into the glass. Stir together.','https://assets.punchdrink.com/wp-content/uploads/2017/10/Article-Modern-Godfather-Scotch-Cocktail-Recipe-Nomad-Bar-NYC.jpg','2020-03-25 16:09:38','2020-03-25 16:09:38'),(30,'Old Fashioned','Add sugar to the old fashioned glass, pour 1 splash club soda, 1 dash angostura into the glass. Stir together, fill up the glass with ice cubes, add 2 parts whiskey to the glass. Garnish with cocktail cherry and orange wedge.','https://assets.punchdrink.com/wp-content/uploads/2015/03/Article-Black-Apple-Old-Fashioned-Jager-Cocktail-Recipe-1000x617.jpg','2020-03-25 16:11:17','2020-03-25 16:11:17'),(31,'Kir Royale','Pour half part blackcurrant liquor into the champagne glass, fill up the glass with 4 and half parts champagne.','https://thecookful.com/wp-content/uploads/2019/04/kir-royale-1392-x-780.jpg','2020-03-25 16:12:37','2020-03-25 16:12:37'),(32,'Black Velvet','Pour 2 parts stout beer into the glass, fill up the glass with 2 parts champagne.','https://assets.punchdrink.com/wp-content/uploads/2013/10/Black-Velvet-cocktail.jpg','2020-03-25 16:13:23','2020-03-25 16:15:57'),(33,'Midknight Millionaire','Pour 4 parts champagne, 1 part vodka into the champagne glass, Stir together and garnish with raspberry.','https://i.insider.com/5c2e45e60df1762931085eb0?width=1100&format=jpeg&auto=webp','2020-03-25 16:14:18','2020-03-26 15:44:05'),(34,'French 75','Fill up the shaker with ice cubes, pour 1 part lemon juice, half part sugar syrup, 1 part gin into the shaker. Shake well, strain into champagne glass. Fill up the glass with champange.','https://253qv1sx4ey389p9wtpp9sj0-wpengine.netdna-ssl.com/wp-content/uploads/2019/11/Cocktail_of_the_Month_Clink_Pink_Rose_75_Credit_Meg_Baggott_1920x1280.jpg','2020-03-25 16:17:42','2020-03-25 16:18:46'),(35,'Mimosa','Pour 4 parts orange juice into the champagne glass, add 4 parts champagne to the glass. Stir together, garnish with orange wedge.','https://mouthsofmums.com.au/wp-content/uploads/2019/11/04/fruity-mimosa-recipe.jpg','2020-03-25 16:19:52','2020-03-25 16:19:52'),(36,'Diamond Fizz','Pour 1 part lemon juice, 1 dash sugar syrup and 1 part gin into the champagne glass. Fill up the glass with 4 parts champagne.','https://i.pinimg.com/originals/d0/ba/64/d0ba643bbbcb31465471f96884d01e17.jpg','2020-03-25 16:20:56','2020-03-25 16:20:56');
/*!40000 ALTER TABLE `cocktails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ingredient` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'rum',NULL,NULL),(2,'vodka',NULL,NULL),(3,'gin',NULL,NULL),(4,'tequila',NULL,NULL),(5,'whiskey',NULL,NULL),(6,'prosecco',NULL,NULL),(7,'white rum',NULL,NULL),(8,'sugar syrup',NULL,NULL),(9,'lime juice',NULL,NULL),(10,'club soda',NULL,NULL),(11,'mint leaves',NULL,NULL),(12,'crushed ice',NULL,NULL),(13,'lemon juice',NULL,NULL),(14,'over proof rum',NULL,NULL),(15,'dark rum',NULL,NULL),(16,'grenadine',NULL,NULL),(17,'orange juice',NULL,NULL),(18,'ice cubes',NULL,NULL),(19,'angostura bitters',NULL,NULL),(20,'gold rum',NULL,NULL),(21,'pineapple juice',NULL,NULL),(22,'cola',NULL,NULL),(23,'coconut liquor',NULL,NULL),(24,'milk',NULL,NULL),(25,'Galliano',NULL,NULL),(26,'cointreau',NULL,NULL),(27,'cranberry juice',NULL,NULL),(28,'dry vermouth',NULL,NULL),(29,'olive juice',NULL,NULL),(30,'coffee liquor',NULL,NULL),(31,'coffee',NULL,NULL),(32,'worcester sauce',NULL,NULL),(33,'tomato juice',NULL,NULL),(34,'salt',NULL,NULL),(35,'pepper',NULL,NULL),(36,'tabasco sauce',NULL,NULL),(37,'campari',NULL,NULL),(38,'sweet vermouth',NULL,NULL),(39,'cherry liquor',NULL,NULL),(40,'apricot brandy',NULL,NULL),(41,'irish cream',NULL,NULL),(42,'sugar',NULL,NULL),(43,'basil',NULL,NULL),(44,'triple sec',NULL,NULL),(45,'grapefruit juice',NULL,NULL),(46,'red vermouth',NULL,NULL),(47,'amaretto',NULL,NULL),(48,'ginger ale',NULL,NULL),(49,'peach schnapps',NULL,NULL),(50,'blackcurrant liquor',NULL,NULL),(51,'stout beer',NULL,NULL);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2020_03_23_155018_create_cocktails_table',1),(4,'2020_03_24_095035_create_ingredients_table',1),(5,'2020_03_24_114553_cocktail_ingredients',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2020-03-27 11:05:51
