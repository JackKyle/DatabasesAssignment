-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 12:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessibility`
--

CREATE TABLE `accessibility` (
  `accessibility_ID` int(11) NOT NULL,
  `accessibility_feature` varchar(255) NOT NULL,
  `feature_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accessibility`
--

INSERT INTO `accessibility` (`accessibility_ID`, `accessibility_feature`, `feature_description`) VALUES
(1, 'Braille or raised signage', 'Signage in order to help visually impaired guests'),
(2, 'Accessible Bathroom', 'Bathrooms designed to be wheelchair accessible'),
(3, 'In room accessibility', 'Plenty of spacing in room to allow disabled guests more room to maneuver'),
(4, 'Wheelchair accessible parking', 'Larger parking spaces in order to allow greater ease for guests to get in and out when using a wheelchair'),
(5, 'Low-height counters and sinks', 'Lower counters and sinks to help guests in wheelchairs'),
(6, 'Grab bar near toilets', 'Bar for guests with less capability for movement to grab when getting off toilets'),
(7, 'Wheelchair accessible path to lift', 'Path to lift wide and clear in order to allow guests in wheelchairs to reach it with ease'),
(8, 'Wheelchair accessible fitness centre', 'Fitness centre usable by guests in wheelchairs'),
(9, 'Assistive listening devices available', 'Assistive listening devices available to customers harder of hearing that they may use devices such as TVs with more ease'),
(10, 'Wheelchair accessible restaurant', 'Restaurant accessible to guests in wheelchairs');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `accommodation_ID` int(11) NOT NULL,
  `accommodation_type_ID` int(11) NOT NULL,
  `supplier_ID` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `accommodation_address_ID` int(11) NOT NULL,
  `description` text NOT NULL,
  `star_rating` decimal(2,1) NOT NULL,
  `accommodation_theme_ID` int(11) DEFAULT NULL,
  `covid_policy_ID` int(11) NOT NULL,
  `FAQs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`accommodation_ID`, `accommodation_type_ID`, `supplier_ID`, `name`, `accommodation_address_ID`, `description`, `star_rating`, `accommodation_theme_ID`, `covid_policy_ID`, `FAQs`) VALUES
(1, 2, NULL, 'Lake LBJ Inn', 1, 'City centre motel in Kingsland', '2.5', NULL, 1, 'Does Lake LBJ Inn offer free cancellation for a full refund?\r\nYes, Lake LBJ Inn does have fully refundable room rates available to book on our site. If you’ve booked a fully refundable room rate, this can be cancelled up to a few days before check-in, depending on the property\'s cancellation policy. Just make sure that you check this property\'s cancellation policy for the exact terms and conditions.\r\nWhat are the cleanliness and hygiene measures currently in place at Lake LBJ Inn?\r\nThis property confirms that disinfectant is used to clean the property. Furthermore, social distancing measures are in place and staff are given personal protective equipment. Please note that this information has been provided by our partners.\r\nIs parking offered on site at Lake LBJ Inn?\r\nYes, there\'s free self parking.\r\nIs there a pool at Lake LBJ Inn?\r\nYes, there\'s a seasonal outdoor pool.\r\nAre pets allowed at Lake LBJ Inn?\r\nYes, cats and dogs are welcome, with a limit of 2 per room and maximum weight of 14 kg per pet. There\'s a charge of USD 25 per pet, per stay, and there\'s also a deposit of USD 25 per stay.\r\nWhat are the check-in and check-out times at Lake LBJ Inn?\r\nYou can check in from 1:00 PM - anytime. Check-out time is noon. Contactless check-out is available.\r\nAre there restaurants at or near Lake LBJ Inn?\r\nYes. Nearby restaurants include La Tequila Jalisco (5-min walk), Spykes BBQ (11-min walk) and The Pizza Box (2.1 mi).\r\nWhat is there to do at Lake LBJ Inn and nearby?\r\nHave fun with on-site activities such as mountain biking and hiking. Additional recreation nearby includes hunting. Lake LBJ Inn also has a seasonal outdoor pool.'),
(2, 1, 1, 'Hilton Garden Inn New York/Manhattan-Chelsea', 2, 'City centre hotel within walking distance of Madison Square Garden', '3.0', 2, 2, 'Does Hilton Garden Inn New York/Manhattan-Chelsea offer free cancellation for a full refund?\r\nYes, Hilton Garden Inn New York/Manhattan-Chelsea does have fully refundable room rates available to book on our site. If you’ve booked a fully refundable room rate, this can be cancelled up to a few days before check-in, depending on the property\'s cancellation policy. Just make sure that you check this property\'s cancellation policy for the exact terms and conditions.\r\nWhat are the cleanliness and hygiene measures currently in place at Hilton Garden Inn New York/Manhattan-Chelsea?\r\nThis property confirms that disinfectant is used to clean the property. Furthermore, guests are provided with hand sanitiser, social distancing measures are in place and staff are given personal protective equipment. Please note that this information has been provided by our partners.\r\nIs parking offered on site at Hilton Garden Inn New York/Manhattan-Chelsea?\r\nYes. Self-parking costs USD 45.00 per day.\r\nAre pets allowed at Hilton Garden Inn New York/Manhattan-Chelsea?\r\nSorry, pets aren\'t allowed, but service animals are welcome.\r\nWhat are the check-in and check-out times at Hilton Garden Inn New York/Manhattan-Chelsea?\r\nYou can check in from 3 PM - midnight. Check-out time is noon. Late check-out is available for a charge of USD 100 (subject to availability). Express check-in and check-out and contactless social distancing and check-out are available.\r\nAre there restaurants at or near Hilton Garden Inn New York/Manhattan-Chelsea?\r\nYes. Nearby restaurants include Bombay Sandwich Company (3-min walk), Koffeecake Corner (3-min walk) and Kobeyaki (3-min walk).\r\nIs there an on-site casino at Hilton Garden Inn New York/Manhattan-Chelsea?\r\nNo, this hotel doesn\'t have a casino, but Resorts World Casino (20-min drive) is nearby.'),
(3, 1, 2, 'Grand Central Hotel', 3, 'The Grand Central Hotel is at the heart of Belfast. Set in the Linen Quarter, this luxury hotel is a spectacular hub for exploring all Belfast has to offer.', '4.0', NULL, 2, 'Does Grand Central Hotel Belfast offer free cancellation for a full refund?\r\nYes, Grand Central Hotel Belfast does have fully refundable room rates available to book on our site. If you’ve booked a fully refundable room rate, this can be cancelled up to a few days before check-in, depending on the property\'s cancellation policy. Just make sure that you check this property\'s cancellation policy for the exact terms and conditions.\r\nWhat are the cleanliness and hygiene measures currently in place at Grand Central Hotel Belfast?\r\nThis property confirms that disinfectant is used to clean the property. Furthermore, guests are provided with hand sanitiser, social distancing measures are in place and staff are given personal protective equipment. Please note that this information has been provided by our partners.\r\nIs parking offered on site at Grand Central Hotel Belfast?\r\nSorry, there\'s no on-site parking at Grand Central Hotel Belfast.\r\nAre pets allowed at Grand Central Hotel Belfast?\r\nSorry, pets aren\'t allowed.\r\nWhat are the check-in and check-out times at Grand Central Hotel Belfast?\r\nYou can check in from 3:00 PM - midnight. Check-out time is 11 AM.\r\nAre there restaurants at or near Grand Central Hotel Belfast?\r\nYes, there\'s an on-site restaurant. Nearby restaurants include Howard Street (3-min walk), The Allotment Bistro Restaurant (3-min walk) and Stix and Stones (3-min walk).'),
(4, 1, NULL, 'Library Hotel', 4, '60 room boutique hotel in New York City, each floor themed after a major category of the Dewey Decimal Sorting System', '4.0', 1, 2, 'Does Library Hotel by Library Hotel Collection offer free cancellation for a full refund?\r\nYes, Library Hotel by Library Hotel Collection does have fully refundable room rates available to book on our site. If you’ve booked a fully refundable room rate, this can be cancelled up to a few days before check-in, depending on the property\'s cancellation policy. Just make sure that you check this property\'s cancellation policy for the exact terms and conditions.\r\nWhat are the cleanliness and hygiene measures currently in place at Library Hotel by Library Hotel Collection?\r\nThis property confirms that disinfectant is used to clean the property. Furthermore, guests are provided with hand sanitiser, social distancing measures are in place and staff are given personal protective equipment. Please note that this information has been provided by our partners.\r\nIs parking offered on site at Library Hotel by Library Hotel Collection?\r\nNo, unfortunately, but there\'s discounted parking nearby.\r\nAre pets allowed at Library Hotel by Library Hotel Collection?\r\nSorry, pets aren\'t allowed, but service animals are welcome.\r\nWhat are the check-in and check-out times at Library Hotel by Library Hotel Collection?\r\nYou can check in from 3 PM - midnight. Check-out time is 1 PM. Contactless check-out is available.\r\nAre there restaurants at or near Library Hotel by Library Hotel Collection?\r\nYes, Madison and Vine offers al fresco dining, American cuisine and garden views. Nearby restaurants include Agern (3-min walk), Moonstruck (3-min walk) and CIPRIANI (3-min walk).\r\nIs there an on-site casino at Library Hotel by Library Hotel Collection?\r\nNo, this hotel doesn\'t have a casino, but Resorts World Casino (19-min drive) is nearby.\r\nWhat is there to do at Library Hotel by Library Hotel Collection and nearby?\r\nLibrary Hotel by Library Hotel Collection has a garden.');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_accessibility`
--

CREATE TABLE `accommodation_accessibility` (
  `accommodation_access_ID` int(11) NOT NULL,
  `accommodation_ID` int(11) NOT NULL,
  `accessibility_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_accessibility`
--

INSERT INTO `accommodation_accessibility` (`accommodation_access_ID`, `accommodation_ID`, `accessibility_ID`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 2),
(12, 3, 7),
(13, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_address`
--

