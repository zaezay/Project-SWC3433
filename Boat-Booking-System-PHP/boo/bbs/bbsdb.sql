-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2024 at 07:53 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UserType` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(2, 'Admin', 'admin', 8956565656, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-08-31 18:30:00', 1),
(9, 'izzah akmal', 'yuu', 104590783, 'gallaeakmal27@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-11-21 08:00:40', 0),
(11, 'Laila Mohd Jamri', 'leeya', 107486520, 'laila@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2024-11-21 14:06:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblboat`
--

CREATE TABLE `tblboat` (
  `ID` int NOT NULL,
  `BoatName` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Image` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Size` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Capacity` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Source` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Destination` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Route` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Description` mediumtext COLLATE utf8mb4_general_ci,
  `AddedBy` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblboat`
--

INSERT INTO `tblboat` (`ID`, `BoatName`, `Image`, `Size`, `Capacity`, `Source`, `Destination`, `Route`, `Price`, `Description`, `AddedBy`, `CreationDate`) VALUES
(1, 'Hawun Valley Kiulu Langad-Langad Trail and Camping Site', 'Hawun-Valley-Sabah.jpg', 'Large', 'Max Occupancy', 'Hawun Valley Camping', 'Kiulu', 'Kiulu, Jalan Gonipis Baru, 89250, Kota Kinabalu, Sabah.', '15', 'Hawun Valley is a newly opened campsite and café in Kiulu. It is 1 hour (49.5km) away from Kota Kinabalu city and a 5-minute drive away from Kiulu Town. The views are the main highlights of Hawun Valley: in the morning, enjoy the panoramic view of the lush, green valley with the majestic Mount Kinabalu peeking through the fogs; in the evening, be immersed in the spectacular sunset vistas; and at night, stunning views of the starry sky await. Available facilities include a private platform with rented rooms, camping spots, and basic amenities like clean toilets and shower rooms. Hawun Valley is the perfect retreat for friends, couples, and family to wind down and soothe the mind from the hustle and bustle of city life. ', 2, '2024-09-25 06:31:44'),
(2, 'Beach N Breeze Glamping', 'Beach&Breeze.jpg', '16 m2', '6', 'Beach N Breeze Glamping', 'Kampung Pantai', ',78200 Kuala Sungai Baru, Melaka', '450', 'Located in Melaka and only 41 km from Baba & Nyonya Heritage Museum, Beach N Breeze Glamping provides accommodation with sea views, free WiFi, and free private parking. The air-conditioned accommodation is 41 km from Cheng Hoon Teng Temple. The non-smoking property is set 41 km from Straits Chinese Jewelry Museum Malacca. snack bar can be found on-site, and in the warmer months, you can make use of the barbecue facilities. For guests with children, the campground offers indoor and outdoor play areas. Guests can also relax in the garden or the shared lounge area.', 2, '2024-09-25 06:34:28'),
(3, 'Natasya Riverside Caravan Park', 'Natasya River Side.jpg', '200 sq ft', 'Max Occupancy', 'Natasya Riverside Caravan Park', 'Gopeng', 'Jalan Kampung Pintu Padang, Kampung Pintu Padang, Gopeng, Perak, Malaysia', '15', 'Nature and relaxation meet. Where the only thing we overlook is the river', 2, '2024-09-25 06:35:33'),
(4, 'Rainforest Park Genting', 'Rainforest Park Genting.jpg', '755M ', 'Max Occupancy', 'Rainforest park', 'Bentong', 'Genting Sempah, 28750 Bentong, Pahang', '60', 'Immerse yourself at a 755M campsite, enjoy a chill night & marvelous view offered by the rainforest.', 2, '2024-09-25 06:36:33'),
(5, 'Ten Toes Camp', 'Ten Toes Camp.jpg', 'Large', 'Max Occupancy', 'Ten Toes Camp', 'Pontian', 'Kg Air Puteh Kg Sawah Pekan Nanas, 81500 Pontian, Johor', '35', 'Ten Toes Camp A very human camp A camp that needs to be leaned up A 100% return camp A camp where you can see beautiful evening 霞, beautiful sunrise, beautiful sea of clouds. I was here for four days and three nights this time. I was lucky to have all these beautiful scenery in my eyes and printed in my mind ', 2, '2024-09-26 04:55:19'),
(6, 'MoonRiver Lodge', 'MoonRiver Lodge.jpg', 'Medium', 'Max Occupancy', 'Moonriver Lodge', 'Gua Musang ', 'Cameron Highlands, 18300 Lojing, Kelantan', '150', 'We are a family-owned farm nestled in a valley of lush mountains of Sigar Highlands. A relaxing nature is restricted with opportunities to learn about nature and farming activities. Come stay with us for a taste of country living in a highland hide home away from home\r\n', 2, '2024-09-26 05:34:22'),
(7, 'Saraphi Campsite', 'Saraphi Campsite.jpg', 'Large', 'Max Occupancy', 'Saraphi Campsite', 'Kura', ',08210 Jeniang, Kedah', '250', 'Waking up to a stunning view of the breathtaking 🤩 sea of clouds at Saraphi Homestay was truly a mesmerizing experience! The campsite’s beauty was beyond words, with a beautiful formation of big rocks 🪨 adding to its charm.\r\nThe cool and windy temperature makes it a perfect getaway for relaxation and chilling. The road going up to the campsite is challenging, it was off-road, and it wouldn’t have been possible without the help of Nick (CO). He met us at the junction and escorted us up to the campsite 👍🏻, ensuring a smooth and hassle-free arrival. His friendly assistance made this camping trip even more enjoyable and memorable.\r\nA great place to experience the scenic valley, such a hidden gem!\r\n', 2, '2024-09-26 05:35:12'),
(8, 'Seri Ternas', 'Seri Ternas.jpg', 'Large', 'Max Occupancy', 'Seri Ternas', 'Tasik Beris', ', Kampung Ternas, 08200 Sik, Kedah', '60', 'The resort is described as a peaceful place surrounded by the beauty of nature, ideal for family, friends, or groups up to 200 persons. It boasts a variety of facilities and activities including a BBQ pit, drinking water, fishing, kayaking, a kitchen/sink, lake access, phone coverage, plug points, showers, a swimming pool, and toilets. It’s suitable for a range of accommodations from camping with your own tent at RM60 per night to staying in chalets, with prices ranging from RM160 to RM450 depending on the type. Activities available include kayaking for RM20 per person for two hours, boat tours, free fishing (with your own equipment), visits to a kelulut (stingless bee) farm, BBQ facilities, and stargazing opportunities​​​​.\r\n', 2, '2024-09-26 06:30:06'),
(9, 'Gaharu Campsite & Resort', 'Gaharu-Campsite-and-Resort1.jpg', 'Large', 'Max Occupancy', 'Gaharu Camp and Resort', 'Kampung Dagang Setia', ', 44000 Kuala Kubu Bharu, Selangor', '75', 'This is a place for camping and relaxing with your family or friends, the place is pet friendly also!\r\n', 2, '2024-09-27 05:41:33'),
(10, 'Hand Boat', 'Campsite-Nuri-3.jpg', 'Medium', 'Max Occupancy', 'Campsite Nuri', 'Kuala Terengganu', ', Terengganu, Malaysia', '75', 'A small campsite in Kuala Terengganu, in Pengkalan Maras near the airport. Camp at your own private beach or a star gazing site.', 2, '2024-10-01 05:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

CREATE TABLE `tblbookings` (
  `ID` int NOT NULL,
  `BoatID` int DEFAULT NULL,
  `BookingNumber` bigint DEFAULT NULL,
  `FullName` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `EmailId` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PhoneNumber` bigint DEFAULT NULL,
  `BookingDateFrom` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BookingDateTo` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BookingTime` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NumnerofPeople` int DEFAULT NULL,
  `Notes` mediumtext COLLATE utf8mb4_general_ci,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BookingStatus` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`ID`, `BoatID`, `BookingNumber`, `FullName`, `EmailId`, `PhoneNumber`, `BookingDateFrom`, `BookingDateTo`, `BookingTime`, `NumnerofPeople`, `Notes`, `postingDate`, `AdminRemark`, `BookingStatus`, `UpdationDate`) VALUES
(1, 4, 2147483647, 'Anuj kumar', 'anujk@gmail.com', 1233211230, '2024-10-15', '2024-10-17', '10:00', 5, 'NA', '2024-10-08 17:14:58', 'NA', 'Accepted', '2024-10-10 17:46:17'),
(2, 2, 2147483647, 'Garima', 'garima123@gmail.com', 1231231230, '2024-11-01', '2024-11-05', '11:30', 4, 'NA', '2024-10-11 14:57:50', 'Proceed\r\n', 'Accepted', '2024-11-21 07:52:26'),
(4, 6, 5811679355, 'John ', 'john12@gmail.com', 4566541230, '2024-11-08', '2024-11-09', '10:30', 4, 'NA', '2024-10-14 15:11:02', 'Booking Appoved', 'Accepted', '2024-10-14 15:11:59'),
(5, 4, 3336014258, 'izzah akmal', 'gallaeakmal27@gmail.com', 104590783, '2024-11-14', '2024-11-19', '15:18', 4, 'I Want Book', '2024-11-21 07:49:18', 'proceed\r\n', 'Accepted', '2024-11-21 08:12:00'),
(6, 1, 8489893773, 'izzah akmal', 'gallaeakmal27@gmail.com', 104590783, '2024-11-14', '2024-11-19', '06:10', 4, 'I Want Book', '2024-11-21 08:09:39', NULL, NULL, '2024-11-21 08:09:39'),
(7, 3, 6469850404, 'Luthfi', 'luthfi@gmail.com', 111111111, '2024-11-27', '2024-11-29', '16:40', 3, 'I Want Book', '2024-11-21 19:41:12', NULL, NULL, '2024-11-21 19:41:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblboat`
--
ALTER TABLE `tblboat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `bid` (`BoatID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblboat`
--
ALTER TABLE `tblboat`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbookings`
--
ALTER TABLE `tblbookings`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD CONSTRAINT `bid` FOREIGN KEY (`BoatID`) REFERENCES `tblboat` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
