-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Mrz 2019 um 10:05
-- Server-Version: 10.1.28-MariaDB
-- PHP-Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `marktplatzfbs`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(2, 'Noah Mehler', 'nm@emu.com', 'nm', '37654082_1879363252359056_3015426826907418624_n.jpg', 'Deutschland', ' test123', '123123132123', 'Admin'),
(6, 'ku@emu.com', 'ku@emu.com', 'ku', 'image_content_bildausschnitt1_820772249_20140820230217.jpg', 'Deutschland', 'Test', '123132213', 'Marketing'),
(7, 'me@emu.com', 'me@emu.com', 'me', 'Bild-Goodyear-Ausbildungsstart.jpg', 'Deutschland', ' Test', '123123123', 'Facillity Manager');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, ' Herren  ', 'test'),
(2, 'Damen', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(3, 'Kinder', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(4, 'Unisex', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(7, '1', '1@1.de', '1', '1', '1', '1', '1', '13185144_15212455_480.jpg', '127.0.0.1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(13, 7, 1578, 115804153, 1, 'S', '2019-03-20', 'pending');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(6, 206863956, 10, 'Sparkasse', 123123, 321321, '02-09-2019');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(11, 7, 115804153, '22', 1, 'S', 'pending');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(16, 1, 2, '2019-03-20 07:24:04', 'GucciMantel mit abnehmbarem Schal', '13833892_17143368_480.jpg', '13833892_17143369_480.jpg', '13833892_17143370_480.jpg', 2980, 'Jacke', '<p><a class=\"_7fe79a _3f59ca _045340 c2a8b1\" href=\"https://www.farfetch.com/de/shopping/men/gucci/items.aspx\" data-ffref=\"pp_infobrd\" data-tstid=\"cardInfo-title\">Gucci</a></p>\r\n<p data-tstid=\"cardInfo-description\">Mantel mit abnehmbarem Schal</p>\r\n<div>\r\n<p class=\"_87b3a2\" data-tstid=\"fullDescription\">Mantel mit abnehmbarem Schal von Gucci.</p>\r\n<div class=\"_87b3a2\">\r\n<p data-tstid=\"designerStyleId\">Designer Style ID: 557145Z8ABI</p>\r\n<p data-tstid=\"designerColor\">Farbe: 1099 Beige</p>\r\n<p data-tstid=\"madeIn\">Herstellungsland: Italien</p>\r\n</div>\r\n</div>\r\n<p>Zusammensetzung</p>\r\n<dl class=\"_87b3a2\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\">Futter:</dt>\r\n<dd class=\"b4172d\">Viskose 100%</dd>\r\n<dd class=\"b4172d\">Perlmutt 100%</dd>\r\n<dt class=\"_08f981\">Au&szlig;enmaterial:</dt>\r\n<dd class=\"b4172d\">Wolle 100%</dd>\r\n<dd class=\"b4172d\">Leder 100%</dd>\r\n</dl>'),
(17, 5, 1, '2019-03-20 07:26:15', 'Gucci T-Shirt mit \"Gucci Strawberry\"-Print', '13833832_17138015_480.jpg', '13833832_17138022_480.jpg', '13833832_17138029_480.jpg', 350, 'TShirt', '<p><a class=\"_7fe79a _3f59ca _045340 c2a8b1\" href=\"https://www.farfetch.com/de/shopping/men/gucci/items.aspx\" data-ffref=\"pp_infobrd\" data-tstid=\"cardInfo-title\">Gucci</a></p>\r\n<p data-tstid=\"cardInfo-description\">T-Shirt mit \"Gucci Strawberry\"-Print</p>\r\n<div>\r\n<p class=\"_87b3a2\" data-tstid=\"fullDescription\">T-Shirt mit \"Gucci Strawberry\"-Print aus Baumwolle von Gucci.</p>\r\n<div class=\"_87b3a2\">\r\n<p data-tstid=\"designerStyleId\">Designer Style ID: 565806XJA1N</p>\r\n<p data-tstid=\"designerColor\">Farbe: 1082 BLACK</p>\r\n<p data-tstid=\"madeIn\">Herstellungsland: Italien</p>\r\n</div>\r\n</div>\r\n<p>Zusammensetzung</p>\r\n<dl class=\"_87b3a2\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\">Baumwolle 100%</dd>\r\n</dl>'),
(18, 1, 1, '2019-03-20 07:27:32', 'Gucci Jacke im Materialmix', '13833890_17143358_480.jpg', '13833890_17143359_480.jpg', '13833890_17143360_480.jpg', 2500, 'Jacke', '<p><a class=\"_7fe79a _3f59ca _045340 c2a8b1\" href=\"https://www.farfetch.com/de/shopping/men/gucci/items.aspx\" data-ffref=\"pp_infobrd\" data-tstid=\"cardInfo-title\">Gucci</a></p>\r\n<p data-tstid=\"cardInfo-description\">Jacke im Materialmix</p>\r\n<div>\r\n<p class=\"_87b3a2\" data-tstid=\"fullDescription\">Jacke im Materialmix von Gucci.</p>\r\n<div class=\"_87b3a2\">\r\n<p data-tstid=\"designerStyleId\">Designer Style ID: 572666XDAOT</p>\r\n<p data-tstid=\"designerColor\">Farbe: 1082 BLACK</p>\r\n<p data-tstid=\"madeIn\">Herstellungsland: Italien</p>\r\n</div>\r\n</div>\r\n<p>Zusammensetzung</p>\r\n<dl class=\"_87b3a2\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\">Futter:</dt>\r\n<dd class=\"b4172d\">Satin 100%</dd>\r\n<dd class=\"b4172d\">Seide 100%</dd>\r\n<dd class=\"b4172d\">Viskose 100%</dd>\r\n</dl>'),
(19, 1, 1, '2019-03-20 07:28:58', 'BalenciagaParka im Oversized-Design', '13445491_15527619_480.jpg', '13445491_15527621_480.jpg', '13445491_15527623_480.jpg', 2250, 'Jacke', '<p><a class=\"_7fe79a _3f59ca _045340 c2a8b1\" href=\"https://www.farfetch.com/de/shopping/men/balenciaga/items.aspx\" data-ffref=\"pp_infobrd\" data-tstid=\"cardInfo-title\">Balenciaga</a></p>\r\n<p data-tstid=\"cardInfo-description\">Parka im Oversized-Design</p>\r\n<div class=\"_659731\">\r\n<div>\r\n<p class=\"_87b3a2\" data-tstid=\"fullDescription\">Parka im Oversized-Design von Balenciaga. Merkmale: abnehmbare Kapuze, aufgesetzte Tasche an der Brust, zwei Vordertaschen, lange &Auml;rmel, gerippte B&uuml;ndchen, Saum mit Kordelzug, gesteppte Innenseite und mittellanger Schnitt.</p>\r\n<div class=\"_87b3a2\">\r\n<p data-tstid=\"designerStyleId\">Designer Style ID: 560939TAO09</p>\r\n<p data-tstid=\"designerColor\">Farbe: 8563 RED</p>\r\n<p data-tstid=\"madeIn\">Herstellungsland: Italien</p>\r\n</div>\r\n</div>\r\n<p>Zusammensetzung</p>\r\n<dl class=\"_87b3a2\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\">Au&szlig;enmaterial:</dt>\r\n<dd class=\"b4172d\">Polyamid 75%</dd>\r\n<dt class=\"_08f981\">Au&szlig;enmaterial:</dt>\r\n<dd class=\"b4172d\">Polyurethan 25%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\">\r\n<dt class=\"_08f981\">Pflegehinweis:</dt>\r\n<dd class=\"b4172d\">nur Trockenreinigung</dd>\r\n</dl>\r\n</div>'),
(20, 2, 4, '2019-03-20 07:31:01', 'Balenciaga Shopper aus Leder', '13185144_15212455_480.jpg', '13185144_15212458_480.jpg', '13185144_15212461_480.jpg', 1150, 'TÃ¤schchen', '<p><a class=\"_7fe79a _3f59ca _045340 c2a8b1\" href=\"https://www.farfetch.com/de/shopping/men/balenciaga/items.aspx\" data-ffref=\"pp_infobrd\" data-tstid=\"cardInfo-title\">Balenciaga</a></p>\r\n<p data-tstid=\"cardInfo-description\">Shopper aus Leder</p>\r\n<div>\r\n<p class=\"_87b3a2\" data-tstid=\"fullDescription\">Shopper aus Leder aus Leder von Balenciaga (VIP). Merkmale: Logo-Stempel vorne und grafischer Print. Hierbei handelt es sich um einen Unisex-Artikel.</p>\r\n<div class=\"_87b3a2\">\r\n<p data-tstid=\"designerStyleId\">Designer Style ID: 5419060XTEN</p>\r\n<p data-tstid=\"designerColor\">Farbe: 7060 YELLOW</p>\r\n<p data-tstid=\"madeIn\">Herstellungsland: Italien</p>\r\n</div>\r\n</div>\r\n<p>Zusammensetzung</p>\r\n<dl class=\"_87b3a2\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\">Au&szlig;enmaterial:</dt>\r\n<dd class=\"b4172d\">Leder 100%</dd>\r\n</dl>'),
(21, 1, 1, '2019-03-20 07:32:42', 'Palm Angels Trainingsjacke mit Logo', '13678624_16550597_480.jpg', '13678624_16550598_480.jpg', '13678624_16550599_480.jpg', 380, 'Trainingsjacke', '<p><a class=\"_7fe79a _3f59ca _045340 c2a8b1\" href=\"https://www.farfetch.com/de/shopping/men/palm-angels/items.aspx\" data-ffref=\"pp_infobrd\" data-tstid=\"cardInfo-title\">Palm Angels</a></p>\r\n<p data-tstid=\"cardInfo-description\">Trainingsjacke mit Logo</p>\r\n<div class=\"_659731\">\r\n<div>\r\n<p class=\"_87b3a2\" data-tstid=\"fullDescription\">Trainingsjacke mit Logo von Palm Angels. Merkmale: lange &Auml;rmel, dekorativer Streifen an der Seite, Rei&szlig;verschluss an der Vorderseite und seitliche Taschen mit Rei&szlig;verschluss.</p>\r\n<div class=\"_87b3a2\">\r\n<p data-tstid=\"designerStyleId\">Designer Style ID: PMBD001S193840011001</p>\r\n<p data-tstid=\"designerColor\">Farbe: 1001 BLACK WHITE</p>\r\n<p data-tstid=\"madeIn\">Herstellungsland: Italien</p>\r\n</div>\r\n</div>\r\n<p>Zusammensetzung</p>\r\n<dl class=\"_87b3a2\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\">Polyester 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\">\r\n<dt class=\"_08f981\">Pflegehinweis:</dt>\r\n<dd class=\"b4172d\">maschinenwaschbar</dd>\r\n</dl>\r\n</div>'),
(22, 3, 1, '2019-03-20 07:36:13', 'Yeezy Sneaker-Boots mit SchnÃ¼rung', '13546085_16117341_480.jpg', '13546085_16117343_480.jpg', '13546085_16117345_480.jpg', 1578, 'Schuhe', '<p><a class=\"_7fe79a _3f59ca _045340 c2a8b1\" href=\"https://www.farfetch.com/de/shopping/men/yeezy/items.aspx\" data-ffref=\"pp_infobrd\" data-tstid=\"cardInfo-title\">Yeezy</a></p>\r\n<p data-tstid=\"cardInfo-description\">Sneaker-Boots mit Schn&uuml;rung</p>\r\n<div>\r\n<p class=\"_87b3a2\" data-tstid=\"fullDescription\">Sneaker-Boots mit Schn&uuml;rung aus Leder von Yeezy. Merkmale: runde Kappe, Schn&uuml;rung vorne, kn&ouml;chellang und geriffelte Gummisohle.</p>\r\n<div class=\"_87b3a2\">\r\n<p data-tstid=\"designerStyleId\">Designer Style ID: YZ7MF7003</p>\r\n<p data-tstid=\"designerColor\">Farbe: 214 TAUPE</p>\r\n</div>\r\n</div>\r\n<p>Zusammensetzung</p>\r\n<dl class=\"_87b3a2\" data-tstid=\"productComposition\">\r\n<dt class=\"_08f981\">Sohle:</dt>\r\n<dd class=\"b4172d\">Gummi 100%</dd>\r\n<dt class=\"_08f981\">Futter:</dt>\r\n<dd class=\"b4172d\">Nylon 100%</dd>\r\n<dt class=\"_08f981\">Au&szlig;enmaterial:</dt>\r\n<dd class=\"b4172d\">Leder 65%</dd>\r\n<dt class=\"_08f981\">Au&szlig;enmaterial:</dt>\r\n<dd class=\"b4172d\">Polyacryl 35%</dd>\r\n</dl>'),
(23, 6, 1, '2019-03-20 07:44:43', 'Omc Kapuzenpullover mit Logo', '13750736_16933704_480.jpg', '13750736_16933705_480.jpg', '13750736_16933707_1000.jpg', 203, 'Pullover', '<p><a class=\"_7fe79a _3f59ca _045340 c2a8b1\" href=\"https://www.farfetch.com/de/shopping/men/omc/items.aspx\" data-ffref=\"pp_infobrd\" data-tstid=\"cardInfo-title\">Omc</a></p>\r\n<p data-tstid=\"cardInfo-description\">Kapuzenpullover mit Logo</p>\r\n<div class=\"_659731\">\r\n<div>\r\n<p class=\"_87b3a2\" data-tstid=\"fullDescription\">Kapuzenpullover mit Logo aus Baumwollgemisch von OMC. Merkmale: Logo an der Brust, K&auml;ngurutasche und Kapuze mit Kordelzug.</p>\r\n<div class=\"_87b3a2\">\r\n<p data-tstid=\"designerStyleId\">Designer Style ID: H05GOD</p>\r\n<p data-tstid=\"designerColor\">Farbe: BLACK</p>\r\n<p data-tstid=\"madeIn\">Herstellungsland: Italien</p>\r\n</div>\r\n</div>\r\n<p>Zusammensetzung</p>\r\n<dl class=\"_87b3a2\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\">Baumwolle 90%</dd>\r\n<dd class=\"b4172d\">Polyester 10%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\">\r\n<dt class=\"_08f981\">Pflegehinweis:</dt>\r\n<dd class=\"b4172d\">maschinenwaschbar</dd>\r\n</dl>\r\n</div>'),
(24, 6, 1, '2019-03-20 07:47:58', 'Versace Sweatshirt mit Streifen', '13492966_15891735_480.jpg', '13492966_15891739_480.jpg', '13492966_15891743_480.jpg', 725, 'Pullover', '<p><a class=\"_7fe79a _3f59ca _045340 c2a8b1\" href=\"https://www.farfetch.com/de/shopping/men/versace/items.aspx\" data-ffref=\"pp_infobrd\" data-tstid=\"cardInfo-title\">Versace</a></p>\r\n<p data-tstid=\"cardInfo-description\">Sweatshirt mit Streifen</p>\r\n<div class=\"_659731\">\r\n<div>\r\n<p class=\"_87b3a2\" data-tstid=\"fullDescription\">Sweatshirt mit Streifen aus Baumwolle von Versace. Merkmale: gerippter Rundhalsausschnitt, lange &Auml;rmel, gerippte Abschl&uuml;sse und gerader Saum.</p>\r\n<div class=\"_87b3a2\">\r\n<p data-tstid=\"designerStyleId\">Designer Style ID: A77278A228722</p>\r\n<p data-tstid=\"designerColor\">Farbe: A771</p>\r\n<p data-tstid=\"madeIn\">Herstellungsland: Italien</p>\r\n</div>\r\n</div>\r\n<p>Zusammensetzung</p>\r\n<dl class=\"_87b3a2\" data-tstid=\"productComposition\">\r\n<dd class=\"b4172d\">Baumwolle 100%</dd>\r\n</dl>\r\n<dl class=\"_87b3a2\">\r\n<dt class=\"_08f981\">Pflegehinweis:</dt>\r\n<dd class=\"b4172d\">nur Trockenreinigung</dd>\r\n</dl>\r\n</div>');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Jacken', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(2, 'Accessories', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(3, 'Schuhe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(5, 'T-Shirt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(6, 'Pullover', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(11, 'slide-1', 'slide-1.jpg'),
(12, 'slide-2', 'slide-2.jpg'),
(13, 'slide-3', 'slide-3.jpg');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indizes für die Tabelle `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indizes für die Tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indizes für die Tabelle `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indizes für die Tabelle `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indizes für die Tabelle `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indizes für die Tabelle `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indizes für die Tabelle `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indizes für die Tabelle `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
