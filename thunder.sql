-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 25 2019 г., 16:41
-- Версия сервера: 5.6.43
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `thunder`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `discount`) VALUES
(2, 31, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `hashes`
--

CREATE TABLE `hashes` (
  `id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `product_id`, `image`) VALUES
(81, 31, '8e17e7c9cc563eaaedbe57ae81f5f5f2.jpg'),
(82, 31, '0820ab43ff2891107d46bd3eb105c783.jpg'),
(83, 31, 'c5c0182767f3fd4bce71c36f7c3fc2e0.jpg'),
(84, 31, 'ec8d451d2e0f82b6b5601431798cc300.jpg'),
(85, 31, 'ab6d1b287416f0a4dc0df761257ec355.jpg'),
(86, 31, '2dab96b5ca6595e26e52edb1a23e6bdb.jpg'),
(87, 32, 'db0a98f53a7d0b5aea3c64c6c3978ad2.jpg'),
(88, 32, '68165e7c52952439f13811d181bbb5e1.jpg'),
(89, 32, '3c37ba25327e7f201e0add17cb5d1705.jpg'),
(90, 32, '2268a956b42a3b4bf444e4521252ddcc.jpg'),
(91, 32, '2bf914bac62b29f65df3f266ff6e79b9.jpg'),
(92, 33, '0ee78a4b033ee0db99f4b90355a56767.jpg'),
(93, 33, '04f622cd980f61362339b7633e2e3972.jpg'),
(94, 33, 'e4a28d1a3f38cd94ce191d8915ab4f7d.jpg'),
(95, 33, '4990d34a74bd778cfe2059f711405980.jpg'),
(96, 33, '15b88638c4b5a56902db127dd5f7ef3e.jpg'),
(97, 33, '6593431804fb4dc94f60b21c6b895495.jpg'),
(98, 34, '9a1db147319db3c1606b42f67c8d3cc4.jpg'),
(99, 34, '21f834ce17857c80509430c01f63a674.jpg'),
(100, 34, '71ba608c7cccb3ba495257b75624b535.jpg'),
(101, 34, 'fefb7fd81e6d1f4e2c0500fe1572a4c3.jpg'),
(102, 34, 'c2ffcf6681026f04ae702be0c707688a.jpg'),
(103, 34, '5bee400bc4ecb3f6bfdd85506fdd54bb.jpg'),
(104, 34, 'd93b383f1b01e06017e35dc62913c517.jpg'),
(105, 35, '1d64c599bb6dd4579b8ca78b6a2ba408.jpg'),
(106, 35, '79397a4da18baf1f16f62b10095b4199.jpg'),
(107, 35, '59ad1600b4867ad37449246d1e693c4d.jpg'),
(108, 35, 'fb5e3efa1eea4c792083e65be176e250.jpg'),
(109, 35, 'f83302752dc13f7a76f62abe6b8d4c60.jpg'),
(110, 35, '72df39380b257db68f7d0a582db6adad.jpg'),
(111, 36, '08fde70167bcbf1102c9b6b897911afc.jpg'),
(112, 36, 'c3ab126430241a7bb162dfa427299a80.jpg'),
(113, 36, '6384d4166bba045db45ed85819561bfc.jpg'),
(114, 36, '896fcdcc9c857ef81eb7d6ea4fedddd1.jpg'),
(115, 36, '4cbabce68a81491885ddb318c1221832.jpg'),
(116, 37, '96d4f5f618cc6a9ec30c387326aac0eb.jpg'),
(117, 37, '0054277da8a6e950a016fa93fa9f064f.jpg'),
(118, 37, 'e527241906509becac6b9fe57843038f.jpg'),
(119, 37, '576ead2622de9456f4fc8993f248aa54.jpg'),
(120, 37, '45e779f457bbaa26d478b752938af00f.jpg'),
(121, 38, '687952c5f6882b3e562543436d88792a.jpg'),
(122, 38, 'cba80767ec8fc257b810d6fc4981f7bf.jpg'),
(123, 38, '3585a639f7c618a6d42a0c6b358e1b75.jpg'),
(124, 38, 'b8bc5f1b9b6f07e2aa0aea727a20f297.jpg'),
(125, 39, '076734985be4837ad92cc8f42fefa14f.jpg'),
(126, 39, '9ffd3bf0ab9b2da70b03c307d3ec550e.jpg'),
(127, 39, '2d9fb3f72d6ab75ee1fe4636aedd39e7.jpg'),
(128, 39, '918792fba2e30b81b3c887a5f640743a.jpg'),
(129, 39, '7dce7ac5aa38d0590dff7d964d401a80.jpg'),
(130, 40, '247a4068986254efe311b3668e81663b.jpg'),
(131, 40, '75f61639b631dfa6ac62bbb563641295.jpg'),
(132, 40, 'cfadd43dc0babfffa184622386cdcffe.jpg'),
(133, 40, '0cf99daaffc06c70ba666c7bf88bbaf7.jpg'),
(134, 41, '92ecbac4e57f03be6c24561a887c4e32.jpg'),
(135, 41, 'dcef7ec8442424e52986bd0fb16beeb3.jpg'),
(136, 41, '26f28ef2618d87a2a30e0808892b6398.jpg'),
(137, 41, '885bf4d7721c9f815ed177c61ce9463b.jpg'),
(138, 41, 'df2b78153cb3bdddd5d90252eb2f7b3b.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `image` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `price`, `image`, `description`, `stock`, `slug`) VALUES
(31, 'Рюкзак для мамы Thunder &quot;Mommy military&quot;', 'TH-7340M', 1699, '8e17e7c9cc563eaaedbe57ae81f5f5f2.jpg', 'Крестная фея для мамы на прогулках и в путешествиях! Этот рюкзак объединяет в себе функции сумки для детского питания, городского аксессуара и рюкзака на коляску. \r\n\r\nОрганизация вещей\r\n\r\nРюкзак для родителей позволяет компактно разместить личные вещи мамы и ребёнка. При этом, ключи не потеряются на дне, бутылочка с питанием не перевернется, а влажные салфетки будут всегда под рукой в специальном отделении. \r\n\r\nТоповая ткань и фурнитура\r\n\r\nВодонепроницаемая ткань и обработка краев  — основа качественного рюкзака-органайзера для мам. Отделения и карманы имеют подкладку в несколько слоев. Лямки рюкзака для матерей бережно распределят нагрузку на позвоночник. Фурнитура выполнена из качественных материалов, прослужит очень долго.\r\n\r\nКонструкция рюкзака для мамочек\r\n\r\nМамы отмечают, что спина и плечи от ношения рюкзака для малышей устают гораздо меньше, чем от сумки. Если же вам нельзя поднимать вес, то закрепите стильный рюкзак на коляску. \r\n\r\nОсновное отделение подойдёт для объемных предметов, подгузников или покупок.\r\n\r\nНезависимые термо-карманы сохранят бутылочки с детским питанием. Их можно установить вертикально в индивидуальных отсеках рюкзака для младенцев. Карман не пропускает влагу и сохраняет температуру несколько часов. \r\n\r\nПередний и задний карманы рюкзака помогут уложить детские игрушки, книжки, а также личные вещи мамы. Например, деньги, смартфон или планшет. \r\n\r\nБоковой карман для салфеток спасет от грязных рук и пятен на одежде.\r\n\r\nМногофункциональность и стильный дизайн делают рюкзак не только полезной, но и приятной покупкой. С ним вы сможете идти на прогулку и радоваться вместе с малышом, а не переживать, все ли взяли. \r\n\r\nНаслаждайтесь ценными моментами детства. Об остальном позаботится рюкзак!', 1, 'thunder-th-7340m'),
(32, 'Рюкзак для мамы Thunder &quot;Mommy&quot;', 'TH-7340G', 1699, '68165e7c52952439f13811d181bbb5e1.jpg', 'Крестная фея для мамы на прогулках и в путешествиях! Этот рюкзак объединяет в себе функции сумки для детского питания, городского аксессуара и рюкзака на коляску. \r\n\r\nОрганизация вещей\r\n\r\nРюкзак для родителей позволяет компактно разместить личные вещи мамы и ребёнка. При этом, ключи не потеряются на дне, бутылочка с питанием не перевернется, а влажные салфетки будут всегда под рукой в специальном отделении. \r\n\r\nТоповая ткань и фурнитура\r\n\r\nВодонепроницаемая ткань и обработка краев  — основа качественного рюкзака-органайзера для мам. Отделения и карманы имеют подкладку в несколько слоев. Лямки рюкзака для матерей бережно распределят нагрузку на позвоночник. Фурнитура выполнена из качественных материалов, прослужит очень долго. \r\n\r\nКонструкция рюкзака для мамочек\r\n\r\nМамы отмечают, что спина и плечи от ношения рюкзака для малышей устают гораздо меньше, чем от сумки. Если же вам нельзя поднимать вес, то закрепите стильный рюкзак на коляску. \r\n\r\nОсновное отделение подойдёт для объемных предметов, подгузников или покупок. \r\n\r\nНезависимые термо-карманы сохранят бутылочки с детским питанием. Их можно установить вертикально в индивидуальных отсеках рюкзака для младенцев. Карман не пропускает влагу и сохраняет температуру несколько часов. \r\n\r\nПередний и задний карманы рюкзака помогут уложить детские игрушки, книжки, а также личные вещи мамы. Например, деньги, смартфон или планшет. \r\n\r\nБоковой карман для салфеток спасет от грязных рук и пятен на одежде.\r\n\r\nМногофункциональность и стильный дизайн делают рюкзак не только полезной, но и приятной покупкой. С ним вы сможете идти на прогулку и радоваться вместе с малышом, а не переживать, все ли взяли. \r\n\r\nНаслаждайтесь ценными моментами детства. Об остальном позаботится рюкзак!', 1, 'thunder-th-7340g'),
(33, 'Рюкзак для путешествий Thunder &quot;Traveler&quot;', 'TH-6071G', 1999, '0ee78a4b033ee0db99f4b90355a56767.jpg', 'Рюкзак для путешествий\r\n\r\nРазмеры изделия позволяют использовать рюкзак для ручной клади в самолет. Он соответствует допустимым габаритам, комфортно распределяет вес, как большой туристический рюкзак, выглядит стильно и компактно. Эксклюзивный дизайн в нескольких цветах позволит вам выбрать рюкзак для мужчин и женщин.\r\n\r\nКомфортное ношение\r\n\r\nЛямки выдерживают вес до 10 кг — предел для ручной клади. Те, кто уже пользуются рюкзаками для путешествий отметили, что стали меньше уставать благодаря мягким широким шлейкам. При необходимости защелкните фиксатор спереди, чтобы шлейки комфортно сидели на плечах.\r\n\r\nБоковая ручка превращает аксессуар в сумку-рюкзак для путешествий. В этом случае лямки складываются и плотно прилегают к корпусу.\r\n\r\nЗащита от непогоды\r\n\r\nТкань рюкзака для путешествий прошла 4-этапную обработку, не пропускает воду, устойчива к загрязнениям. А также не выгорает и не мнется.\r\n\r\nКонструкция рюкзака для ручной клади\r\n\r\n Внутренний объем можно расширить или уменьшить с помощью наружных ремней. Большой рюкзак не понадобится — сувениры точно влезут!\r\n\r\nПросторное основное отделение. Вещи в рюкзак можно упаковать, как в чемодан. Одежда в этой модели не мнется даже на дне, благодаря х-образным стяжкам. Хороший выбор рюкзака для бизнес поездок!\r\n\r\nВнутренние карманы-сеточки позволят организовать мелочи.\r\n\r\n Отделение для ноутбука. Гаджет будет путешествовать в непромокаемом внутреннем кармане с клапаном. В отличие от лёгкого городского аналога, в дорожном рюкзаке с отделением для ноута технику защищает сантиметр уплотнителя со всех сторон.\r\n\r\nПередний карман рюкзака для поездок подойдёт для мелкой электроники, билетов и документов.\r\n\r\nПотайное отделение спрячет деньги и ценности — важная функция рюкзака для поездок за границу.\r\n\r\nМаленький карман позволит держать под рукой ключи или зарядное устройство.\r\n\r\nНадёжная фурнитура\r\n\r\nПряжки металлические, а двойные молнии спрятаны и укреплены.\r\n\r\nЭтот рюкзак идеальный как ручная кладь. Особенно если вы планируете путешествие лоукостером без багажа. Купив наш рюкзак, вы получаете небывалую свободу движений даже на краю света.', 1, 'thunder-th-6071g'),
(34, 'Рюкзак для путешествий Thunder &quot;Trip&quot;', 'TH-09099', 1999, '71ba608c7cccb3ba495257b75624b535.jpg', 'Рюкзак для путешествий. \r\n\r\nРазмеры изделия позволяют использовать рюкзак для ручной клади в самолет. Он соответствует допустимым габаритам, комфортно распределяет вес, как большой туристический рюкзак, выглядит стильно и компактно. Эксклюзивный дизайн в нескольких цветах позволит вам выбрать рюкзак для мужчин и женщин.\r\n\r\nКомфортное ношение\r\n\r\nЛямки выдерживают вес до 10 кг — предел для ручной клади. Те, кто уже пользуются рюкзаками для путешествий отметили, что стали меньше уставать благодаря мягким широким шлейкам. При необходимости защелкните фиксатор спереди, чтобы шлейки комфортно сидели на плечах.\r\n\r\n Боковая ручка превращает аксессуар в сумку-рюкзак для путешествий. В этом случае лямки складываются и плотно прилегают к корпусу.\r\n\r\nЗащита от непогоды\r\n\r\nТкань рюкзака для путешествий прошла 4-этапную обработку, не пропускает воду, устойчива к загрязнениям. А также не выгорает и не мнется.\r\n\r\nКонструкция рюкзака для ручной клади\r\n\r\n Внутренний объем можно расширить или уменьшить с помощью наружных ремней. Большой рюкзак не понадобится — сувениры точно влезут!\r\n\r\nПросторное основное отделение. Вещи в рюкзак можно упаковать, как в чемодан. Одежда в этой модели не мнется даже на дне.\r\n\r\nХороший выбор рюкзака для бизнес поездок!\r\n\r\nВнутренние карманы-сеточки позволят организовать мелочи.\r\n\r\n Отделение для ноутбука. Гаджет будет путешествовать в непромокаемом внутреннем кармане с клапаном. В отличие от лёгкого городского аналога, в дорожном рюкзаке с отделением для ноута технику защищает сантиметр уплотнителя со всех сторон.\r\n\r\nПередний карман рюкзака для поездок подойдёт для мелкой электроники, билетов и документов.\r\nНадёжная фурнитура\r\n\r\nПряжки металлические, а двойные молнии спрятаны и укреплены.\r\n\r\n Этот рюкзак идеальный как ручная кладь. Особенно если вы планируете путешествие лоукостером без багажа. Купив наш рюкзак, вы получаете небывалую свободу движений даже на краю света.', 1, 'thunder-th-09099'),
(35, 'Рюкзак городской Thunder &quot;City&quot;', 'TH-7212', 1399, '79397a4da18baf1f16f62b10095b4199.jpg', 'Перед вами универсальный рюкзак Thunder &quot;City&quot; на все случаи жизни! Городской рюкзак позволяет защитить технику от повреждений, а также упорядочить личные вещи. Это делает его незаменимым на бизнес встречах, в путешествиях и учёбе. \r\n\r\nКачественный рюкзак: долговечные материалы \r\nГородской рюкзак под ноутбук эффективно защищает технику от влаги и пыли. Для этого используется водонепроницаемая ткань и многослойная подкладка. Поэтому он не поблекнет и не порвется при активном использовании. \r\nКарман с ноутбуком отделяет слой уплотнителя в 1 см. \r\nФурнитура рюкзака для города алюминиевая. Застежки имеют скрытую систему, что даёт дополнительную защиту от непогоды. \r\nХотите купить городской рюкзак в школу? С таким запасом качества и модным дизайном, он переживет ещё и университет! \r\n\r\nКонструкция городского рюкзака\r\nДанная модель рюкзака под ноутбук спроектирована так, чтобы у вас был лёгкий доступ к вещам. Вы сможете быстро найти бумажник или смартфон на ходу или в транспорте.  \r\nОсновное пространство. Здесь поместятся ежедневники, книги, сменная одежда и даже ланч. В такой рюкзак можно упаковать ваш мобильный офис и даже отправиться путешествовать на уикенд! \r\n\r\nОтделение для ноутбука 15.6&quot;. Стильный современный аксессуар предусматривает место для гаджетов. В городском рюкзаке с отделением для ноутбука цифровые друзья в безопасности. \r\n\r\nФронтальный карман поможет не помять документы, журналы или распечатки для учебы. \r\nВнутренний термо-карман сохранит бутылку или термос в вертикальном положении, а также будет поддерживать необходимую температуру. \r\nПотайное отделение спрячет от посторонних ценные вещи. \r\n\r\nГородской рюкзак большую часть дня находится на плечах. Для комфортного ношения спинка сделана из слоя дышащей пены толщиной 2 см, а мягкие регулируемые лямки и фиксаторы помогают поддерживать ровную осанку.   \r\nКупить городской рюкзак — это стать супергероем. Теперь за вашей спиной хранилище идей и возможностей!', 1, 'thunder-th-7212'),
(36, 'Рюкзак городской Thunder &quot;Sport-roll&quot;', 'TH-09023', 1599, '08fde70167bcbf1102c9b6b897911afc.jpg', 'Перед вами универсальный рюкзак Thunder &quot;Sport-roll&quot; на все случаи жизни! Городской рюкзак позволяет защитить технику от повреждений, а также упорядочить личные вещи. Это делает его незаменимым на бизнес встречах, в путешествиях и учёбе. \r\n\r\nКачественный рюкзак: долговечные материалы \r\nГородской рюкзак под ноутбук эффективно защищает технику от влаги и пыли. Для этого используется водонепроницаемая ткань и многослойная подкладка. Поэтому он не поблекнет и не порвется при активном использовании. \r\nКарман с ноутбуком отделяет слой уплотнителя в 1 см. \r\n\r\nФурнитура рюкзака для города алюминиевая. Застежки имеют скрытую систему, что даёт дополнительную защиту от непогоды. \r\nХотите купить городской рюкзак в школу? С таким запасом качества и модным дизайном, он переживет ещё и университет! \r\n\r\nКонструкция городского рюкзака\r\nДанная модель рюкзака под ноутбук спроектирована так, чтобы у вас был лёгкий доступ к вещам. Вы сможете быстро найти бумажник или смартфон на ходу или в транспорте.  \r\n\r\nОсновное пространство. Здесь поместятся ежедневники, книги, сменная одежда и даже ланч. В такой рюкзак можно упаковать ваш мобильный офис и даже отправиться путешествовать на уикенд! \r\n\r\nОтделение для ноутбука 15.6&quot;. Стильный современный аксессуар предусматривает место для гаджетов. В городском рюкзаке с отделением для ноутбука цифровые друзья в безопасности.\r\n\r\nЗабота о здоровье\r\nГородской рюкзак большую часть дня находится на плечах. Для комфортного ношения спинка сделана из слоя дышащей пены толщиной 2 см, а мягкие регулируемые лямки и фиксаторы помогают поддерживать ровную осанку. \r\n\r\nКупить городской рюкзак — это стать супергероем. Теперь за вашей спиной хранилище идей и возможностей!', 1, 'thunder-th-09023'),
(37, 'Рюкзак городской Thunder &quot;City-roll&quot;', 'TH-5196', 1399, '0054277da8a6e950a016fa93fa9f064f.jpg', 'Перед вами универсальный рюкзак Thunder &quot;City-roll&quot; на все случаи жизни! Городской рюкзак позволяет защитить технику от повреждений, а также упорядочить личные вещи. Это делает его незаменимым на бизнес встречах, в путешествиях и учёбе. \r\n\r\nКачественный рюкзак: долговечные материалы \r\nГородской рюкзак под ноутбук эффективно защищает технику от влаги и пыли. Для этого используется водонепроницаемая ткань и многослойная подкладка. Поэтому он не поблекнет и не порвется при активном использовании. \r\nКарман с ноутбуком отделяет слой уплотнителя в 1 см.\r\n\r\nФурнитура рюкзака для города алюминиевая. Застежки имеют скрытую систему, что даёт дополнительную защиту от непогоды. \r\nХотите купить городской рюкзак в школу? С таким запасом качества и модным дизайном, он переживет ещё и университет! \r\n\r\n\r\nКонструкция городского рюкзака\r\nДанная модель рюкзака под ноутбук спроектирована так, чтобы у вас был лёгкий доступ к вещам. Вы сможете быстро найти бумажник или смартфон на ходу или в транспорте.  \r\n\r\nОсновное пространство. Здесь поместятся ежедневники, книги, сменная одежда и даже ланч. В такой рюкзак можно упаковать ваш мобильный офис и даже отправиться путешествовать на уикенд!\r\n\r\nОтделение для ноутбука 15.6&quot;. Стильный современный аксессуар предусматривает место для гаджетов. В городском рюкзаке с отделением для ноутбука цифровые друзья в безопасности. \r\n\r\nФронтальный карман поможет не помять документы, журналы или распечатки для учебы. \r\n\r\nЗабота о здоровье\r\nГородской рюкзак большую часть дня находится на плечах. Для комфортного ношения спинка сделана из слоя дышащей пены толщиной 2 см, а мягкие регулируемые лямки и фиксаторы помогают поддерживать ровную осанку.   \r\nКупить городской рюкзак — это стать супергероем. Теперь за вашей спиной хранилище идей и возможностей!', 1, 'thunder-th-5196'),
(38, 'Рюкзак городской Thunder &quot;Drop&quot;', 'TH-5404', 1599, '687952c5f6882b3e562543436d88792a.jpg', 'Перед вами универсальный рюкзак Thunder &quot;Drop&quot; на все случаи жизни! Городской рюкзак позволяет защитить технику от повреждений, а также упорядочить личные вещи. Это делает его незаменимым на бизнес встречах, в путешествиях и учёбе. \r\n\r\nКачественный рюкзак: долговечные материалы \r\nГородской рюкзак под ноутбук эффективно защищает технику от влаги и пыли. Для этого используется водонепроницаемая ткань и многослойная подкладка. Поэтому он не поблекнет и не порвется при активном использовании. \r\nКарман с ноутбуком отделяет слой уплотнителя в 1 см. \r\n\r\nФурнитура рюкзака для города алюминиевая. Застежки имеют скрытую систему, что даёт дополнительную защиту от непогоды. \r\nХотите купить городской рюкзак в школу? С таким запасом качества и модным дизайном, он переживет ещё и университет! \r\n\r\nКонструкция городского рюкзака\r\nДанная модель рюкзака под ноутбук спроектирована так, чтобы у вас был лёгкий доступ к вещам. Вы сможете быстро найти бумажник или смартфон на ходу или в транспорте.  \r\nОсновное пространство. Здесь поместятся ежедневники, книги, сменная одежда и даже ланч. В такой рюкзак можно упаковать ваш мобильный офис и даже отправиться путешествовать на уикенд! \r\n\r\nОтделение для ноутбука 15.6&quot;. Стильный современный аксессуар предусматривает место для гаджетов. В городском рюкзаке с отделением для ноутбука цифровые друзья в безопасности. \r\n\r\nФронтальный карман поможет не помять документы, журналы или распечатки для учебы. \r\nПотайное отделение спрячет от посторонних ценные вещи. \r\n\r\nЗабота о здоровье\r\n\r\nГородской рюкзак большую часть дня находится на плечах. Для комфортного ношения спинка сделана из слоя дышащей пены толщиной 2 см, а мягкие регулируемые лямки и фиксаторы помогают поддерживать ровную осанку.   \r\nКупить городской рюкзак — это стать супергероем. Теперь за вашей спиной хранилище идей и возможностей!', 1, 'thunder-th-5404'),
(39, 'Рюкзак городской Thunder &quot;Mini&quot;', 'TH-1430', 1199, '076734985be4837ad92cc8f42fefa14f.jpg', 'Перед вами универсальный рюкзак Thunder &quot;Mini&quot; на все случаи жизни! Городской рюкзак позволяет защитить технику от повреждений, а также упорядочить личные вещи. Это делает его незаменимым на бизнес встречах, в путешествиях и учёбе. \r\n\r\nКачественный рюкзак: долговечные материалы \r\nГородской рюкзак под ноутбук эффективно защищает технику от влаги и пыли. Для этого используется водонепроницаемая ткань и многослойная подкладка. Поэтому он не поблекнет и не порвется при активном использовании. \r\nКарман с ноутбуком отделяет слой уплотнителя в 1 см. \r\n\r\nФурнитура рюкзака для города алюминиевая. Застежки имеют скрытую систему, что даёт дополнительную защиту от непогоды. \r\nХотите купить городской рюкзак в школу? С таким запасом качества и модным дизайном, он переживет ещё и университет! \r\n\r\nКонструкция городского рюкзака\r\nКаждая модель рюкзака под ноутбук спроектирована так, чтобы у вас был лёгкий доступ к вещам. Вы сможете быстро найти бумажник или смартфон на ходу или в транспорте.  \r\n\r\nСупер вместительность, благодаря возможности &quot;РАСШИРЕНИЯ&quot;!\r\n\r\nОсновное пространство. Здесь поместятся ежедневники, книги, сменная одежда и даже ланч. В такой рюкзак можно упаковать ваш мобильный офис и даже отправиться путешествовать на уикенд! \r\n\r\nОтделение для ноутбука 14&quot;. Стильный современный аксессуар предусматривает место для гаджетов. В городском рюкзаке с отделением для ноутбука цифровые друзья в безопасности. \r\nФронтальный карман поможет не помять документы, журналы или распечатки для учебы. \r\n\r\nЗабота о здоровье\r\nГородской рюкзак большую часть дня находится на плечах. Для комфортного ношения спинка сделана из слоя дышащей пены толщиной 2 см, а мягкие регулируемые лямки и фиксаторы помогают поддерживать ровную осанку.  \r\nКупить городской рюкзак — это стать супергероем. Теперь за вашей спиной хранилище идей и возможностей!', 1, 'thunder-th-1430'),
(40, 'Рюкзак городской Thunder &quot;Square&quot;', 'TH-08662b', 1299, '247a4068986254efe311b3668e81663b.jpg', 'Перед вами универсальный рюкзак Thunder &quot;Square&quot; на все случаи жизни! Городской рюкзак позволяет защитить технику от повреждений, а также упорядочить личные вещи. Это делает его незаменимым на бизнес встречах, в путешествиях и учёбе. \r\n\r\nКачественный рюкзак: долговечные материалы \r\nГородской рюкзак под ноутбук эффективно защищает технику от влаги и пыли. Для этого используется водонепроницаемая ткань и многослойная подкладка. Поэтому он не поблекнет и не порвется при активном использовании. \r\nКарман с ноутбуком отделяет слой уплотнителя в 1 см. \r\n\r\nФурнитура рюкзака для города алюминиевая. Молния прочная и легко перемещается. \r\nХотите купить городской рюкзак в школу? С таким запасом качества и модным дизайном, он переживет ещё и университет! \r\n\r\nКонструкция городского рюкзака\r\nДанная модель рюкзака под ноутбук спроектирована так, чтобы у вас был лёгкий доступ к вещам. Вы сможете быстро найти бумажник или смартфон на ходу или в транспорте.  \r\n\r\nОсновное пространство. Здесь поместятся ежедневники, книги, сменная одежда и даже ланч. В такой рюкзак можно упаковать ваш мобильный офис и даже отправиться путешествовать на уикенд! \r\n\r\nОтделение для ноутбука 15.6&quot;. Стильный современный аксессуар предусматривает место для гаджетов. В городском рюкзаке с отделением для ноутбука цифровые друзья в безопасности. \r\n\r\nФронтальный карман поможет не помять документы, журналы или распечатки для учебы. \r\n\r\nЗабота о здоровье\r\nГородской рюкзак большую часть дня находится на плечах. Для комфортного ношения спинка сделана из слоя дышащей материала, это способствует циркуляции воздуха, а мягкие регулируемые лямки и фиксаторы помогают поддерживать ровную осанку.  \r\n\r\nКачественный наполнитель легко примет форму вашей спины и правильно распределит вес рюкзака.\r\nКупить городской рюкзак — это стать супергероем. Теперь за вашей спиной хранилище идей и возможностей!', 1, 'thunder-th-08662b'),
(41, 'Рюкзак городской Thunder &quot;Regular&quot;', 'TH-5024', 1299, '92ecbac4e57f03be6c24561a887c4e32.jpg', 'Перед вами универсальный рюкзак Thunder &quot;Regular&quot; на все случаи жизни! Городской рюкзак позволяет защитить технику от повреждений, а также упорядочить личные вещи. Это делает его незаменимым на бизнес встречах, в путешествиях и учёбе. \r\n\r\nКачественный рюкзак: долговечные материалы \r\nГородской рюкзак под ноутбук эффективно защищает технику от влаги и пыли. Для этого используется водонепроницаемая ткань и многослойная подкладка. Поэтому он не поблекнет и не порвется при активном использовании. \r\nКарман с ноутбуком отделяет слой уплотнителя в 1 см. \r\n\r\nФурнитура рюкзака для города алюминиевая. Застежки имеют скрытую систему, что даёт дополнительную защиту от непогоды. \r\nХотите купить городской рюкзак в школу? С таким запасом качества и модным дизайном, он переживет ещё и университет! \r\n\r\nКонструкция городского рюкзака\r\nДанная модель рюкзака под ноутбук спроектирована так, чтобы у вас был лёгкий доступ к вещам. Вы сможете быстро найти бумажник или смартфон на ходу или в транспорте.  \r\nОсновное пространство. Здесь поместятся ежедневники, книги, сменная одежда и даже ланч. В такой рюкзак можно упаковать ваш мобильный офис и даже отправиться путешествовать на уикенд! \r\nОтделение для ноутбука 15.6&quot;. Стильный современный аксессуар предусматривает место для гаджетов. В городском рюкзаке с отделением для ноутбука цифровые друзья в безопасности. \r\n\r\nФронтальный карман поможет не помять документы, журналы или распечатки для учебы. \r\nЗабота о здоровье\r\nГородской рюкзак большую часть дня находится на плечах. Для комфортного ношения спинка сделана из слоя дышащей пены толщиной 2 см, а мягкие регулируемые лямки и фиксаторы помогают поддерживать ровную осанку.   \r\n\r\nКупить городской рюкзак — это стать супергероем. Теперь за вашей спиной хранилище идей и возможностей!', 1, 'thunder-th-5024');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hashes`
--
ALTER TABLE `hashes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `hashes`
--
ALTER TABLE `hashes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