CREATE TABLE `accommodation_address` (
  `accommodation_address_ID` int(11) NOT NULL,
  `building_number` int(11) NOT NULL,
  `building_name` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city_ID` int(11) NOT NULL,
  `postcode/zip_code` varchar(20) NOT NULL,
  `latitude` decimal(65,4) DEFAULT NULL,
  `longitude` decimal(65,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_address`
--

INSERT INTO `accommodation_address` (`accommodation_address_ID`, `building_number`, `building_name`, `address_line_1`, `address_line_2`, `city_ID`, `postcode/zip_code`, `latitude`, `longitude`) VALUES
(1, 13813, NULL, ' Ranch Rd 1431', NULL, 1, '78639, TX', '30.6518', '-98.4183'),
(2, 121, NULL, 'W 28th St', NULL, 2, 'NY 10001', '40.7467', '-73.9914'),
(3, 9, NULL, 'Bedford Street', NULL, 20, 'BT2 7FF', '54.5952', '5.9316'),
(4, 299, NULL, 'Madison Avenue at E 41st Street', NULL, 2, 'NY 10017-6298', '40.7522', '73.9795');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_facility`
--

CREATE TABLE `accommodation_facility` (
  `accommodation_facility_ID` int(11) NOT NULL,
  `accommodation_ID` int(11) NOT NULL,
  `facility_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_facility`
--

INSERT INTO `accommodation_facility` (`accommodation_facility_ID`, `accommodation_ID`, `facility_ID`) VALUES
(1, 1, 1),
(2, 1, 2),
(8, 1, 8),
(17, 2, 19),
(18, 2, 17),
(19, 2, 22),
(20, 2, 20),
(21, 2, 18),
(22, 2, 21),
(23, 2, 2),
(24, 3, 21),
(25, 3, 8),
(26, 3, 22),
(27, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_image`
--

CREATE TABLE `accommodation_image` (
  `accommodation_image_ID` int(11) NOT NULL,
  `accommodation_ID` int(11) NOT NULL,
  `image_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_image`
--

INSERT INTO `accommodation_image` (`accommodation_image_ID`, `accommodation_ID`, `image_ID`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 2, 6),
(4, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_theme`
--

CREATE TABLE `accommodation_theme` (
  `accommodation_theme_id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `theme_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_theme`
--

INSERT INTO `accommodation_theme` (`accommodation_theme_id`, `theme`, `theme_description`) VALUES
(1, 'Library', 'Library theme for the hotel, book cases adorning the walls'),
(2, 'normal', 'a regular hotel, no theme');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_type`
--

CREATE TABLE `accommodation_type` (
  `accommodation_type_ID` int(11) NOT NULL,
  `accommodation_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_type`
--

INSERT INTO `accommodation_type` (`accommodation_type_ID`, `accommodation_type`) VALUES
(1, 'Hotel'),
(2, 'Motel'),
(3, 'B&B'),
(4, 'Resort'),
(5, 'Inn');

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `attraction_ID` int(11) NOT NULL,
  `city_ID` int(11) NOT NULL,
  `attraction_type_ID` int(11) NOT NULL,
  `attraction_name` varchar(255) NOT NULL,
  `attraction_description` varchar(255) NOT NULL,
  `latitude` float(65,4) NOT NULL,
  `longitude` float(65,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`attraction_ID`, `city_ID`, `attraction_type_ID`, `attraction_name`, `attraction_description`, `latitude`, `longitude`) VALUES
(1, 2, 2, 'Central Park', 'Central Park is an urban park in New York City located between the Upper West and Upper East Sides of Manhattan.', 40.7812, 73.9665),
(2, 2, 1, 'Metropolitan Museum of Art', 'The Metropolitan Museum of Art is one of the world\'s largest and finest art museums. Its collection includes more than two million works of art.', 40.7794, 73.9632),
(3, 20, 4, 'Belfast City Hall', 'City hall located in Donegal Square, the civic building of Belfast city council', 54.5966, 5.9301),
(4, 1, 5, 'Legends Gold Course of Lake LBJ', 'Golf course in Kingsland, Texas', 30.6670, -98.4276);

-- --------------------------------------------------------

--
-- Table structure for table `attraction_type`
--

CREATE TABLE `attraction_type` (
  `attraction_type_ID` int(11) NOT NULL,
  `attraction_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attraction_type`
--

INSERT INTO `attraction_type` (`attraction_type_ID`, `attraction_type`) VALUES
(1, 'Museum'),
(2, 'Park'),
(3, 'Monument'),
(4, 'Building of interest'),
(5, 'Amusements');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `room_ID` int(11) NOT NULL,
  `booking_reference_number` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_cost` decimal(11,0) NOT NULL,
  `booking_payment_ID` int(11) NOT NULL,
  `rewards_points` int(11) NOT NULL,
  `booking_status_ID` int(11) NOT NULL,
  `booking_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_ID`, `customer_ID`, `room_ID`, `booking_reference_number`, `booking_date`, `booking_cost`, `booking_payment_ID`, `rewards_points`, `booking_status_ID`, `booking_details_id`) VALUES
(1, 18, 1, 34585359, '2021-10-07', '148', 4, 2, 1, 1),
(2, 8, 4, 34895761, '2021-11-02', '374', 3, 2, 3, 3),
(3, 11, 2, 45721658, '2021-10-31', '246', 1, 2, 2, 4),
(4, 16, 3, 85197463, '2021-11-02', '222', 2, 3, 3, 2),
(5, 11, 5, 54682165, '2021-07-07', '444', 1, 2, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `booking_details_ID` int(11) NOT NULL,
  `guest_first_name` varchar(255) NOT NULL,
  `guest_last_name` varchar(255) NOT NULL,
  `number_adults` int(2) NOT NULL,
  `number_children` int(2) NOT NULL,
  `children_age` varchar(10) DEFAULT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `late_checkout` tinyint(1) NOT NULL,
  `special_request_check` tinyint(1) NOT NULL,
  `special_requests` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`booking_details_ID`, `guest_first_name`, `guest_last_name`, `number_adults`, `number_children`, `children_age`, `check_in_date`, `check_out_date`, `late_checkout`, `special_request_check`, `special_requests`) VALUES
(1, 'Pamela', 'Voorhees', 1, 0, NULL, '2021-11-24', '2021-11-26', 1, 1, 'Have large bag with me that I will need help with'),
(2, 'Bubba', 'Sawyer', 2, 0, NULL, '2021-11-24', '2021-11-27', 0, 0, NULL),
(3, 'Penny', 'Wise', 1, 3, '1, 3, 6', '2021-11-24', '2021-11-26', 1, 1, 'One baby, a cot would be a great help'),
(4, 'Billy', 'Loomis', 1, 0, NULL, '2021-11-23', '2021-11-26', 1, 0, NULL),
(5, 'Billy', 'Loomis', 2, 0, NULL, '2021-12-04', '2021-12-06', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking_payment`
--

CREATE TABLE `booking_payment` (
  `booking_payment_ID` int(11) NOT NULL,
  `payment_type_ID` int(11) NOT NULL,
  `payment_ID` int(11) NOT NULL,
  `currency_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_payment`
--

INSERT INTO `booking_payment` (`booking_payment_ID`, `payment_type_ID`, `payment_ID`, `currency_ID`) VALUES
(1, 1, 4, 3),
(2, 2, 5, 2),
(3, 2, 11, 1),
(4, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking_status`
--

CREATE TABLE `booking_status` (
  `booking_status_ID` int(11) NOT NULL,
  `initiated` tinyint(1) NOT NULL,
  `in_progress` tinyint(1) NOT NULL,
  `confirmed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_status`
--

INSERT INTO `booking_status` (`booking_status_ID`, `initiated`, `in_progress`, `confirmed`) VALUES
(1, 1, 0, 0),
(2, 0, 1, 0),
(3, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `card_provider`
--

CREATE TABLE `card_provider` (
  `card_provider_id` int(11) NOT NULL,
  `card_provider_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_provider`
--

INSERT INTO `card_provider` (`card_provider_id`, `card_provider_name`) VALUES
(1, 'American Bank'),
(2, 'Nationwide'),
(3, 'Central Bank of Brazil'),
(4, 'Bank of Canada'),
(5, 'Krungthai Bank'),
(6, 'Deutsche Bank AG'),
(7, 'Banque de France'),
(8, 'Absa Group Limited'),
(9, 'Egyptian Arab Land Bank'),
(10, 'Bank Australia');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_ID` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `country_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_ID`, `city_name`, `country_ID`) VALUES
(1, 'Kingsland', 1),
(2, 'New York', 1),
(3, 'London', 2),
(4, 'Cairo', 10),
(5, 'Johannesburg', 9),
(6, 'Quebec', 8),
(7, 'Berlin', 4),
(8, 'Toulouse', 3),
(9, 'Rio de Janeiro', 7),
(10, 'Brisbane', 6),
(11, 'Bangkok', 5),
(12, 'Port Elizabeth', 9),
(13, 'São Paulo', 7),
(14, 'Phuket', 5),
(15, 'Nice', 3),
(16, 'Giza', 10),
(17, 'Hamburg', 4),
(18, 'Toronto', 8),
(19, 'Sydney', 6),
(20, 'Belfast', 2);

-- --------------------------------------------------------

--
-- Table structure for table `communication_preference`
--

CREATE TABLE `communication_preference` (
  `communication_preference_id` int(11) NOT NULL,
  `SMS` tinyint(1) NOT NULL,
  `Email` tinyint(1) NOT NULL,
  `Post` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `communication_preference`
--

INSERT INTO `communication_preference` (`communication_preference_id`, `SMS`, `Email`, `Post`) VALUES
(1, 0, 0, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 1, 0, 0),
(5, 1, 1, 0),
(6, 0, 1, 1),
(7, 1, 0, 1),
(8, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_ID` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_ID`, `country_name`) VALUES
(1, 'United States of America'),
(2, 'United Kingdom'),
(3, 'France'),
(4, 'Germany'),
(5, 'Thailand'),
(6, 'Australia'),
(7, 'Brazil'),
(8, 'Canada'),
(9, 'South Africa'),
(10, 'Egypt');

-- --------------------------------------------------------

--
-- Table structure for table `covid_policy`
--

CREATE TABLE `covid_policy` (
  `covid_policy_ID` int(11) NOT NULL,
  `policy_name` varchar(255) NOT NULL,
  `policy_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `covid_policy`
--

INSERT INTO `covid_policy` (`covid_policy_ID`, `policy_name`, `policy_description`) VALUES
(1, 'Enhanced health and safety measures(1)', 'Property is cleaned with disinfectant\r\nStaff wear personal protective equipment\r\nProperty confirms they are implementing enhanced cleaning measures\r\nSocial distancing measures are in place'),
(2, 'Enhanced health and safety measures(2)', 'Property is cleaned with disinfectant\r\nStaff wear personal protective equipment\r\nProperty confirms they are implementing enhanced cleaning measures\r\nShield between guests and staff in main contact areas\r\nSocial distancing measures are in place\r\nContactless check-in is available\r\nProtective clothing is available for guests\r\nMasks are available for guests\r\nIndividually wrapped food options are available\r\nGuests are provided with free hand sanitiser');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_ID` int(11) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `country_ID` int(11) NOT NULL,
  `exchange_rate` float(65,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_ID`, `currency`, `country_ID`, `exchange_rate`) VALUES
(1, 'GBP', 2, 1.0000),
(2, 'USD', 1, 1.3400),
(3, 'Baht', 5, 43.9100);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `customer_address_id` int(11) DEFAULT NULL,
  `phone_number` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `communication_preference_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `member_id`, `first_name`, `last_name`, `customer_address_id`, `phone_number`, `email`, `communication_preference_id`) VALUES
(7, 178311417, 'Daniel', 'Robitaille', 5, '07654312897', 'honeycomb@yahoo.com', 1),
(8, 161988422, 'Penny', 'Wise', 10, '07498165688', 'scaryclown@hotmail.com', 4),
(10, 135478963, 'Freddy', 'Krueger', 7, '07415632489', 'prettyclaws@aol.co.uk', 8),
(11, 635468651, 'Billy', 'Loomis', 4, '07420315850', 'ilovesydney333@gmail.com', 4),
(12, 456216641, 'Jason', 'Voorhees', 2, '07025869341', 'mommasboy42@hotmail.com', 1),
(13, 481535448, 'Elle', 'Woods', 6, '07458013204', 'fashionicon17@hotmail.com', 8),
(14, 191831187, 'Michael', 'Myers', 9, '07698451143', 'bigknives@yahoo.com', 2),
(15, 579824136, 'John', 'Kramer', 8, '07156161949', 'jigsaws@hotmail.com', 6),
(16, 249792478, 'Bubba', 'Sawyer', 1, '07311559110', 'leatherhead@gmail.com', 2),
(17, 745134838, 'Chucky', 'Ray', 3, '07024013068', 'goodguy@yahoo.com', 5),
(18, 468513887, 'Pamela', 'Voorhees', 2, '07165894164', 'proudmom254@yahoo.com', 8);

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE `customer_account` (
  `member_id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`member_id`, `username`, `password`) VALUES
(135478963, 'Fredd1e', 'InyourDreams'),
(161988422, 'DancingClown', 'H0nkh0nk27'),
(178311417, 'CandyMan', 'Say5Times'),
(191831187, 'pumpkin', '1LoveCapta1nK1rk'),
(249792478, 'TexasDude', 'I<3ch4ins4ws'),
(456216641, 'jslasher2', 'FridayThe13th'),
(468513887, 'mommabear', 'il0v3J450n'),
(481535448, 'PinkBlonde2001', 'LegalFashion21'),
(579824136, 'PuppetKing245', 'Kn0wY0urW0rth'),
(635468651, 'ghosty', 'theMatter$ydn3y?'),
(745134838, 'dollman', 'itsChild$Play');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `customer_address_ID` int(11) NOT NULL,
  `building_number` varchar(11) NOT NULL,
  `building_name` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city_ID` int(11) DEFAULT NULL,
  `postcode/zip_code` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`customer_address_ID`, `building_number`, `building_name`, `address_line_1`, `address_line_2`, `city_ID`, `postcode/zip_code`) VALUES
(1, '211', NULL, 'North Chamberlain Street', NULL, 1, 'TX 78639'),
(2, '80', NULL, 'Franklin Avenue', NULL, 2, 'NY 14094'),
(3, '1195', NULL, 'Avenida da Liberdade', NULL, 13, '01503-000'),
(4, '71', NULL, 'Moo 2 Soi Koktanode Kate Beach ', NULL, 14, '83100 '),
(5, '44', NULL, 'rue La Boétie', NULL, 8, '75016'),
(6, '1883', NULL, 'Avenue Royale', NULL, 6, 'G1E 2L3'),
(7, '49', 'Dahlem manor', 'Königin-Luise-Straße', NULL, 7, '14195'),
(8, '33', NULL, 'Mills Street', NULL, 10, '4000'),
(9, '48a', NULL, 'Bahgat Ali Street', NULL, 4, 'n/a'),
(10, '34B', NULL, 'Edinburgh Street', NULL, 20, 'BT9 7DS');

-- --------------------------------------------------------

--
-- Table structure for table `customer_favourites`
--

CREATE TABLE `customer_favourites` (
  `customer_favourite_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `accommodation_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_favourites`
--

INSERT INTO `customer_favourites` (`customer_favourite_ID`, `customer_ID`, `accommodation_ID`) VALUES
(1, 16, 1),
(2, 13, 3),
(3, 11, 2),
(4, 11, 3),
(7, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `facility_ID` int(11) NOT NULL,
  `facility_name` varchar(255) NOT NULL,
  `facility_description` text NOT NULL,
  `for_family` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`facility_ID`, `facility_name`, `facility_description`, `for_family`) VALUES
(1, 'Pool', 'outdoor pool available to hotel', 1),
(2, 'Self-serve laundry', 'Laundry machines available to customers', 1),
(3, 'Daily housekeeping', 'Housekeeping available for rooms each day', 1),
(4, 'Bathtub or shower', 'Washing facilities available to customers', 1),
(5, 'In-room climate control (air conditioning)', 'Air conditioning that customers may set themselves to their own comfort in their room', 1),
(6, 'Flat-panel TV', 'TV available in bedroom', 1),
(7, 'Free wifi in rooms', 'wifi available in each room', 1),
(8, 'Free wifi in public areas', 'wifi available to customers in public areas of hotel', 1),
(17, 'To-go breakfast', 'Breakfast to take where the customer desires', 1),
(18, 'Coffee/tea in common area', 'Refreshments available in common areas of hotel', 0),
(19, '24 hour business centre', 'Business centre always open for customers', 0),
(20, 'Luggage Storage', 'Storage available for luggage when not stored in room at cost', 1),
(21, 'Conference Spaces available', 'Conference spaces available to be booked for business meetings', 0),
(22, 'Lift', 'Elevator available in building for use', 1),
(23, 'Hair dryer', 'Hair dryer available in room for customer use', 1),
(24, 'Coffee/Tea Maker', 'Coffee/Tea maker available in rooms', 1),
(25, 'Ironing Board', 'Ironing board available in room', 1),
(26, 'Free newspaper', 'Free newspaper available to be delivered to room', 1),
(27, 'Fridge', 'Fridge in room', 1),
(28, 'Microwave', 'Microwave available in room', 1),
(29, 'Premium TV channels', 'Premium TV channels available at extra cost', 1),
(34, 'Conference Spaces available', 'Conference spaces available to be booked for business meetings', 0),
(35, 'Lift', 'Elevator available in building for use', 1),
(36, 'Hair dryer', 'Hair dryer available in room for customer use', 1),
(37, 'Coffee/Tea Maker', 'Coffee/Tea maker available in rooms', 1),
(38, 'Ironing Board', 'Ironing board available in room', 1),
(39, 'Free newspaper', 'Free newspaper available to be delivered to room', 1),
(40, 'Fridge', 'Fridge in room', 1),
(41, 'Microwave', 'Microwave available in room', 1),
(42, 'Premium TV channels', 'Premium TV channels available at extra cost', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_ID` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_URL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_ID`, `image_name`, `image_URL`) VALUES
(1, 'Lake LBJ Inn Front Desk', 'https://exp.cdn-hotels.com/hotels/46000000/45480000/45472800/45472709/f3eebfb9_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(2, 'Lake LBJ Basic Room 1 King Bed Picture 1', 'https://exp.cdn-hotels.com/hotels/46000000/45480000/45472800/45472709/7e4eeea1_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(3, 'Lake LBJ Basic Room 1 King Bed Picture 2', 'https://exp.cdn-hotels.com/hotels/46000000/45480000/45472800/45472709/9adef3a7_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(4, 'Lake LBJ Basic Room 1 King Bed Picture 3', 'https://exp.cdn-hotels.com/hotels/46000000/45480000/45472800/45472709/338dbed3_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(5, 'Lake LBJ Outside', 'https://exp.cdn-hotels.com/hotels/46000000/45480000/45472800/45472709/0da3c9d5_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(6, 'Hilton Manhatten-Chelsea Lobby', 'https://exp.cdn-hotels.com/hotels/8000000/7370000/7362500/7362466/015f5aec_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(7, 'Business Centre Hilton Manhatten-Chelsea', 'https://exp.cdn-hotels.com/hotels/8000000/7370000/7362500/7362466/6d1a2805_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(8, 'Queen Bed Hilton Manhatten-Chelsea', 'https://exp.cdn-hotels.com/hotels/8000000/7370000/7362500/7362466/74f0f43b_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(9, 'King bed Hilton Manhatten-Chelsea', 'https://exp.cdn-hotels.com/hotels/8000000/7370000/7362500/7362466/2433d993_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(10, 'King bed Hilton Manhatten-Chelsea 2', 'https://exp.cdn-hotels.com/hotels/8000000/7370000/7362500/7362466/3ac06817_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(11, 'queen bed Hilton Manhatten-Chelsea 2', 'https://exp.cdn-hotels.com/hotels/8000000/7370000/7362500/7362466/ab625d12_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(12, 'Lake LBJ Inn Queen Bed x2 1', 'https://exp.cdn-hotels.com/hotels/46000000/45480000/45472800/45472709/0305b408_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(13, 'Lake LBJ Inn Queen bed x 2 2', 'https://exp.cdn-hotels.com/hotels/46000000/45480000/45472800/45472709/338dbed3_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `payment_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `card_number` varbinary(255) NOT NULL,
  `exp_date` varchar(5) NOT NULL,
  `CVV` varchar(3) NOT NULL,
  `card_provider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`payment_ID`, `customer_ID`, `card_number`, `exp_date`, `CVV`, `card_provider_id`) VALUES
(1, 17, 0x34343835323136323437333931343833, '05/26', '852', 3),
(2, 18, 0x34353339303038333238383132303537, '05/22', '679', 1),
(3, 12, 0x34343835393736383939333233343435, '05/25', '613', 1),
(4, 11, 0x34393239313837373430313734373036, '09/27', '965', 5),
(5, 16, 0x34323237303336313834383233373235, '04/24', '716', 1),
(6, 7, 0x34353339303433303037393239333238, '01/22', '624', 7),
(7, 13, 0x34353332393034373334363232313838, '07/28', '651', 4),
(8, 10, 0x34303031343337393138393234363139, '11/26', '413', 6),
(9, 15, 0x34393239353336313132343736393638, '12/21', '612', 10),
(10, 14, 0x34303234303037313439303238373632, '10/31', '420', 9),
(11, 8, 0x34343835303338393738303435353631, '01/27', '275', 2),
(12, 12, 0x465134785246, '05/24', '456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `payment_type_ID` int(11) NOT NULL,
  `debit card` tinyint(1) NOT NULL,
  `credit card` tinyint(1) NOT NULL,
  `China UnionPay` tinyint(1) NOT NULL,
  `PayPal` tinyint(1) NOT NULL,
  `Gift Card` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`payment_type_ID`, `debit card`, `credit card`, `China UnionPay`, `PayPal`, `Gift Card`) VALUES
(1, 1, 0, 0, 0, 0),
(2, 0, 1, 0, 0, 0),
(3, 0, 0, 1, 0, 0),
(4, 0, 0, 0, 1, 0),
(5, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `accommodation_ID` int(11) NOT NULL,
  `rating` int(2) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `first_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_ID`, `customer_ID`, `accommodation_ID`, `rating`, `comment`, `date`, `first_name`) VALUES
(1, 12, 1, 10, 'Very nice, clean, & comfortable room. Owner was very pleasant and attentive. I will stay at this motel anytime I am in Kingsland Texas!! ', '2021-07-14', 'Jason'),
(2, 12, 3, 7, 'Nice hotel - could do with better service\r\nRooms were great, with plenty of space and really comfortable beds. Lobby was new and impressive. Service was slow however, especially in the dining facilities. Lifts were awful - extremely slow and too few available for such a busy hotel.', '2021-10-02', 'Jason'),
(3, 10, 1, 8, 'The couple that runs the Inn are so lovely. They have done a lot of remodeling to this cute motel! I absolutely loved my stay!', '2021-11-01', 'Freddy');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `customer_ID` int(11) NOT NULL,
  `reward_points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`customer_ID`, `reward_points`) VALUES
(10, 8),
(7, 9),
(11, 6),
(16, 1),
(17, 3),
(13, 9),
(12, 2),
(18, 5),
(14, 6),
(8, 1),
(15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `accommodation_ID` int(11) DEFAULT NULL,
  `room_type_ID` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `room_number` int(11) DEFAULT NULL,
  `room_size` varchar(255) NOT NULL,
  `number_beds` int(2) NOT NULL,
  `number_guests` int(2) NOT NULL,
  `room_description` text NOT NULL,
  `room_price_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `accommodation_ID`, `room_type_ID`, `room_name`, `room_number`, `room_size`, `number_beds`, `number_guests`, `room_description`, `room_price_ID`) VALUES
(1, 1, 1, 'Basic Room, 1 King Bed, Non Smoking', NULL, 'Sleeps 2 people, area not given', 1, 2, 'Individually decorated room', 1),
(2, 1, 1, 'Basic Room, 1 King Bed, Non Smoking', NULL, 'Sleeps 2 people, area not given\r\n\r\n', 1, 2, 'Individually decorated room\r\n\r\n', 2),
(3, 1, 2, 'Basic Room, 2 Queen Beds, Non Smoking', NULL, '2 queen size beds, no area given', 2, 4, 'Sleeps 4 people, 2 queen size beds', 1),
(4, 2, 2, 'Room, 2 Queen Beds, Non Smoking', NULL, '301 sq feet', 2, 4, '2 Queen Beds\r\n\r\n301 sq feet\r\n\r\nInternet – Free WiFi and wired Internet access\r\n\r\nEntertainment – 32-inch flat-screen TV, premium channels and MP3 dock\r\n\r\nFood & Drink – Fridge, microwave and room service (limited hours)\r\n\r\nSleep – Blackout curtains and bed sheets\r\nBathroom – Private bathroom, bathtub or shower, free toiletries and a hairdryer\r\n\r\nPractical – Iron/ironing board, phone and laptop-compatible safe\r\n\r\nComfort – Air conditioning, daily housekeeping and heating\r\n\r\nAccessibility – Raised toilet seat, low-height work surface and sink, braille signage, grab bar near toilet and wheelchair accessible\r\n\r\nNon-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 5),
(5, 2, 5, 'Room, 2 Queen Beds, Non Smoking, View', NULL, '280 sq foot', 2, 4, '2 Queen Beds\r\n\r\n280-sq-foot room with city views\r\n\r\nInternet – Free WiFi and wired Internet access\r\n\r\nEntertainment – 32-inch flat-screen TV, premium channels and MP3 dock\r\n\r\nFood & Drink – Fridge, microwave and room service (limited hours)\r\n\r\nSleep – Bed sheets\r\nBathroom – Private bathroom, bathtub or shower, free toiletries and a hairdryer\r\n\r\nPractical – Laptop-compatible safe and laptop workspace\r\n\r\nComfort – Air conditioning, daily housekeeping and heating\r\n\r\nAccessibility – Raised toilet seat, low-height work surface and sink, braille signage, grab bar near toilet and wheelchair accessible\r\n\r\nNon-Smoking\r\n\r\nConnecting/adjoining rooms can be requested, subject to availability', 6);

-- --------------------------------------------------------

--
-- Table structure for table `room_available`
--

CREATE TABLE `room_available` (
  `room_availability_ID` int(11) NOT NULL,
  `booking_ID` int(11) DEFAULT NULL,
  `accommodation_ID` int(11) DEFAULT NULL,
  `room_ID` int(11) DEFAULT NULL,
  `room_available` tinyint(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_available`
--

INSERT INTO `room_available` (`room_availability_ID`, `booking_ID`, `accommodation_ID`, `room_ID`, `room_available`, `date`) VALUES
(1, 1, 1, 1, 0, '2021-11-24'),
(2, 1, 1, 1, 0, '2021-11-25'),
(4, 2, 2, 4, 0, '2021-11-24'),
(5, 2, 2, 4, 0, '2021-11-25'),
(7, 3, 1, 2, 0, '2021-11-23'),
(8, 3, 1, 2, 0, '2021-11-24'),
(9, 3, 1, 2, 0, '2021-11-25'),
(11, 5, 2, 5, 0, '2021-12-04'),
(12, 5, 2, 5, 0, '2021-12-05'),
(13, NULL, 2, 5, 1, '2021-11-23'),
(14, NULL, 2, 5, 1, '2021-11-24'),
(15, NULL, 2, 5, 1, '2021-11-25'),
(16, NULL, 2, 5, 1, '2021-11-26'),
(17, NULL, 1, 1, 1, '2021-11-23'),
(18, NULL, 1, 1, 1, '2021-11-26'),
(19, 4, 1, 3, 0, '2021-11-24'),
(20, 4, 1, 3, 0, '2021-11-25'),
(21, 4, 1, 3, 0, '2021-11-26'),
(23, NULL, 2, 4, 1, '2021-11-23'),
(24, NULL, 2, 4, 1, '2021-11-24'),
(25, NULL, 1, 2, 1, '2021-11-26'),
(26, NULL, 1, 3, 1, '2021-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `room_facility`
--

CREATE TABLE `room_facility` (
  `room_facility_ID` int(11) NOT NULL,
  `room_ID` int(11) NOT NULL,
  `facility_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_facility`
--

INSERT INTO `room_facility` (`room_facility_ID`, `room_ID`, `facility_ID`) VALUES
(1, 1, 4),
(2, 1, 3),
(3, 1, 5),
(4, 1, 6),
(5, 1, 7),
(6, 2, 3),
(7, 2, 4),
(8, 2, 5),
(9, 2, 6),
(10, 2, 7),
(11, 3, 3),
(12, 3, 4),
(13, 3, 5),
(14, 3, 6),
(15, 3, 7),
(16, 4, 23),
(17, 4, 25),
(18, 4, 6),
(19, 4, 26),
(20, 4, 27),
(21, 4, 28),
(22, 4, 29),
(23, 5, 24),
(24, 5, 23),
(25, 5, 26),
(26, 5, 25),
(27, 5, 27),
(28, 5, 28),
(29, 5, 29);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `room_image_ID` int(11) NOT NULL,
  `room_ID` int(11) NOT NULL,
  `image_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`room_image_ID`, `room_ID`, `image_ID`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 3, 12),
(8, 3, 13),
(9, 4, 8),
(10, 4, 11),
(11, 5, 8),
(12, 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `room_price`
--

CREATE TABLE `room_price` (
  `room_price_ID` int(11) NOT NULL,
  `peak_price` decimal(10,2) NOT NULL,
  `off_peak_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_price`
--

INSERT INTO `room_price` (`room_price_ID`, `peak_price`, `off_peak_price`) VALUES
(1, '94.00', '74.00'),
(2, '102.00', '82.00'),
(3, '176.00', '156.00'),
(4, '191.00', '171.00'),
(5, '207.00', '187.00'),
(6, '222.00', '202.00');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_ID` int(11) NOT NULL,
  `room_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_ID`, `room_type`) VALUES
(1, 'King Bed x1'),
(2, 'Queen bed x2'),
(3, 'Double bed x2'),
(4, 'King bed x1 (City View)'),
(5, 'Queen bed x2 (City view)');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_ID` int(11) NOT NULL,
  `customer_ID` int(11) DEFAULT NULL,
  `supplier_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_ID`, `customer_ID`, `supplier_name`) VALUES
(1, NULL, 'Hilton Hotels'),
(2, NULL, 'Hastings Group');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessibility`
--
ALTER TABLE `accessibility`
  ADD PRIMARY KEY (`accessibility_ID`);

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`accommodation_ID`),
  ADD KEY `FK_covid_policy_ID_accommodation` (`covid_policy_ID`),
  ADD KEY `FK_supplier_ID_accommodation` (`supplier_ID`),
  ADD KEY `FK_accommodation_address_ID_accommodation` (`accommodation_address_ID`),
  ADD KEY `FK_accommodation_theme_ID_accommodation` (`accommodation_theme_ID`),
  ADD KEY `FK_accommodation_type_ID_accommodation` (`accommodation_type_ID`);

--
-- Indexes for table `accommodation_accessibility`
--
ALTER TABLE `accommodation_accessibility`
  ADD PRIMARY KEY (`accommodation_access_ID`),
  ADD KEY `FK_accessibility_ID_accommodation_accessibility` (`accessibility_ID`),
  ADD KEY `FK_accomodation_ID_accommodation_accessibility` (`accommodation_ID`);

--
-- Indexes for table `accommodation_address`
--
ALTER TABLE `accommodation_address`
  ADD PRIMARY KEY (`accommodation_address_ID`),
  ADD KEY `FK_city_ID_accommodation_address` (`city_ID`);

--
-- Indexes for table `accommodation_facility`
--
ALTER TABLE `accommodation_facility`
  ADD PRIMARY KEY (`accommodation_facility_ID`),
  ADD KEY `FK_accommodation_ID_accommodation_facility` (`accommodation_ID`),
  ADD KEY `FK_facility_ID_accommodation_facility` (`facility_ID`);

--
-- Indexes for table `accommodation_image`
--
ALTER TABLE `accommodation_image`
  ADD PRIMARY KEY (`accommodation_image_ID`),
  ADD KEY `FK_accommodation_ID_accommodation_images` (`accommodation_ID`),
  ADD KEY `FK_images_ID_accommodation_images` (`image_ID`);

--
-- Indexes for table `accommodation_theme`
--
ALTER TABLE `accommodation_theme`
  ADD PRIMARY KEY (`accommodation_theme_id`);

--
-- Indexes for table `accommodation_type`
--
ALTER TABLE `accommodation_type`
  ADD PRIMARY KEY (`accommodation_type_ID`);

--
-- Indexes for table `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`attraction_ID`),
  ADD KEY `FK_city_ID_attraction` (`city_ID`),
  ADD KEY `FK_attraction_type_ID_attraction` (`attraction_type_ID`);

--
-- Indexes for table `attraction_type`
--
ALTER TABLE `attraction_type`
  ADD PRIMARY KEY (`attraction_type_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_ID`),
  ADD KEY `FK_customer_id_booking` (`customer_ID`),
  ADD KEY `FK_booking_payment_id_booking` (`booking_payment_ID`),
  ADD KEY `FK_booking_details_ID_booking` (`booking_details_id`),
  ADD KEY `FK_booking_status_ID_booking` (`booking_status_ID`),
  ADD KEY `FK_room_id_booking` (`room_ID`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`booking_details_ID`);

--
-- Indexes for table `booking_payment`
--
ALTER TABLE `booking_payment`
  ADD PRIMARY KEY (`booking_payment_ID`),
  ADD KEY `FK_payment_type_ID_booking_payment` (`payment_type_ID`),
  ADD KEY `FK_currency_id_booking_payment` (`currency_ID`),
  ADD KEY `FK_payment_ID_booking_payment` (`payment_ID`);

--
-- Indexes for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD PRIMARY KEY (`booking_status_ID`);

--
-- Indexes for table `card_provider`
--
ALTER TABLE `card_provider`
  ADD PRIMARY KEY (`card_provider_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_ID`),
  ADD KEY `FK_country_ID_city` (`country_ID`);

--
-- Indexes for table `communication_preference`
--
ALTER TABLE `communication_preference`
  ADD PRIMARY KEY (`communication_preference_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_ID`);

--
-- Indexes for table `covid_policy`
--
ALTER TABLE `covid_policy`
  ADD PRIMARY KEY (`covid_policy_ID`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_ID`),
  ADD KEY `FK_country_ID_currency` (`country_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FK_communication_preference_ID` (`communication_preference_id`),
  ADD KEY `FK_member_ID` (`member_id`),
  ADD KEY `FK_customer_address_ID` (`customer_address_id`);

--
-- Indexes for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`customer_address_ID`),
  ADD KEY `FK_city_ID_customer_address` (`city_ID`);

--
-- Indexes for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  ADD PRIMARY KEY (`customer_favourite_ID`),
  ADD KEY `FK_customer_ID_favourites` (`customer_ID`),
  ADD KEY `FK_accommodation_ID_favourites` (`accommodation_ID`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`facility_ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_ID`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`payment_ID`),
  ADD KEY `FK_customer_ID_payment_details` (`customer_ID`),
  ADD KEY `FK_card_provider_ID_payment_details` (`card_provider_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`payment_type_ID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_ID`),
  ADD KEY `FK_customer_ID_reviews` (`customer_ID`),
  ADD KEY `FK_accommodation_ID_reviews` (`accommodation_ID`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD KEY `FK_customer_ID_rewards` (`customer_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FK_room_type_ID_room` (`room_type_ID`),
  ADD KEY `FK_room_price_ID_room` (`room_price_ID`),
  ADD KEY `FK_accommodation_ID_room` (`accommodation_ID`);

--
-- Indexes for table `room_available`
--
ALTER TABLE `room_available`
  ADD PRIMARY KEY (`room_availability_ID`),
  ADD KEY `FK_booking_ID_room_availability` (`booking_ID`),
  ADD KEY `FK_room_ID_room_availability` (`room_ID`),
  ADD KEY `FK_accommodation_ID_room_availability` (`accommodation_ID`);

--
-- Indexes for table `room_facility`
--
ALTER TABLE `room_facility`
  ADD PRIMARY KEY (`room_facility_ID`),
  ADD KEY `FK_room_ID_room_facility` (`room_ID`),
  ADD KEY `FK_facility_ID_room_facility` (`facility_ID`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`room_image_ID`),
  ADD KEY `FK_image_ID_room_images` (`image_ID`),
  ADD KEY `FK_room_ID_room_images` (`room_ID`);

--
-- Indexes for table `room_price`
--
ALTER TABLE `room_price`
  ADD PRIMARY KEY (`room_price_ID`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_ID`),
  ADD KEY `FK_customer_ID_supplier` (`customer_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessibility`
--
ALTER TABLE `accessibility`
  MODIFY `accessibility_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `accommodation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accommodation_accessibility`
--
ALTER TABLE `accommodation_accessibility`
  MODIFY `accommodation_access_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `accommodation_address`
--
ALTER TABLE `accommodation_address`
  MODIFY `accommodation_address_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accommodation_facility`
--
ALTER TABLE `accommodation_facility`
  MODIFY `accommodation_facility_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `accommodation_image`
--
ALTER TABLE `accommodation_image`
  MODIFY `accommodation_image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accommodation_theme`
--
ALTER TABLE `accommodation_theme`
  MODIFY `accommodation_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accommodation_type`
--
ALTER TABLE `accommodation_type`
  MODIFY `accommodation_type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attraction`
--
ALTER TABLE `attraction`
  MODIFY `attraction_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attraction_type`
--
ALTER TABLE `attraction_type`
  MODIFY `attraction_type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `booking_details_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_payment`
--
ALTER TABLE `booking_payment`
  MODIFY `booking_payment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_status`
--
ALTER TABLE `booking_status`
  MODIFY `booking_status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `card_provider`
--
ALTER TABLE `card_provider`
  MODIFY `card_provider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `communication_preference`
--
ALTER TABLE `communication_preference`
  MODIFY `communication_preference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `covid_policy`
--
ALTER TABLE `covid_policy`
  MODIFY `covid_policy_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `customer_address_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  MODIFY `customer_favourite_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `facility_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `payment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `payment_type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `room_available`
--
ALTER TABLE `room_available`
  MODIFY `room_availability_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `room_facility`
--
ALTER TABLE `room_facility`
  MODIFY `room_facility_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `room_image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `room_price`
--
ALTER TABLE `room_price`
  MODIFY `room_price_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD CONSTRAINT `FK_accommodation_address_ID_accommodation` FOREIGN KEY (`accommodation_address_ID`) REFERENCES `accommodation_address` (`accommodation_address_ID`),
  ADD CONSTRAINT `FK_accommodation_theme_ID_accommodation` FOREIGN KEY (`accommodation_theme_ID`) REFERENCES `accommodation_theme` (`accommodation_theme_id`),
  ADD CONSTRAINT `FK_accommodation_type_ID_accommodation` FOREIGN KEY (`accommodation_type_ID`) REFERENCES `accommodation_type` (`accommodation_type_ID`),
  ADD CONSTRAINT `FK_covid_policy_ID_accommodation` FOREIGN KEY (`covid_policy_ID`) REFERENCES `covid_policy` (`covid_policy_ID`),
  ADD CONSTRAINT `FK_supplier_ID_accommodation` FOREIGN KEY (`supplier_ID`) REFERENCES `supplier` (`supplier_ID`);

--
-- Constraints for table `accommodation_accessibility`
--
ALTER TABLE `accommodation_accessibility`
  ADD CONSTRAINT `FK_accessibility_ID_accommodation_accessibility` FOREIGN KEY (`accessibility_ID`) REFERENCES `accessibility` (`accessibility_ID`),
  ADD CONSTRAINT `FK_accomodation_ID_accommodation_accessibility` FOREIGN KEY (`accommodation_ID`) REFERENCES `accommodation` (`accommodation_ID`);

--
-- Constraints for table `accommodation_address`
--
ALTER TABLE `accommodation_address`
  ADD CONSTRAINT `FK_city_ID_accommodation_address` FOREIGN KEY (`city_ID`) REFERENCES `city` (`city_ID`);

--
-- Constraints for table `accommodation_facility`
--
ALTER TABLE `accommodation_facility`
  ADD CONSTRAINT `FK_accommodation_ID_accommodation_facility` FOREIGN KEY (`accommodation_ID`) REFERENCES `accommodation` (`accommodation_ID`),
  ADD CONSTRAINT `FK_facility_ID_accommodation_facility` FOREIGN KEY (`facility_ID`) REFERENCES `facility` (`facility_ID`);

--
-- Constraints for table `accommodation_image`
--
ALTER TABLE `accommodation_image`
  ADD CONSTRAINT `FK_accommodation_ID_accommodation_images` FOREIGN KEY (`accommodation_ID`) REFERENCES `accommodation` (`accommodation_ID`),
  ADD CONSTRAINT `FK_images_ID_accommodation_images` FOREIGN KEY (`image_ID`) REFERENCES `images` (`image_ID`);

--
-- Constraints for table `attraction`
--
ALTER TABLE `attraction`
  ADD CONSTRAINT `FK_attraction_type_ID_attraction` FOREIGN KEY (`attraction_type_ID`) REFERENCES `attraction_type` (`attraction_type_ID`),
  ADD CONSTRAINT `FK_city_ID_attraction` FOREIGN KEY (`city_ID`) REFERENCES `city` (`city_ID`) ON DELETE CASCADE;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking_details_ID_booking` FOREIGN KEY (`booking_details_id`) REFERENCES `booking_details` (`booking_details_ID`),
  ADD CONSTRAINT `FK_booking_payment_id_booking` FOREIGN KEY (`booking_payment_ID`) REFERENCES `booking_payment` (`booking_payment_ID`),
  ADD CONSTRAINT `FK_booking_status_ID_booking` FOREIGN KEY (`booking_status_ID`) REFERENCES `booking_status` (`booking_status_ID`),
  ADD CONSTRAINT `FK_customer_id_booking` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `FK_room_id_booking` FOREIGN KEY (`room_ID`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `booking_payment`
--
ALTER TABLE `booking_payment`
  ADD CONSTRAINT `FK_currency_id_booking_payment` FOREIGN KEY (`currency_ID`) REFERENCES `currency` (`currency_ID`),
  ADD CONSTRAINT `FK_payment_ID_booking_payment` FOREIGN KEY (`payment_ID`) REFERENCES `payment_details` (`payment_ID`),
  ADD CONSTRAINT `FK_payment_type_ID_booking_payment` FOREIGN KEY (`payment_type_ID`) REFERENCES `payment_type` (`payment_type_ID`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_country_ID_city` FOREIGN KEY (`country_ID`) REFERENCES `country` (`country_ID`);

--
-- Constraints for table `currency`
--
ALTER TABLE `currency`
  ADD CONSTRAINT `FK_country_ID_currency` FOREIGN KEY (`country_ID`) REFERENCES `country` (`country_ID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_communication_preference_ID` FOREIGN KEY (`communication_preference_id`) REFERENCES `communication_preference` (`communication_preference_id`),
  ADD CONSTRAINT `FK_customer_address_ID` FOREIGN KEY (`customer_address_id`) REFERENCES `customer_address` (`customer_address_ID`),
  ADD CONSTRAINT `FK_member_ID` FOREIGN KEY (`member_id`) REFERENCES `customer_account` (`member_id`);

--
-- Constraints for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `FK_city_ID_customer_address` FOREIGN KEY (`city_ID`) REFERENCES `city` (`city_ID`);

--
-- Constraints for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  ADD CONSTRAINT `FK_accommodation_ID_favourites` FOREIGN KEY (`accommodation_ID`) REFERENCES `accommodation` (`accommodation_ID`),
  ADD CONSTRAINT `FK_customer_ID_favourites` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `FK_card_provider_ID_payment_details` FOREIGN KEY (`card_provider_id`) REFERENCES `card_provider` (`card_provider_id`),
  ADD CONSTRAINT `FK_customer_ID_payment_details` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK_accommodation_ID_reviews` FOREIGN KEY (`accommodation_ID`) REFERENCES `accommodation` (`accommodation_ID`),
  ADD CONSTRAINT `FK_customer_ID_reviews` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `rewards`
--
ALTER TABLE `rewards`
  ADD CONSTRAINT `FK_customer_ID_rewards` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_accommodation_ID_room` FOREIGN KEY (`accommodation_ID`) REFERENCES `accommodation` (`accommodation_ID`),
  ADD CONSTRAINT `FK_room_price_ID_room` FOREIGN KEY (`room_price_ID`) REFERENCES `room_price` (`room_price_ID`),
  ADD CONSTRAINT `FK_room_type_ID_room` FOREIGN KEY (`room_type_ID`) REFERENCES `room_type` (`room_type_ID`);

--
-- Constraints for table `room_available`
--
ALTER TABLE `room_available`
  ADD CONSTRAINT `FK_accommodation_ID_room_availability` FOREIGN KEY (`accommodation_ID`) REFERENCES `accommodation` (`accommodation_ID`),
  ADD CONSTRAINT `FK_booking_ID_room_availability` FOREIGN KEY (`booking_ID`) REFERENCES `booking` (`booking_ID`),
  ADD CONSTRAINT `FK_room_ID_room_availability` FOREIGN KEY (`room_ID`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_facility`
--
ALTER TABLE `room_facility`
  ADD CONSTRAINT `FK_facility_ID_room_facility` FOREIGN KEY (`facility_ID`) REFERENCES `facility` (`facility_ID`),
  ADD CONSTRAINT `FK_room_ID_room_facility` FOREIGN KEY (`room_ID`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `FK_image_ID_room_images` FOREIGN KEY (`image_ID`) REFERENCES `images` (`image_ID`),
  ADD CONSTRAINT `FK_room_ID_room_images` FOREIGN KEY (`room_ID`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `FK_customer_ID_supplier` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
