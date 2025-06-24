-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 09:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icecream_parlor`
--

-- --------------------------------------------------------

--
-- Table structure for table `cones`
--

CREATE TABLE `cones` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cones`
--

INSERT INTO `cones` (`id`, `name`, `description`, `price`, `image`) VALUES
(4, 'Tricone Butterscotch', 'ich butterscotch ice cream in a crispy tricone.', 50.00, 'uploads/C1.png'),
(5, 'Tricone Cookie Crunch Delight', 'Vanilla ice cream with crunchy cookie pieces in a tricone.', 60.00, 'uploads/C2.jpeg'),
(6, 'Tricone Double Chocolate', 'Double chocolate ice cream in a delicious tricone.', 55.00, 'uploads/C3.png'),
(7, 'Tricone Chocolate & Vanilla', 'A perfect blend of chocolate and vanilla in a tricone.', 65.00, 'uploads/C4.png'),
(8, 'Choco Fudge', 'Rich chocolate fudge ice cream in a crispy cone.', 70.00, 'uploads/C5.png'),
(9, 'Nutty Chocolate', 'Chocolate ice cream with crunchy nuts in a cone.', 50.00, 'uploads/C6.png'),
(10, 'Nutty Butterscotch', 'Butterscotch ice cream with nuts in a cone.', 60.00, 'uploads/C7.png'),
(11, 'Bourbon Truffle', 'Bourbon truffle-flavored ice cream in a cone.', 55.00, 'uploads/C8.png'),
(12, 'Cappuccino Truffle', 'Cappuccino and truffle-flavored ice cream in a cone.', 65.00, 'uploads/C9.png'),
(13, 'Choco Vanilla', 'A mix of chocolate and vanilla flavors in a cone.', 70.00, 'uploads/C10.png'),
(14, 'Pista Royal', 'Pistachio-flavored ice cream in a cone.', 50.00, 'uploads/C11.jpeg'),
(15, 'Rajwadi Creme', 'Traditional Rajwadi-flavored ice cream in a cone.', 60.00, 'uploads/C12.png'),
(16, 'Raspberry ', 'Refreshing raspberry-flavored ice cream in a cone.', 55.00, 'uploads/C13.png'),
(17, 'Black Currant', 'Black currant-flavored ice cream in a cone.', 65.00, 'uploads/C14.jpg'),
(18, 'Cotton Candy', 'Sweet cotton candy-flavored ice cream in a cone.', 70.00, 'uploads/C15.png'),
(19, 'Choco Block Cone', 'Chocolate ice cream with chocolate blocks in a cone.', 55.00, 'uploads/C18.jpeg'),
(20, 'Butterscotch Cone', 'Creamy butterscotch ice cream in a cone.', 65.00, 'uploads/C19.png'),
(21, 'Cookie N Cream Oreo Cone', 'Vanilla ice cream with Oreo cookie pieces in a cone.', 50.00, 'uploads/C21.png'),
(22, 'Choco Bar Cone', 'Rich chocolate ice cream in a crispy cone, coated with a layer of chocolate.', 70.00, 'uploads/C25.png'),
(23, 'Vanilla Cone', 'Classic vanilla ice cream in a crunchy cone, perfect for any occasion.', 50.00, 'uploads/C26.png'),
(24, 'Koko Karamel Kore Cone', 'A fusion of chocolate and caramel flavors.', 70.00, 'uploads/C30.png'),
(25, 'Chillz Choco Vanilla Cone', 'A mix of chocolate and vanilla flavors.', 65.00, 'uploads/C34.png'),
(26, 'Chilz Butterscotch Cone', 'A butterscotch-flavored cone.', 70.00, 'uploads/C35.png'),
(27, 'Black Forest Cone', 'Inspired by the classic Black Forest cake.', 50.00, 'uploads/C36.jpg'),
(28, 'Mini Butterscotch Cone', 'A smaller version of the butterscotch cone.', 60.00, 'uploads/C37.png'),
(29, 'Anjeer Special Cone', 'Rich fig-flavored ice cream in a crispy cone.', 65.00, 'uploads/C39.jpg'),
(30, 'Cookies n Cream Cone', 'Vanilla ice cream with crunchy cookie pieces in a cone.', 70.00, 'uploads/C40.png'),
(31, 'Tutty Fruity Cone', 'Fruity ice cream with mixed fruit pieces in a cone.', 50.00, 'uploads/C41.png'),
(32, 'Almond Treat Cone', 'Creamy almond-flavored ice cream in a cone.', 60.00, 'uploads/C42.png'),
(33, 'Bohemian Cone', 'Exotic Bohemian-flavored ice cream in a cone.', 55.00, 'uploads/C43.jpg'),
(34, 'Coffee Biscuit Cone', 'Coffee-flavored ice cream with biscuit pieces in a cone.', 65.00, 'uploads/C44.png'),
(35, 'Rocket Choco Vanilla Cone', 'A fun-shaped cone with choco-vanilla flavors.', 55.00, 'uploads/C38.png'),
(36, 'Disc Cookie Crunch Cone', 'A cone filled with cookie bits.', 55.00, 'uploads/C33.png'),
(37, 'Disc Choconado Cone', 'A chocolate and vanilla combination.', 60.00, 'uploads/C32.png'),
(38, 'Chilz Chocolate Cone', 'A classic chocolate cone.', 50.00, 'uploads/C31.png'),
(39, 'Chocolate Bliss Cone', 'A rich chocolate-flavored cone.', 55.00, 'uploads/C28.png'),
(40, 'Strawberry Cone', 'Sweet strawberry ice cream in a delicious cone, topped with strawberry sauce.', 60.00, 'uploads/C27.png'),
(41, 'Double Belgian Chocolate Cone', 'Double Belgian chocolate ice cream in a cone.', 60.00, 'uploads/C22.png'),
(42, 'Dark Chocolate Cone', 'Rich dark chocolate ice cream in a cone.', 60.00, 'uploads/C17.png'),
(43, 'Choco Brownie Cone', 'Chocolate ice cream with brownie chunks in a cone.', 50.00, 'uploads/C16.jpeg'),
(44, 'Kesar Pista ', 'Saffron and pistachio ice cream in a cone.', 70.00, 'uploads/C20.jpeg'),
(45, 'Swiss Choco Brownie Cone', 'Swiss chocolate ice cream with brownie chunks in a cone.', 55.00, 'uploads/C23.png'),
(46, 'Nutty French Vanilla Cone', 'French vanilla ice cream with nuts in a cone.', 65.00, 'uploads/C24.png'),
(47, 'Choco Coffee Crunch Cone', 'A delightful blend of chocolate and coffee flavors.', 65.00, 'uploads/C29.png');

