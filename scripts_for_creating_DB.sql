CREATE TABLE authors (
	id int not null auto_increment primary key,
    username VARCHAR(128),
    email VARCHAR(128),
    first_name VARCHAR(128),
    middle_name VARCHAR(128),
    last_name VARCHAR(128)
);

CREATE TABLE posts (
	id int not null auto_increment primary key,
    title longtext,
    content longtext, 
    post_date TIMESTAMP,
    author_id int not null,
    FOREIGN KEY (author_id) REFERENCES authors(id)    
);

CREATE TABLE tags (
	id int not null auto_increment primary key,
    tag_name varchar(200)
);

CREATE TABLE post_tag_map (
	post_id int not null,
    tag_id int not null,
	PRIMARY KEY (post_id, tag_id),
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id)
);

INSERT INTO authors (username, email, first_name, middle_name, last_name) VALUES 
	('rose', 'rose@stage.com', 'Rosalie', '', 'Kuff'),
    ('David', 'david@stage.com', 'David', '', 'Lee'),
    ('joan', 'joan@stage.com',  'Joan', 'Ivanov', 'Solomon'),
    ('michele', 'michele@stage.com',  'Michele', '', 'Shapiro'),
    ('sarina', 'sarina@stage.com',  'Sarina', 'Petrova', 'Kimel'),
    ('sara', 'sara@stage.com',  'Sara', 'Brodsky', ''),
    ('Jake', 'jake@stage.com',  'Jake', 'Petrov', 'Scott'),
    ('Jeremy', 'jeremy@stage.com',  'Jeremy', '', 'Varon'),
    ('Alison', 'alison@stage.com',  'Alison', '', 'Cai'),
    ('Bibi', 'Bibi@stage.com',  'Bibi', 'Petrov', 'Pike'),
    ('Barbara', 'barbara@stage.com',  'Barbara', '', 'Fanaoff')
    ;


INSERT INTO tags (tag_name) VALUE
	('#love'),
    ('#happy'),
    ('#cute'),
    ('#fashion'),
    ('#followme'),
    ('#me'),
    ('#follow'),
    ('#like4like'),
    ('#selfie'),
    ('#summer'),
    ('#friends'),
    ('#art'),
    ('#food'),
    ('#fun'),
    ('#winter'),
    ('#family'),
    ('#fitness'),
    ('#amazing'),
    ('#life'),
    ('#nature'),
    ('#smile')
;


