CREATE DATABASE  IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `middle_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'rose','rose@stage.com','Rosalie','','Kuff'),(2,'David','david@stage.com','David','','Lee'),(3,'joan','joan@stage.com','Joan','Ivanov','Solomon'),(4,'michele','michele@stage.com','Michele','','Shapiro'),(5,'sarina','sarina@stage.com','Sarina','Petrova','Kimel'),(6,'sara','sara@stage.com','Sara','Brodsky',''),(7,'Jake','jake@stage.com','Jake','Petrov','Scott'),(8,'Jeremy','jeremy@stage.com','Jeremy','','Varon'),(9,'Alison','alison@stage.com','Alison','','Cai'),(10,'Bibi','Bibi@stage.com','Bibi','Petrov','Pike'),(11,'Barbara','barbara@stage.com','Barbara','','Fanaoff');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag_map`
--

DROP TABLE IF EXISTS `post_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag_map` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `post_tag_map_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `post_tag_map_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag_map`
--

LOCK TABLES `post_tag_map` WRITE;
/*!40000 ALTER TABLE `post_tag_map` DISABLE KEYS */;
INSERT INTO `post_tag_map` VALUES (34,1),(19,2),(23,2),(27,2),(13,3),(26,3),(27,3),(28,4),(29,4),(30,4),(31,4),(32,4),(37,4),(33,9),(24,10),(25,10),(35,10),(18,11),(9,12),(4,13),(5,13),(6,13),(7,13),(8,13),(35,13),(20,14),(14,15),(1,17),(2,17),(3,17),(36,17),(12,18),(15,18),(27,18),(16,19),(21,19),(22,19),(10,20),(11,20),(17,20),(34,21);
/*!40000 ALTER TABLE `post_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `content` longtext,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Як отримати ідеальний прес до літа. ','Зігнати зайвий жир одними тренуваннями не вдасться. Раз є зайві кілограми, живіт як висів, так і висітиме — навіть якщо ви будете мучити себе багатогодинними вправами. Спорт — це лише 30% успіху, решта — правильне харчування.','2017-05-09 12:05:00',1),(2,'Мини-тренировка на все группы мышц','','2017-04-01 08:27:00',2),(3,'','1. Приседания с широкой постановкой стоп (бедра, ягодицы)/15 повторений. \n2. Наклоны вперед стоя на одной ноге, разводя руки в стороны (бедра, ягодицы)/15 повторений на каждую ногу. \n3. Подъем таза на одной ноге лежа (ягодицы)/15 повторений на каждую ногу. \n4. Отведение локтей назад, лежа на животе (спина)/20 повторений. \n5. Отжимания с широкой постановкой ладоней (грудь)/15 повторений. \n6. Отжимания с узкой постановкой ладоней с коленей (трицепс)/15 повторений. \n7. Жим гантелей стоя (плечи)/20 повторений. \n8. Группировка на пресс/25 повторений. \n9. Обхватывание прямой ноги лежа на спине, держа вторую ногу над полом (пресс)/20 повторений поочередно. \n10. Подъем руки и ноги в планке (общеукрепляющее)/20 повторений поочередно.','2017-04-17 07:16:47',3),(4,'Вкуснейшая низкокалорийная творожная запеканка с яблоком ','','2017-04-13 16:31:45',4),(5,'','Ингредиенты: \nОбезжиренный творог - 250 г \nЯйца - 2 шт \nКефир 1% - 3 ст. л \nЯблоко - 300 г \n\nПриготовление: \nДля начала необходимо творог пропустить через мясорубку или взбить в блендере. Добавить в него кефир и перемешать. Яйца тоже нужно взбить и вылить в творожную массу. Яблоки нужно очистить от кожуры и сердцевины, порезать на мелкие кусочки. Добавить их к творогу. Готовую массу нужно выложить в форму, предварительно застеленную пергаментом и запекать в духовке около 30 минут. ','2017-05-02 14:13:50',5),(6,'Сырники','Ингредиенты:\n\nТворог — 500 г\nЯичный желток — 3 шт.\nСахарный песок — 100 г или по вкусу\nВанильный сахар — 10 г\nСоль — 1 щепотка\nПшеничная мука — 150 г \nРастительное масло — для жарки\nСметана — для подачи\n\nПриготовление:\n\n1. Творог протрите через сито. Добавьте желтки, сахар, ванильный сахар, соль и перемешайте. Добавьте 100 г муки и перемешайте.\n2. Сформируйте сырники. Обваляйте в муке и стряхните излишки.\n3. Обжарьте на раскаленном масле до румяной корочки с обеих сторон.\n\nПриятного аппетита!','2017-05-01 12:05:00',4),(7,'Салат с креветками и авокадо','Ингредиенты:\n\nСоевый соус — 60 мл\nОливковое масло — 20 мл\nЛимонный сок — 20 мл\nМирина — 20 мл\nВасаби — 6 г\nАвокадо — 280 г\nТигровые креветки — 280 г\n\nПриготовление:\n\n1. Для приготовления соуса вливаем в миску соевый соус, оливковое масло, мирин (сладкий рисовый сироп), васаби и лимонный сок. Перемешиваем с помощью венчика. \n2. Включаем плиту и греем воду до закипания. Воду солить не нужно, потому что соус дополнит вкус. В это время подготовим авокадо: разрезаем по центру на две симметричные половинки, вращательным движением раскрываем авокадо и убираем косточку. Ложкой отделяем мякоть от кожуры. Важно выбрать спелое, мягкое авокадо. Нарезаем кубиками. Как только вода закипела, добавляем тигровые креветки и варим около трех минут. Следим, чтобы вода не сплыла. После готовности креветки нужно охладить. Перекладываем их в миску с водой с несколькими кубиками льда. Креветки разрезаем пополам или на три части, отделив хвостики.\n3. Смешиваем авокадо и креветки в миске, поливаем соусом и аккуратно перемешиваем. На одну порцию достаточно двух столовых ложек соуса. Сервировать блюдо предпочтительнее в глубокой тарелке. \n\nПриятного аппетита!','2017-04-11 06:54:42',6),(8,'Салат с курицей и авокадо','Ингредиенты:\n\nОрехи очищенные (обжаренные) — 1 стак.\nКуриное филе — 1–2 шт.\nАвокадо — 2 шт.\nЛимон — 1 шт.\nСоль — по вкусу\nПерец — по вкусу\nВиноград зеленый — 1 стак.\n\nПриготовление:\n\n1. Авокадо очищаем, удалив косточки.\n2. Перекладываем мякоть авокадо в глубокую тарелку. Выдавливаем чуть больше половины сока лимона и перемешиваем.\n3. Куриное филе нарезаем кубиками и обжариваем на сковороде-гриль до готовности. Добавляем курицу в салат, также кладем нарезанный виноград без косточек и обжаренные на сковороде орехи.\n4. Все перемешиваем, солим и перчим по вкусу. Можно добавить немного оливкового масла, если салат покажется вам сухим.\n\nПриятного аппетита!','2017-04-12 10:05:42',7),(9,'Play outside! Public art on Greenway to engage in some fun','Soon, visitors to Boston’s Financial District will find an incongruous Quaker meetinghouse sinking into — or maybe rising from? — the earth amid the glass towers, or they might wander into a topsy-turvy garden where people appear to grow or shrink like visitors to Alice’s Wonderland.\n\nIt’s not magic, nor is it an unintended consequence of marijuana legalization. These disorienting additions to the downtown landscape are part of the latest effort by the Rose Fitzgerald Kennedy Greenway Conservancy to use public art to create public engagement.\n\n\n“Rather than trying to have art that is of the do-not-touch variety, a number of these pieces are really interactive,” said Jesse Brackenbury, executive director of the conservancy, which maintains and programs art and events for the Greenway.\n\nThe conservancy’s goal in selecting art, Brackenbury explained, “is to ensure that it’s not just quantity, it’s quality. ... That’s our focus for a lot of things now, is that it’s not simply more, but more diverse, more engaging, more distinctive.”\n\nGet Fast Forward in your inbox:\nForget yesterdays news. Get what you need today in this early-morning email.\n\nFor the first time, that effort includes a unifying theme for multiple works displayed across the 1.5-mile-long strip of parkland.\n\nEach of the large-scale pieces in the Playful Perspectives series is intended to disorient the viewer, to make them question their eyes, to disrupt their routines and make the mundane seem fresh and strange.\n\nMost importantly, Brackenbury said, the pieces should be fun.\n\n\n“I think play is kind of having a moment,” he said. “It feels very topical, it feels very relevant.”\n\nThe works, which will be installed over the next three months, beginning this week, include Mark Reigelman’s “The Meeting House,” a scaled-down version of the Pembroke Friends Meetinghouse in Pembroke.\n\nThe structure, about 14 feet tall, will be erected between Pearl and Oliver streets at about a 20-degree angle, with space underneath where people can pretend they are the Wicked Witch of the East, crushed by Dorothy Gale’s Kansas farmhouse.\n\nThe “Wizard of Oz” allusion is unintentional, Reigelman said, and became apparent to him only in a rendering he created late in the design process.\n\n“I got pretty excited, because it’s just such a wonderful American image,” he said.\n\nAnother work, Meredith James’s “Far from this setting in which we now find ourselves,” will be installed in the North End parks. It uses forced perspective to create the optical illusion that people are getting shorter or taller as they move across the field of vision.\n\n“The kids really like that effect of being able to be taller than their parents,” James said.\n\nReigelman and James’s pieces will join two existing works that play with perceptions.\n\nMehdi Ghadyanloo’s surreal trompe l’oeil mural on the air-intake structure at Dewey Square Park, “Spaces of Hope,” depicts men and women holding small red balloons as they ascend a spiral staircase toward a giant balloon.\n\nChris Templeman’s “Make and Take,” placed in the Greenway’s Chinatown park, includes a 3-D printer that churns out palm-size roosters in honor of the Chinese zodiac year, which visitors can keep as souvenirs.\n\nAdditional works will include an installation by Aakash Nihalani, who paints fluorescent-colored three-dimensional objects on two-dimensional surfaces, creating bewildering illusions.\n\nThe new art is going in despite the conservancy’s uncertain financial future.\n\nThe state is poised to eliminate $2 million in annual support, about 40 percent of the organization’s budget. So far, efforts to make up that shortfall through increased support from abutting property owners, who benefit from proximity to the popular park, haven’t reached a solution.\n\nBrackenbury said state funding supports the park’s horticulture and maintenance, while private contributions pay for the art program.\n\nPark visitors will likely ask, “How’d they do that?” before they consider, “How’d they pay for it?”\n\nJames’s garden is painted within an “Ames Room,” with a tilted floor and an angled back wall. From the right perspective, it appears to be an ordinary rectangular room in which people grow and shrink as they move across it.\n\n“I like that it’s a really simple way of being able to create a portal to a magical space,” James said. “There’s a way to think about yourself in the world differently.”\n\nReigelman’s structure is hand-crafted like a real Quaker meetinghouse, but in more than 20 parts that will be pieced together on-site to create the tilted building. He hopes his “Meeting House” will be a place people come together and experience bonds of community.\n\n“If there’s any goal,” he said, “it’s to force us to question our daily activity, to question what we look at and what we don’t, who we engage with and who we don’t.”\n\nJeremy C. Fox can be reached at jeremy.fox@globe.com. Follow him on Twitter @jeremycfox.','2017-05-01 12:05:00',8),(10,'Earth’s Most Stunning Natural Fractal Patterns','','2017-04-11 07:54:42',9),(11,'','FROM SEA SHELLS and spiral galaxies to the structure of human lungs, the patterns of chaos are all around us.\n\nFractals are patterns formed from chaotic equations and contain self-similar patterns of complexity increasing with magnification. If you divide a fractal pattern into parts you get a nearly identical reduced-size copy of the whole.\n\nThe mathematical beauty of fractals is that infinite complexity is formed with relatively simple equations. By iterating or repeating fractal-generating equations many times, random outputs create beautiful patterns that are unique, yet recognizable.\n\nWe have pulled together some of the most stunning natural examples we could find of fractals on our planet.','2017-04-11 06:46:34',10),(12,'Inside of a tulip','','2017-04-26 13:16:37',9),(13,'A baby #hedghog waiting for a hug ','https://pbs.twimg.com/media/C_BbwjTXYAAwboD.jpg:large','2017-04-28 03:12:34',7),(14,'3 Magical Photos of Animals In Winter','http://static.boredpanda.com/blog/wp-content/uploads/2014/01/animals-in-winter-5.jpg http://static.boredpanda.com/blog/wp-content/uploads/2014/01/animals-in-winter-2.jpg http://static.boredpanda.com/blog/wp-content/uploads/2014/01/animals-in-winter-4.jpg','2017-04-29 19:58:42',7),(15,'5 Amazing Places to Visit in Japan','Japan is a country full of different activities and traditions to engage in. Enriching us with its culture of wearing kimonos, visiting shrines and temples, participating in tea ceremonies, and constant advancements in technology; there are countless number of fun and exciting things to do in Japan. That being said, there are five places in particular that anyone journeying to the beautiful country MUST see during there visit.\n\n1. Tokyo 2. Kyoto 3. Nara 4. Ishigaki Island 5. Shibuya ','2017-03-11 07:54:42',7),(16,'These 9 Places Transform Into Something Amazing At Night.','','2017-02-11 07:54:42',8),(17,'','During the summer vacation season, most people are leaving their homes with the intention of seeing cool things during the day. The summer sun is a hard thing to resist. Sometimes though, natures greatest sights and sounds are at night. When the sun goes down, different flora, fauna and other forms of life appear. The world changes, and sometimes its for the better. These nine amazing destinations, for one reason or another, transform into something epic at night.\n\n1.) Glowing Mushrooms, New England. 2.) Waitomo Cave, New Zealand 3.) Blue Grotto, Capri, Italy  3)Smoky Mountains, Tennessee. 5.) Aurora Borealis in Canada.6.) Toyama Bay, Japan. 7.) Kilauea, Hawaii. 8.) Salar De Uyuni, Bolivia.  9.) Vaadhoo, Maldives','2017-01-11 07:54:42',10),(18,'Rare Photos Of The Cast Of \"Friends\" Will Make You Wish It Was 1994 All Over Again','https://img.buzzfeed.com/buzzfeed-static/static/2014-05/enhanced/webdr03/21/18/original-11481-1400711345-12.jpg?downsize=715:*&output-format=auto&output-quality=auto. https://img.buzzfeed.com/buzzfeed-static/static/2014-05/enhanced/webdr04/21/18/original-10969-1400711344-12.jpg?downsize=715:*&output-format=auto&output-quality=auto','2016-12-11 08:54:42',9),(19,'DIY Painted Feathers','I’ve always loved the idea of painting fake feathers, and with festival season underway it seemed like the perfect time to do it.  I originally thought of these purely as decorations but then it occurred to me that they’d be a great finishing touch for a festival outfit. This is a great activity to do outside on a warm sunny day, and once you start it’s slightly addicting!','2017-01-28 17:32:18',4),(20,'Rainy Day Crafts for Kids','Walking On Pillows Balloon Boppers Paper Crafts','2017-02-03 05:51:34',5),(21,'Quotes To Remember When You Feel Lost In Life','At some point or another, we all feel a little bit lost in life. With so many decisions to make, so many unknowns making us question our existence, and so many responsibilities to juggle, our vision can sometimes become clouded. As humans, we want to know all the answers, but unfortunately, life doesn’t really work that way. We simply have to do the best we can with what we’ve been given, and just try our hardest each day to live life according to our own principles and beliefs. Any time you feel like you’ve lost your sense of direction, refer to the following quotes below to get back on track.','2017-02-02 07:54:42',6),(22,'Simplify And Live Free.','These days, we are surrounded by advertisements that promote the collection of stuff we don’t need. All this stuff is just dragging us down.','2017-02-09 04:54:42',3),(23,'Happiness is ..','https://theorganisedhousewife.com.au/wp-content/uploads/2014/07/10.jpg','2017-03-19 07:54:42',3),(24,'Crazy (But Effective) Hot Weather Beauty Hacks Every Girl Needs to Know','Summer is all about having fun outside with your friends, enjoying the gorgeous weather whenever you get the chance. While it’s our favorite season for obvious reasons, there are some aspects of the hot weather that can really put a damper on our beauty routines. So, if you’d rather “glow” than well, downright sweat and become a frizzy mess, we have some summer beauty hacks you’ll want to learn – and put to memory – ASAP. They may seem a bit crazy, but they’re downright effective tricks when the temps border on 100','2017-03-20 16:35:16',2),(25,'MUST HAVES FOR SUMMER 2016','PATCHWORK BAG, DENIM SKIRT, FLATFORMS , TRIBAL DRES , ROUND SUNGLASSES , BODYSUIT','2017-05-01 17:35:16',1),(26,'What A Cutie!','http://welovecatsandkittens.com/wp-content/uploads/2017/04/what-a-cutie-copy-2.jpg','2017-04-07 03:35:16',1),(27,'Super Funny And Cute Animal Pictures','http://myzone.kola3h3xzfzrglqef.netdna-cdn.com/wp-content/uploads/2016/12/Super-Funny-And-Cute-Animal-Pictures-008.jpg','2017-04-13 22:38:16',4),(28,'How to strike a pose like a fashion blogger','https://s-media-cache-ak0.pinimg.com/564x/de/b2/e0/deb2e0bcda6e370c08fefc07fef5af71.jpg','2017-05-01 18:06:27',5),(29,'Pre-wedding Photo Theme: Travel Around the World','For couples that have the passion to travel, see the world and meet people from different cultures, this is for you. I hope you can get inspired by Murad Osmann’s series of photos.\n\nOne meaningful way to have your pre-wedding photo taken is to simply recreate what you have been doing in your photos since you and fiance have been dating! If you’ve been doing a star jump in every city you’ve visited, why not continue that and do one for your pre-wedding photo shoot too! Besides being a great idea for pre-wedding, this is going to be a sweet series of photos 20 years down the road!','2017-04-08 05:05:10',6),(30,'Marchesa Resort 2015 Trunkshow - Moda Operandi','https://s-media-cache-ak0.pinimg.com/564x/c5/30/c7/c530c73fa729d5b6ab02480c62bcce93.jpg','2017-04-21 16:34:06',7),(31,'Art Deco Sapphire and Diamond Dangle Earrings','https://s-media-cache-ak0.pinimg.com/564x/57/02/3e/57023e069a20e0fd8a4f88432304dc46.jpg','2017-03-23 20:46:38',7),(32,'Amigurumi Fox Bookmark crochet pattern by Supergurumi','https://s-media-cache-ak0.pinimg.com/564x/38/34/74/3834745ba92fda6463d682f7eed3f1ad.jpg','2017-03-13 02:27:19',8),(33,'Skinny Summer Snacks Your Afternoon Slump Needs','Were all about eating between meals, which every nutritionist and study assures us is a good thing. The key is come 4 p.m., choosing something thats both healthy and satisfying. These fresh ideas will do just that on the hottest days.','2017-02-08 10:35:16',9),(34,'How to Find Labor Day Staycation Ideas','A staycation is the perfect vacation away from the norm this summer holiday season. Labor Day, the official last holiday of the season offers travelers a chance to take part in one last weekend of fun before school gets back in session and the weather starts to cool down. But if you haven’t had the time to plan a vacation or are on a budget, consider a staycation instead. Staying local with few dollars and some creativity you can have as much fun as if you were miles away. Here are some fun staycation ideas that will get you and your family excited this Labor Day weekend.','2017-05-01 14:31:21',10),(35,'Berry Watermelon Fruit Salad','Інгредієнти\nVegan, Gluten free, Paleo\nОвочі та фрукти\n1/2 pint Blackberries\n1 pint Blueberries\n1 pint Cherries, pitted and halved\n1 pint Raspberries\n1 pint Strawberries\n4 cups Watermelon','2017-04-03 20:54:26',3),(36,'Fitness Motivational Posters - Inspiring Fitness Quotes To Give You Motivation To Workout','http://fitgirlsdiary.com/wp-content/uploads/2017/04/I-is-the-only-difference-30-Fitness-Motivational-Posters-Inspiring-Fitness-Quotes-To-Give-You-Motivation-To-Workout-768x931.jpg','2017-04-05 08:40:46',6),(37,'Glossary of Design Terminology ~ Choosing a Pattern','Ok… I love color, but I love PATTERN too (as you know from our kitchen wall, china cabinet, and our baby changing table! And I always see different patterns being used in design, but when you go to search for other examples of that pattern, there’s no way to find it without knowing some design ‘lingo’. And even after tons of searching on the internet, there’s not a single source that offers examples and names of all the patterns out there! So I set out to make one for myself. It may not be an exhaustive list of all the patterns known to mankind, but it’s some more common popular ones… many I didn’t know the name to until now! I’m loving Quatrefoil and Ikat designs lately, which I’ve heard of before, but wouldn’t necessarily be able to think of when it comes right down to it.','2017-05-01 11:46:12',6),(38,'Post without tag','Some content','2017-05-01 11:46:12',6);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'#love'),(2,'#happy'),(3,'#cute'),(4,'#fashion'),(5,'#followme'),(6,'#me'),(7,'#follow'),(8,'#like4like'),(9,'#selfie'),(10,'#summer'),(11,'#friends'),(12,'#art'),(13,'#food'),(14,'#fun'),(15,'#winter'),(16,'#family'),(17,'#fitness'),(18,'#amazing'),(19,'#life'),(20,'#nature'),(21,'#smile');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-16 23:57:30