-- --------------------------------------------------------

--
-- Table structure for table `cups`
--

CREATE TABLE `cups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cups`
--

INSERT INTO `cups` (`id`, `name`, `description`, `price`, `image`) VALUES
(3, 'Vanilla Magic', 'Classic vanilla ice cream in a cup.', 50.00, 'uploads/CU1.jpg'),
(4, 'Chocolate Magic', 'Rich chocolate ice cream in a cup.', 60.00, 'uploads/CU2.jpg'),
(5, 'Strawberry Real Magic', 'Real strawberry ice cream in a cup.', 55.00, 'uploads/CU3.jpg'),
(6, 'Rajbhog', 'Traditional Rajbhog-flavored ice cream in a cup.', 65.00, 'uploads/CU4.jpg'),
(7, 'Kesar Pista ', 'Saffron and pistachio ice cream in a cup.', 70.00, 'uploads/CU5.jpg'),
(8, ' Fruit \'n\' Nut Fantasy', 'Ice cream with mixed fruits and nuts in a cup.', 50.00, 'uploads/CU6.jpg'),
(9, 'Cookies N Cream Gold', 'Vanilla ice cream with crunchy cookie pieces in a cup.', 60.00, 'uploads/CU7.jpg'),
(10, 'Mango Cup', 'Refreshing mango ice cream made with real mango pulp, served in a cup.', 55.00, 'uploads/CU8.jpg'),
(11, 'Butterscotch Cup', 'Creamy butterscotch ice cream with caramel swirls, served in a cup.', 65.00, 'uploads/CU9.jpg'),
(12, 'Choco Chips Cup', 'Vanilla ice cream with chocolate chips, served in a cup.', 70.00, 'uploads/CU10.jpg'),
(13, 'Shahi Meva Malai Basundhi & Kheer', 'A traditional Indian dessert flavor with nuts.', 50.00, 'uploads/CU11.jpg'),
(14, 'Dietz Sugar-Free Natural Vanilla', 'A sugar-free vanilla option.', 60.00, 'uploads/CU12.jpg'),
(15, 'Dietz Sugar-Free Kesar Almond', 'A sugar-free saffron and almond flavor.', 55.00, 'uploads/CU13.jpg'),
(16, 'Vanilla Cup', 'Classic vanilla flavor.', 65.00, 'uploads/CU14.jpg'),
(17, 'Strawberry Cup', 'Fresh strawberry flavor.', 70.00, 'uploads/CU15.jpg'),
(18, 'Butterscotch Cup', 'Creamy Butterscotch Flavour', 50.00, 'uploads/CU16.jpg'),
(19, 'Choco Chips  Cup', 'Chocolate chip-infused ice cream.', 60.00, 'uploads/CU17.jpg'),
(20, 'Kaju Kishmish  Cup', 'Cashew and raisin flavor', 55.00, 'uploads/CU18.jpg'),
(21, 'French Vanilla  Cup', 'Premium vanilla flavor.', 65.00, 'uploads/CU19.jpg'),
(22, 'Chocolate Gateau Cup', 'Rich chocolate cake-inspired flavor.', 70.00, 'uploads/CU20.jpg'),
(23, 'Fruit Classic Strawberry Crush Cup', 'Strawberry flavor with real fruit bits.', 50.00, 'uploads/CU21.jpg'),
(24, 'Western Classic Cookie Crumb Cup', 'Cookie-flavored ice cream.', 60.00, 'uploads/CU22.jpg'),
(25, 'Vanilla', 'Classic vanilla ice cream in a cup.', 55.00, 'uploads/CU23.jpg'),
(26, 'Strawberry', 'Fresh strawberry ice cream in a cup.', 65.00, 'uploads/CU24.jpg'),
(27, 'Chocolate', 'Rich chocolate ice cream in a cup.', 70.00, 'uploads/CU25.jpg'),
(28, 'Butterscotch', 'Creamy butterscotch ice cream in a cup.', 50.00, 'uploads/CU26.jpg'),
(29, 'Black Currant', 'Black currant-flavored ice cream in a cup.', 60.00, 'uploads/CU27.jpg'),
(30, 'Alphonso Mango', 'Alphonso mango-flavored ice cream in a cup.', 55.00, 'uploads/CU28.jpg'),
(31, 'Kesar Pista', 'Saffron and pistachio ice cream in a cup.', 65.00, 'uploads/CU29.jpg'),
(32, 'Mocha Brownie Fudge', 'Mocha ice cream with brownie fudge in a cup.', 70.00, 'uploads/CU30.jpg'),
(33, 'Red Velvet', 'Red velvet-flavored ice cream in a cup.', 60.00, 'uploads/CU32.jpg'),
(34, 'American Nuts', 'Ice cream with mixed nuts in a cup.', 55.00, 'uploads/CU33.jpg'),
(35, 'Cookie Cream', 'Vanilla ice cream with cookie pieces in a cup.', 65.00, 'uploads/CU34.jpg'),
(36, 'Raj Bhog', 'Traditional Raj Bhog-flavored ice cream in a cup.', 70.00, 'uploads/CU35.jpg'),
(37, 'Paan Ice Cream', 'Paan-flavored ice cream in a cup.', 50.00, 'uploads/CU36.jpg'),
(38, 'Taj Mahal', 'Taj Mahal-inspired ice cream in a cup.', 60.00, 'uploads/CU37.jpg'),
(39, 'Taj Mahal', 'Taj Mahal-inspired ice cream in a cup.', 60.00, 'uploads/CU37.jpg'),
(40, 'Butterscotch Cup', 'Rich butterscotch ice cream in a cup.', 55.00, 'uploads/CU38.jpg'),
(41, 'Pineapple Cup', 'Refreshing pineapple-flavored ice cream in a cup.', 65.00, 'uploads/CU39.jpg'),
(42, 'Meetha Paan Cup', 'Traditional Meetha Paan-flavored ice cream in a cup.', 70.00, 'uploads/CU40.jpg'),
(43, 'Tutty Fruity Cup', 'Fruity ice cream with mixed fruit pieces in a cup.', 50.00, 'uploads/CU41.jpg'),
(44, 'Cookies n Cream Cup', 'Vanilla ice cream with crunchy cookie pieces in a cup.', 60.00, 'uploads/CU42.jpg'),
(45, 'American Nuts Cup', 'Ice cream with mixed nuts in a cup.', 55.00, 'uploads/CU43.jpg'),
(46, 'French Vanilla', 'Premium French vanilla ice cream in a cup.', 65.00, 'uploads/CU44.jpg'),
(47, 'Chocolate Choco Chip', 'Chocolate ice cream with chocolate chips in a cup.', 70.00, 'uploads/CU45.jpg'),
(48, 'Caramel Butterscotch', 'Caramel and butterscotch-flavored ice cream in a cup.', 50.00, 'uploads/CU46.jpg'),
(49, 'Fresh Mango', 'Fresh mango-flavored ice cream in a cup.', 60.00, 'uploads/CU47.jpg'),
(50, 'Caffe Latte', 'Coffee-flavored ice cream in a cup.', 55.00, 'uploads/CU48.jpg'),
(51, 'Tender Coconut', 'Tender coconut-flavored ice cream in a cup.', 65.00, 'uploads/CU49.jpeg'),
(52, 'Kesari Rajbhog', 'Traditional Kesari Rajbhog-flavored ice cream in a cup.', 70.00, 'uploads/CU50.jpeg'),
(53, 'Cookies N Cream', 'Vanilla ice cream with cookie pieces in a cup.', 50.00, 'uploads/CU51.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `family_packs`
--

CREATE TABLE `family_packs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_packs`
--

INSERT INTO `family_packs` (`id`, `name`, `description`, `price`, `image`) VALUES
(2, 'King Alphonso', 'Rich Alphonso mango ice cream for the family.', 65.00, 'uploads/F4.jpg'),
(3, 'Roasted Almond', 'Creamy roasted almond ice cream for family indulgence.', 50.00, 'uploads/F6.jpg'),
(4, 'Rajbhog', 'Traditional Rajbhog-flavored ice cream for family celebrations.', 55.00, 'uploads/F8.jpg'),
(5, 'Chocolate Family Pack', 'A large pack of rich chocolate ice cream, perfect for sharing with family.', 65.00, 'uploads/F9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kulfis`
--

CREATE TABLE `kulfis` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kulfis`
--

INSERT INTO `kulfis` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'Shahi Kulfi', 'Rich and creamy Shahi Kulfi, a royal treat.', 50.00, 'uploads/K1.jpg'),
(2, 'Malai Kulfi', 'Classic Malai Kulfi, made with condensed milk and saffron.', 60.00, 'uploads/K2.jpg'),
(3, 'Rajwadi Kulfi', 'Traditional Rajwadi Kulfi, a festive delight.', 55.00, 'uploads/K3.jpg'),
(4, 'Kesar Pista Kulfi', 'Saffron and Pistachio Kulf, a classic Indian flavour. ', 65.00, 'uploads/K4.jpg'),
(5, 'Mango Kulfi', ' Traditional Indian mango kulfi, rich and creamy with real mango flavor', 70.00, 'uploads/K5.jpg'),
(6, 'Pista Kulfi', ' Creamy pistachio kulfi, garnished with crushed pistachios.', 50.00, 'uploads/K6.jpg'),
(7, 'Malai Kulfi', 'Classic malai kulfi, made with condensed milk and saffron.', 60.00, 'uploads/K7.jpg'),
(8, 'Rabri Kulfi', 'Traditional Rabri-flavored kulfi.', 55.00, 'uploads/K8.jpg'),
(9, 'Pista Kulfi Bar', 'Pistachio-flavored kulfi bar.', 65.00, 'uploads/K9.jpg'),
(10, 'Rajwadi Kulfi ', 'Traditional Rajwadi Kulfi, rich and creamy.', 70.00, 'uploads/K10.jpg'),
(11, 'Havmor Kulfi ', 'Classic Havmor Kulfi, a delightful treat.', 50.00, 'uploads/K11.jpg'),
(12, 'Dry Fruit  Malai Kulfi ', 'Malai Kulfi with dry fruits, a rich indulgence.', 60.00, 'uploads/K12.jpg'),
(13, 'shahi Kesar Kulfi ', 'Saffron-flavored Shahi Kulfi, a royal treat.', 55.00, 'uploads/K13.jpg'),
(14, 'Rajwadi  Kulfi Falooda ', 'Rajwadi Kulfi served with falooda, a classic dessert.', 65.00, 'uploads/K14.jpg'),
(15, 'Rajwadi  Badam Kulfi ', 'Rich almond-flavored kulfi, a royal treat.', 70.00, 'uploads/K15.jpg'),
(16, 'Rajwadi  Pista Kulfi ', 'Creamy pistachio kulfi, garnished with crushed pistachios.', 50.00, 'uploads/K16.jpg'),
(17, 'Vadilal Special Mawa Kulfi', 'Rich mawa kulfi, a specialty of Vadilal.', 55.00, 'uploads/K17.jpg'),
(18, 'Kesar Badam Kulfi', 'Saffron and almond kulfi, a classic Indian flavor.', 60.00, 'uploads/K18.jpg'),
(19, 'Shahi Kulfi', 'Traditional Shahi Kulfi, rich and creamy.', 65.00, 'uploads/K19.jpg'),
(22, 'Rajwadi Kulfi', 'Traditional Rajwadi Kulfi, a festive delight.', 70.00, 'uploads/K20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `flavor` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `flavor`, `quantity`, `price`, `order_date`) VALUES
(1, 'aaaa', 'Kesar Pista', 1, 70.00, '2025-03-24 09:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `party_packs`
--

CREATE TABLE `party_packs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `party_packs`
--

INSERT INTO `party_packs` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'Vanilla Party Pack', 'Classic vanilla ice cream for party celebrations.\r\n\r\n\r\n', 50.00, 'uploads/P1.png'),
(2, 'Butterscotch Party Pack', 'Rich butterscotch ice cream for party fun.', 60.00, 'uploads/P2.png'),
(3, 'Chocolate Party Pack', 'Rich chocolate ice cream for party indulgence.', 55.00, 'uploads/P3.png'),
(4, 'Kesar Pista  Party Pack', 'Saffron and pistachio ice cream for party occasions.', 65.00, 'uploads/P4.jpeg'),
(5, 'Fruit and Nut Party Pack', 'Ice cream with mixed fruits and nuts for party enjoyment.', 70.00, 'uploads/P5.png'),
(6, 'Shahi Anjeer Party Pack', 'Rich fig-flavored ice cream for party celebrations.', 50.00, 'uploads/P6.jpeg'),
(7, 'Assorted Party Pack', 'A mix of chocolate, vanilla, and strawberry ice cream, perfect for parties.', 60.00, 'uploads/P7.png'),
(8, 'Choco Chips Party Pack', 'Vanilla ice cream with chocolate chips, a party favorite.', 55.00, 'uploads/P8.jpeg'),
(9, 'Fruit  Party Pack', 'A refreshing mix of mango, strawberry, and pineapple ice cream.', 65.00, 'uploads/P9.png'),
(10, 'Vanilla Ice Cream Party Pack', 'Classic vanilla ice cream for parties.', 70.00, 'uploads/P10.png'),
(11, 'Vanilla  Party ', 'Vanilla ice cream for parties and fun.', 50.00, 'uploads/P11.png'),
(12, 'Butterscotch Party ', 'Creamy butterscotch ice cream for parties and fun.', 60.00, 'uploads/P12.png'),
(13, 'Chocolate Party ', 'Rich chocolate ice cream for parties and fun.', 55.00, 'uploads/P13.png'),
(14, 'Strawberry Party pack', 'Fresh strawberry ice cream for parties.', 65.00, 'uploads/P14.png'),
(15, 'Kesar Pista Party', 'Saffron and pistachio Flavoured ice cream for parties.', 70.00, 'uploads/P15.jpeg'),
(16, 'Alphonso Mango Party Pack', 'Alphonso mango-flavored ice cream for parties.', 50.00, 'uploads/P16.jpeg'),
(17, 'Kesar Pista Party Pack', 'Saffron and pistachio flavoured ice cream, perfect for parties and fun.', 60.00, 'uploads/P17.jpeg'),
(18, 'Butterscotch Party Pack', 'Rich butterscotch ice cream for party celebrations.', 55.00, 'uploads/P18.png'),
(19, 'Belgian Chocolate Party Pack', 'Premium Belgian chocolate ice cream for chocolate lovers.', 65.00, 'uploads/P19.png'),
(20, 'Rajbhog Party Pack', 'Traditional Rajbhog-flavored ice cream for festive occasions.', 70.00, 'uploads/P20.png'),
(21, 'Black Forest Party Pack', 'Black Forest-flavored ice cream for parties.', 50.00, 'uploads/P21.png'),
(22, 'Golden Fantasy Party Pack', 'Golden Fantasy-flavored ice cream for parties', 60.00, 'uploads/P22.jpeg'),
(23, 'Double Chocolate Party Pack', 'Double Chocolate -flavored ice cream for parties', 55.00, 'uploads/P23.png'),
(24, 'Caramel Crunch Party Pack', 'Caramel Crunch -flavored ice cream for parties', 65.00, 'uploads/P24.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cones`
--
ALTER TABLE `cones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cups`
--
ALTER TABLE `cups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_packs`
--
ALTER TABLE `family_packs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kulfis`
--
ALTER TABLE `kulfis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_packs`
--
ALTER TABLE `party_packs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cones`
--
ALTER TABLE `cones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `cups`
--
ALTER TABLE `cups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `family_packs`
--
ALTER TABLE `family_packs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kulfis`
--
ALTER TABLE `kulfis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `party_packs`
--
ALTER TABLE `party_packs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