INSERT INTO posts (title, post_date, author_id, content) VALUE
	('Як отримати ідеальний прес до літа. ', '2017-05-01 15:05:00', '1', 'Зігнати зайвий жир одними тренуваннями не вдасться. Раз є зайві кілограми, живіт як висів, так і висітиме — навіть якщо ви будете мучити себе багатогодинними вправами. Спорт — це лише 30% успіху, решта — правильне харчування.'),
    ('Мини-тренировка на все группы мышц', '2017-04-01 11:27:00', '2', ''),
    ('', '2017-04-17 10:16:47', '3', '1. Приседания с широкой постановкой стоп (бедра, ягодицы)/15 повторений. 
2. Наклоны вперед стоя на одной ноге, разводя руки в стороны (бедра, ягодицы)/15 повторений на каждую ногу. 
3. Подъем таза на одной ноге лежа (ягодицы)/15 повторений на каждую ногу. 
4. Отведение локтей назад, лежа на животе (спина)/20 повторений. 
5. Отжимания с широкой постановкой ладоней (грудь)/15 повторений. 
6. Отжимания с узкой постановкой ладоней с коленей (трицепс)/15 повторений. 
7. Жим гантелей стоя (плечи)/20 повторений. 
8. Группировка на пресс/25 повторений. 
9. Обхватывание прямой ноги лежа на спине, держа вторую ногу над полом (пресс)/20 повторений поочередно. 
10. Подъем руки и ноги в планке (общеукрепляющее)/20 повторений поочередно.'),
    ('Вкуснейшая низкокалорийная творожная запеканка с яблоком ', '2017-04-13 19:31:45', '4', ''),
    ('', '2017-05-02 17:13:50', '5', 'Ингредиенты: 
Обезжиренный творог - 250 г 
Яйца - 2 шт 
Кефир 1% - 3 ст. л 
Яблоко - 300 г 

Приготовление: 
Для начала необходимо творог пропустить через мясорубку или взбить в блендере. Добавить в него кефир и перемешать. Яйца тоже нужно взбить и вылить в творожную массу. Яблоки нужно очистить от кожуры и сердцевины, порезать на мелкие кусочки. Добавить их к творогу. Готовую массу нужно выложить в форму, предварительно застеленную пергаментом и запекать в духовке около 30 минут. '),
    ('Сырники', '2017-05-01 15:05:00', '4', 'Ингредиенты:

Творог — 500 г
Яичный желток — 3 шт.
Сахарный песок — 100 г или по вкусу
Ванильный сахар — 10 г
Соль — 1 щепотка
Пшеничная мука — 150 г 
Растительное масло — для жарки
Сметана — для подачи

Приготовление:

1. Творог протрите через сито. Добавьте желтки, сахар, ванильный сахар, соль и перемешайте. Добавьте 100 г муки и перемешайте.
2. Сформируйте сырники. Обваляйте в муке и стряхните излишки.
3. Обжарьте на раскаленном масле до румяной корочки с обеих сторон.

Приятного аппетита!'),
    ('Салат с креветками и авокадо', '2017-04-11 09:54:42', '6', 'Ингредиенты:

Соевый соус — 60 мл
Оливковое масло — 20 мл
Лимонный сок — 20 мл
Мирина — 20 мл
Васаби — 6 г
Авокадо — 280 г
Тигровые креветки — 280 г

Приготовление:

1. Для приготовления соуса вливаем в миску соевый соус, оливковое масло, мирин (сладкий рисовый сироп), васаби и лимонный сок. Перемешиваем с помощью венчика. 
2. Включаем плиту и греем воду до закипания. Воду солить не нужно, потому что соус дополнит вкус. В это время подготовим авокадо: разрезаем по центру на две симметричные половинки, вращательным движением раскрываем авокадо и убираем косточку. Ложкой отделяем мякоть от кожуры. Важно выбрать спелое, мягкое авокадо. Нарезаем кубиками. Как только вода закипела, добавляем тигровые креветки и варим около трех минут. Следим, чтобы вода не сплыла. После готовности креветки нужно охладить. Перекладываем их в миску с водой с несколькими кубиками льда. Креветки разрезаем пополам или на три части, отделив хвостики.
3. Смешиваем авокадо и креветки в миске, поливаем соусом и аккуратно перемешиваем. На одну порцию достаточно двух столовых ложек соуса. Сервировать блюдо предпочтительнее в глубокой тарелке. 

Приятного аппетита!'),
    ('Салат с курицей и авокадо', '2017-04-12 13:05:42', '7', 'Ингредиенты:

Орехи очищенные (обжаренные) — 1 стак.
Куриное филе — 1–2 шт.
Авокадо — 2 шт.
Лимон — 1 шт.
Соль — по вкусу
Перец — по вкусу
Виноград зеленый — 1 стак.

Приготовление:

1. Авокадо очищаем, удалив косточки.
2. Перекладываем мякоть авокадо в глубокую тарелку. Выдавливаем чуть больше половины сока лимона и перемешиваем.
3. Куриное филе нарезаем кубиками и обжариваем на сковороде-гриль до готовности. Добавляем курицу в салат, также кладем нарезанный виноград без косточек и обжаренные на сковороде орехи.
4. Все перемешиваем, солим и перчим по вкусу. Можно добавить немного оливкового масла, если салат покажется вам сухим.

Приятного аппетита!'),
    ('Play outside! Public art on Greenway to engage in some fun', '2017-05-01 15:05:00', '8', 'Soon, visitors to Boston’s Financial District will find an incongruous Quaker meetinghouse sinking into — or maybe rising from? — the earth amid the glass towers, or they might wander into a topsy-turvy garden where people appear to grow or shrink like visitors to Alice’s Wonderland.

It’s not magic, nor is it an unintended consequence of marijuana legalization. These disorienting additions to the downtown landscape are part of the latest effort by the Rose Fitzgerald Kennedy Greenway Conservancy to use public art to create public engagement.


“Rather than trying to have art that is of the do-not-touch variety, a number of these pieces are really interactive,” said Jesse Brackenbury, executive director of the conservancy, which maintains and programs art and events for the Greenway.

The conservancy’s goal in selecting art, Brackenbury explained, “is to ensure that it’s not just quantity, it’s quality. ... That’s our focus for a lot of things now, is that it’s not simply more, but more diverse, more engaging, more distinctive.”

Get Fast Forward in your inbox:
Forget yesterdays news. Get what you need today in this early-morning email.

For the first time, that effort includes a unifying theme for multiple works displayed across the 1.5-mile-long strip of parkland.

Each of the large-scale pieces in the Playful Perspectives series is intended to disorient the viewer, to make them question their eyes, to disrupt their routines and make the mundane seem fresh and strange.

Most importantly, Brackenbury said, the pieces should be fun.


“I think play is kind of having a moment,” he said. “It feels very topical, it feels very relevant.”

The works, which will be installed over the next three months, beginning this week, include Mark Reigelman’s “The Meeting House,” a scaled-down version of the Pembroke Friends Meetinghouse in Pembroke.

The structure, about 14 feet tall, will be erected between Pearl and Oliver streets at about a 20-degree angle, with space underneath where people can pretend they are the Wicked Witch of the East, crushed by Dorothy Gale’s Kansas farmhouse.

The “Wizard of Oz” allusion is unintentional, Reigelman said, and became apparent to him only in a rendering he created late in the design process.

“I got pretty excited, because it’s just such a wonderful American image,” he said.

Another work, Meredith James’s “Far from this setting in which we now find ourselves,” will be installed in the North End parks. It uses forced perspective to create the optical illusion that people are getting shorter or taller as they move across the field of vision.

“The kids really like that effect of being able to be taller than their parents,” James said.

Reigelman and James’s pieces will join two existing works that play with perceptions.

Mehdi Ghadyanloo’s surreal trompe l’oeil mural on the air-intake structure at Dewey Square Park, “Spaces of Hope,” depicts men and women holding small red balloons as they ascend a spiral staircase toward a giant balloon.

Chris Templeman’s “Make and Take,” placed in the Greenway’s Chinatown park, includes a 3-D printer that churns out palm-size roosters in honor of the Chinese zodiac year, which visitors can keep as souvenirs.

Additional works will include an installation by Aakash Nihalani, who paints fluorescent-colored three-dimensional objects on two-dimensional surfaces, creating bewildering illusions.

The new art is going in despite the conservancy’s uncertain financial future.

The state is poised to eliminate $2 million in annual support, about 40 percent of the organization’s budget. So far, efforts to make up that shortfall through increased support from abutting property owners, who benefit from proximity to the popular park, haven’t reached a solution.

Brackenbury said state funding supports the park’s horticulture and maintenance, while private contributions pay for the art program.

Park visitors will likely ask, “How’d they do that?” before they consider, “How’d they pay for it?”

James’s garden is painted within an “Ames Room,” with a tilted floor and an angled back wall. From the right perspective, it appears to be an ordinary rectangular room in which people grow and shrink as they move across it.

“I like that it’s a really simple way of being able to create a portal to a magical space,” James said. “There’s a way to think about yourself in the world differently.”

Reigelman’s structure is hand-crafted like a real Quaker meetinghouse, but in more than 20 parts that will be pieced together on-site to create the tilted building. He hopes his “Meeting House” will be a place people come together and experience bonds of community.

“If there’s any goal,” he said, “it’s to force us to question our daily activity, to question what we look at and what we don’t, who we engage with and who we don’t.”

Jeremy C. Fox can be reached at jeremy.fox@globe.com. Follow him on Twitter @jeremycfox.'),
    ('Earth’s Most Stunning Natural Fractal Patterns', '2017-04-11 10:54:42', '9', ''),
    ('', '2017-04-11 09:46:34', '10', 'FROM SEA SHELLS and spiral galaxies to the structure of human lungs, the patterns of chaos are all around us.

Fractals are patterns formed from chaotic equations and contain self-similar patterns of complexity increasing with magnification. If you divide a fractal pattern into parts you get a nearly identical reduced-size copy of the whole.

The mathematical beauty of fractals is that infinite complexity is formed with relatively simple equations. By iterating or repeating fractal-generating equations many times, random outputs create beautiful patterns that are unique, yet recognizable.

We have pulled together some of the most stunning natural examples we could find of fractals on our planet.'),
    ('Inside of a tulip', '2017-04-26 16:16:37', '9', ''),
    ('A baby #hedghog waiting for a hug ', '2017-04-28 06:12:34', '7', 'https://pbs.twimg.com/media/C_BbwjTXYAAwboD.jpg:large'),
    ('3 Magical Photos of Animals In Winter', '2017-04-29 22:58:42', '7', 'http://static.boredpanda.com/blog/wp-content/uploads/2014/01/animals-in-winter-5.jpg http://static.boredpanda.com/blog/wp-content/uploads/2014/01/animals-in-winter-2.jpg http://static.boredpanda.com/blog/wp-content/uploads/2014/01/animals-in-winter-4.jpg'),
    ('5 Amazing Places to Visit in Japan', '2017-03-11 09:54:42', '7', 'Japan is a country full of different activities and traditions to engage in. Enriching us with its culture of wearing kimonos, visiting shrines and temples, participating in tea ceremonies, and constant advancements in technology; there are countless number of fun and exciting things to do in Japan. That being said, there are five places in particular that anyone journeying to the beautiful country MUST see during there visit.

1. Tokyo 2. Kyoto 3. Nara 4. Ishigaki Island 5. Shibuya '),
    ('These 9 Places Transform Into Something Amazing At Night.', '2017-02-11 09:54:42', '8', ''),
    ('', '2017-01-11 09:54:42', '10', 'During the summer vacation season, most people are leaving their homes with the intention of seeing cool things during the day. The summer sun is a hard thing to resist. Sometimes though, natures greatest sights and sounds are at night. When the sun goes down, different flora, fauna and other forms of life appear. The world changes, and sometimes its for the better. These nine amazing destinations, for one reason or another, transform into something epic at night.

1.) Glowing Mushrooms, New England. 2.) Waitomo Cave, New Zealand 3.) Blue Grotto, Capri, Italy  3)Smoky Mountains, Tennessee. 5.) Aurora Borealis in Canada.6.) Toyama Bay, Japan. 7.) Kilauea, Hawaii. 8.) Salar De Uyuni, Bolivia.  9.) Vaadhoo, Maldives'),
    ('Rare Photos Of The Cast Of "Friends" Will Make You Wish It Was 1994 All Over Again', '2016-12-11 10:54:42', '9', 'https://img.buzzfeed.com/buzzfeed-static/static/2014-05/enhanced/webdr03/21/18/original-11481-1400711345-12.jpg?downsize=715:*&output-format=auto&output-quality=auto. https://img.buzzfeed.com/buzzfeed-static/static/2014-05/enhanced/webdr04/21/18/original-10969-1400711344-12.jpg?downsize=715:*&output-format=auto&output-quality=auto'),
    ('DIY Painted Feathers', '2017-01-28 19:32:18', '4', 'I’ve always loved the idea of painting fake feathers, and with festival season underway it seemed like the perfect time to do it.  I originally thought of these purely as decorations but then it occurred to me that they’d be a great finishing touch for a festival outfit. This is a great activity to do outside on a warm sunny day, and once you start it’s slightly addicting!'),
    ('Rainy Day Crafts for Kids', '2017-02-03 07:51:34', '5', 'Walking On Pillows Balloon Boppers Paper Crafts'),
    ('Quotes To Remember When You Feel Lost In Life', '2017-02-02 09:54:42', '6', 'At some point or another, we all feel a little bit lost in life. With so many decisions to make, so many unknowns making us question our existence, and so many responsibilities to juggle, our vision can sometimes become clouded. As humans, we want to know all the answers, but unfortunately, life doesn’t really work that way. We simply have to do the best we can with what we’ve been given, and just try our hardest each day to live life according to our own principles and beliefs. Any time you feel like you’ve lost your sense of direction, refer to the following quotes below to get back on track.'),
    ('Simplify And Live Free.', '2017-02-09 06:54:42', '3', 'These days, we are surrounded by advertisements that promote the collection of stuff we don’t need. All this stuff is just dragging us down.'),
    ('Happiness is ..', '2017-03-19 09:54:42', '3', 'https://theorganisedhousewife.com.au/wp-content/uploads/2014/07/10.jpg'),
    ('Crazy (But Effective) Hot Weather Beauty Hacks Every Girl Needs to Know', '2017-03-20 18:35:16', '2', 'Summer is all about having fun outside with your friends, enjoying the gorgeous weather whenever you get the chance. While it’s our favorite season for obvious reasons, there are some aspects of the hot weather that can really put a damper on our beauty routines. So, if you’d rather “glow” than well, downright sweat and become a frizzy mess, we have some summer beauty hacks you’ll want to learn – and put to memory – ASAP. They may seem a bit crazy, but they’re downright effective tricks when the temps border on 100'),
    ('MUST HAVES FOR SUMMER 2016', '2017-05-01 20:35:16', '1', 'PATCHWORK BAG, DENIM SKIRT, FLATFORMS , TRIBAL DRES , ROUND SUNGLASSES , BODYSUIT'),
    ('What A Cutie!', '2017-04-07 06:35:16', '1', 'http://welovecatsandkittens.com/wp-content/uploads/2017/04/what-a-cutie-copy-2.jpg'),
    ('Super Funny And Cute Animal Pictures', '2017-04-14 01:38:16', '4', 'http://myzone.kola3h3xzfzrglqef.netdna-cdn.com/wp-content/uploads/2016/12/Super-Funny-And-Cute-Animal-Pictures-008.jpg'),
    ('How to strike a pose like a fashion blogger', '2017-05-01 21:06:27', '5', 'https://s-media-cache-ak0.pinimg.com/564x/de/b2/e0/deb2e0bcda6e370c08fefc07fef5af71.jpg'),
    ('Pre-wedding Photo Theme: Travel Around the World', '2017-04-08 08:05:10', '6', 'For couples that have the passion to travel, see the world and meet people from different cultures, this is for you. I hope you can get inspired by Murad Osmann’s series of photos.

One meaningful way to have your pre-wedding photo taken is to simply recreate what you have been doing in your photos since you and fiance have been dating! If you’ve been doing a star jump in every city you’ve visited, why not continue that and do one for your pre-wedding photo shoot too! Besides being a great idea for pre-wedding, this is going to be a sweet series of photos 20 years down the road!'),
    ('Marchesa Resort 2015 Trunkshow - Moda Operandi', '2017-04-21 19:34:06', '7', 'https://s-media-cache-ak0.pinimg.com/564x/c5/30/c7/c530c73fa729d5b6ab02480c62bcce93.jpg'),
    ('Art Deco Sapphire and Diamond Dangle Earrings', '2017-03-23 22:46:38', '7', 'https://s-media-cache-ak0.pinimg.com/564x/57/02/3e/57023e069a20e0fd8a4f88432304dc46.jpg'),
    ('Amigurumi Fox Bookmark crochet pattern by Supergurumi', '2017-03-13 04:27:19', '8', 'https://s-media-cache-ak0.pinimg.com/564x/38/34/74/3834745ba92fda6463d682f7eed3f1ad.jpg'),
    ('Skinny Summer Snacks Your Afternoon Slump Needs', '2017-02-08 12:35:16', '9', 'Were all about eating between meals, which every nutritionist and study assures us is a good thing. The key is come 4 p.m., choosing something thats both healthy and satisfying. These fresh ideas will do just that on the hottest days.'),
    ('How to Find Labor Day Staycation Ideas', '2017-05-01 17:31:21', '10', 'A staycation is the perfect vacation away from the norm this summer holiday season. Labor Day, the official last holiday of the season offers travelers a chance to take part in one last weekend of fun before school gets back in session and the weather starts to cool down. But if you haven’t had the time to plan a vacation or are on a budget, consider a staycation instead. Staying local with few dollars and some creativity you can have as much fun as if you were miles away. Here are some fun staycation ideas that will get you and your family excited this Labor Day weekend.'),
    ('Berry Watermelon Fruit Salad', '2017-04-03 23:54:26', '3', 'Інгредієнти
Vegan, Gluten free, Paleo
Овочі та фрукти
1/2 pint Blackberries
1 pint Blueberries
1 pint Cherries, pitted and halved
1 pint Raspberries
1 pint Strawberries
4 cups Watermelon'),
    ('Fitness Motivational Posters - Inspiring Fitness Quotes To Give You Motivation To Workout', '2017-04-05 11:40:46', '6', 'http://fitgirlsdiary.com/wp-content/uploads/2017/04/I-is-the-only-difference-30-Fitness-Motivational-Posters-Inspiring-Fitness-Quotes-To-Give-You-Motivation-To-Workout-768x931.jpg'),
    ('Glossary of Design Terminology ~ Choosing a Pattern', '2017-05-01 14:46:12', '6', 'Ok… I love color, but I love PATTERN too (as you know from our kitchen wall, china cabinet, and our baby changing table! And I always see different patterns being used in design, but when you go to search for other examples of that pattern, there’s no way to find it without knowing some design ‘lingo’. And even after tons of searching on the internet, there’s not a single source that offers examples and names of all the patterns out there! So I set out to make one for myself. It may not be an exhaustive list of all the patterns known to mankind, but it’s some more common popular ones… many I didn’t know the name to until now! I’m loving Quatrefoil and Ikat designs lately, which I’ve heard of before, but wouldn’t necessarily be able to think of when it comes right down to it.'),
	('Post without tag', '2017-05-01 11:46:12', '6', 'Some content');

INSERT INTO post_tag_map VALUES 
	(1, 17),
	(2, 17),
	(3, 17),
   	(4, 13),
   	(5, 13),
   	(6, 13),
   	(7, 13),
   	(8, 13),
   	(9, 12),
   	(10, 20),
    (11, 20),
    (12, 18),
    (13, 3),
    (14, 15),
    (15, 18),
    (16, 19),
    (17, 20),
    (18, 11),
    (19, 2),
    (20, 14),
    (21, 19),
    (22, 19),
    (23, 2),
    (24, 10),
    (25, 10),
    (26, 3),
    (27, 2),
    (27, 3),
    (27, 18),
    (28, 4),
    (29, 4),
    (30, 4),
    (31, 4),
    (32, 4),
    (33, 9),
    (34, 1),
    (34, 21),
    (35, 13),
    (35, 10),
    (36, 17),
    (37, 4);

