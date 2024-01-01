-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 05:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `receptions`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_quotes`
--

CREATE TABLE `app_quotes` (
  `AppQuotesId` int(100) NOT NULL,
  `AppQuoteName` longtext NOT NULL,
  `AppQuoteDate` varchar(25) NOT NULL,
  `AppQuoteStatus` varchar(10) NOT NULL,
  `AppQuotesCreatedBy` int(10) NOT NULL,
  `AppQuotesCreatedAt` varchar(25) NOT NULL,
  `AppQuotesUpdatedAt` varchar(25) NOT NULL,
  `AppQuotesUpdatedBy` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_quotes`
--

INSERT INTO `app_quotes` (`AppQuotesId`, `AppQuoteName`, `AppQuoteDate`, `AppQuoteStatus`, `AppQuotesCreatedBy`, `AppQuotesCreatedAt`, `AppQuotesUpdatedAt`, `AppQuotesUpdatedBy`) VALUES
(1, 'Z3UwQjZ4aThMaVVsRmFUUFAzMm5MWGgxSW92eDhCa2VwY1dVZEptZ1c2TT0=', '2023-10-25', 'Active', 1, '2023-10-25 12:59:10 PM', '2023-10-25 12:59:10 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `AssetsId` int(100) NOT NULL,
  `AssetName` varchar(1000) NOT NULL,
  `AssetsImage` varchar(1000) NOT NULL,
  `AssetCategory` varchar(100) NOT NULL,
  `AssetModalNo` varchar(100) NOT NULL,
  `AssetSerialNo` varchar(100) NOT NULL,
  `AssetsCost` int(10) NOT NULL,
  `AssetPurchaseDate` varchar(40) NOT NULL,
  `AssetsDescription` varchar(1000) NOT NULL,
  `AssetsCreatedAt` varchar(40) NOT NULL,
  `AssetsUpdatedAt` varchar(40) NOT NULL,
  `AssetsCreatedBy` varchar(40) NOT NULL,
  `AssetsUpdatedBy` varchar(40) NOT NULL,
  `AssetsPurchaseReceipts` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`AssetsId`, `AssetName`, `AssetsImage`, `AssetCategory`, `AssetModalNo`, `AssetSerialNo`, `AssetsCost`, `AssetPurchaseDate`, `AssetsDescription`, `AssetsCreatedAt`, `AssetsUpdatedAt`, `AssetsCreatedBy`, `AssetsUpdatedBy`, `AssetsPurchaseReceipts`) VALUES
(1, 'Laptop', '', 'HP', 'HP ProBook', '50062590X', 35000, '2023-09-07', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-09-07 04:39:00 PM', '2023-09-07 04:39:00 PM', '148', '148', '');

-- --------------------------------------------------------

--
-- Table structure for table `assets_issued`
--

CREATE TABLE `assets_issued` (
  `AssetsMoveId` int(10) NOT NULL,
  `AssetsMainId` int(10) NOT NULL,
  `AssetsIssuedTo` int(10) NOT NULL,
  `AssetsIssueDate` varchar(20) NOT NULL,
  `AssetsIssueNotes` varchar(255) NOT NULL,
  `AssetsIssuedBy` int(10) NOT NULL,
  `AssetsIssueCreatedAt` varchar(20) NOT NULL,
  `AssetsIssueUpdatedAt` varchar(20) NOT NULL,
  `AssetsIssueStatus` varchar(100) NOT NULL,
  `AssetsIssueReturnedDate` varchar(100) NOT NULL,
  `AssetsIssueReturedTo` varchar(100) NOT NULL,
  `AssetsIssueReturnNotes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets_returned`
--

CREATE TABLE `assets_returned` (
  `AssetsReturnedId` int(10) NOT NULL,
  `AssetsMainId` int(10) NOT NULL,
  `AssetsReturnedBy` int(10) NOT NULL,
  `AssetsReturnedDate` varchar(20) NOT NULL,
  `AssetsReturnedNotes` varchar(255) NOT NULL,
  `AssetsReturnReceiveBy` int(10) NOT NULL,
  `AssetsReturnCreatedAt` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookingId` int(10) NOT NULL,
  `BookingAckCode` varchar(100) NOT NULL,
  `BookingCustomerName` varchar(100) NOT NULL,
  `BookingCustomerPhone` varchar(100) NOT NULL,
  `BookingForProject` varchar(100) NOT NULL,
  `BookingProjectPhase` varchar(100) NOT NULL,
  `BookingAmount` varchar(10) NOT NULL,
  `BookingPaymentMode` varchar(100) NOT NULL,
  `BookingPaymentSource` varchar(100) NOT NULL,
  `BookingPaymentRefNo` varchar(100) NOT NULL,
  `BookingPaymentDetails` varchar(100) NOT NULL,
  `BookingDate` varchar(100) NOT NULL,
  `BookingNotes` varchar(1000) NOT NULL,
  `BookingCreatedAt` varchar(40) NOT NULL,
  `BookingUpdatedAt` varchar(40) NOT NULL,
  `BookingCreatedBy` varchar(10) NOT NULL,
  `BookingTeamHeadId` varchar(10) NOT NULL,
  `BookingDirectSalePersonId` varchar(10) NOT NULL DEFAULT '1',
  `BookingBusinessHead` varchar(100) NOT NULL,
  `BookingStatus` varchar(100) NOT NULL,
  `BookingUpdatedBy` varchar(10) NOT NULL,
  `BookingMainCustomerId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_refunds`
--

CREATE TABLE `booking_refunds` (
  `BookingRefundId` int(10) NOT NULL,
  `BookingMainId` int(10) NOT NULL,
  `BookingRefundMode` varchar(100) NOT NULL,
  `BookingRefundSource` varchar(100) NOT NULL,
  `BookingRefundRefNo` varchar(100) NOT NULL,
  `BookingRefundDetails` varchar(10000) NOT NULL,
  `BookingRefundedTo` varchar(100) NOT NULL,
  `BookingRefundDate` varchar(50) NOT NULL,
  `BookingRefundCreatedAt` varchar(50) NOT NULL,
  `BookingRefundUpdatedAt` varchar(50) NOT NULL,
  `BookingRefundBy` int(10) NOT NULL,
  `BookingRefundAmount` varchar(100) NOT NULL,
  `BookingRefundApproxClearingDate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_refund_documents`
--

CREATE TABLE `booking_refund_documents` (
  `BookingRefundDocId` int(10) NOT NULL,
  `BookingRefundMainId` varchar(10) NOT NULL,
  `BookingRefundDocName` varchar(100) NOT NULL,
  `BookingRefundDocFile` varchar(1000) NOT NULL,
  `BookingRefundDocUploadedAt` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `ChatId` int(100) NOT NULL,
  `ChatRefId` varchar(100) NOT NULL,
  `ChatMainSenderId` varchar(10) NOT NULL,
  `ChatMainReceiverId` varchar(10) NOT NULL,
  `ChatOpenedAt` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_attachements`
--

CREATE TABLE `chat_attachements` (
  `ChatAttachId` int(10) NOT NULL,
  `ChatMsgMainId` int(10) NOT NULL,
  `ChatAttachedFile` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `ChatMessageId` int(10) NOT NULL,
  `ChatMainId` int(100) NOT NULL,
  `ChatMsgSenderId` varchar(10) NOT NULL,
  `ChatMsgReceiverId` varchar(10) NOT NULL,
  `ChatMessageDetails` longtext NOT NULL,
  `ChatMessageSentAt` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `circulars`
--

CREATE TABLE `circulars` (
  `CircularId` int(10) NOT NULL,
  `CircularName` varchar(100) NOT NULL,
  `CircularSubject` varchar(200) NOT NULL,
  `CircularDescriptions` longtext NOT NULL,
  `CircularCreatedBy` varchar(10) NOT NULL,
  `CircularUpdatedAt` varchar(40) NOT NULL,
  `CircularCreatedAt` varchar(40) NOT NULL,
  `CircularDate` varchar(40) NOT NULL,
  `CircularStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circulars`
--

INSERT INTO `circulars` (`CircularId`, `CircularName`, `CircularSubject`, `CircularDescriptions`, `CircularCreatedBy`, `CircularUpdatedAt`, `CircularCreatedAt`, `CircularDate`, `CircularStatus`) VALUES
(1, 'Project training ', 'Project Training ', 'cWIzVjJtQnNLZTFUemFnNkx6SHd3a1o3NCtJbkc2T0MvdFVxcVJjS0xxUHIwcW9GS0tZQk9VV1N0emMwWUpRLw==', '4', '2023-03-28 04:10:26 PM', '2023-03-28 04:06:07 PM', '2023-03-28', 'Send'),
(2, 'Monday is Working Day', 'Monday will be Open i.e. 14 Aug 2023', 'VDBJa3Z4a2p1VERtVXlmQkhBT244a3BzdDNacWhHQ25nSHhyaXNLbmR3a0N5Y3ZVZkVCdE9GNjlEZEJST1VpSm1uRVRoYkpQM1ZWUXE2bGZmQ0t4cHBEUlRGeCtMZytpY3hTeUttcGVmWUxnbmEyd1RCTzQ3cXc1V25sdHhRVWhzNUc4YlpDNk8zalhSYUZjdW5ZZ29TcEluY3dqeHlmclA2M3QrMTRmVHdhSkdTeDZkb3pQTUVScEZPY2FyaFR6R1kwWUJwTlNSNW5uZFEwanBEck9wL3FSbzU0eWxwOXpSbk9Lb1Z4ZU1weWR1S1U1RXMxZzVHZVg1aHVRWCtLTDV0bFR3OXN2ay9rRzRFQ21NNGwwL3c9PQ==', '1', '2023-08-13 10:11:03 am', '2023-08-12 07:13:05 pm', '2023-08-12', 'Null'),
(3, 'Project Training ', 'Project Training ', 'TFJLaHdXVVpnRGtnNjF4WUVyM21kQTVrNUViVTdjZUxsRlBPY1ExbUIzVUxicDZXbFFlM0twZmNpc0hnNFYwY1hhNm1UZFR1aFVKTGduN2Q4Z0xialQvYWNRSG5UZ1ZsanV0U2x1bVFHUkhRYVZHZmF6UFNvNUNWNWl1c0FoSE91LzYwRDF3ZWFoQXpnQ3dJSG5YSTEwWXljTENMWEZMSkh4dklrT1VTVHo1OXhrQXdLWkRlODNhSk9EUitId0JyM3ZzYTdSRHV4QlpKZFhvVG5RWUdIMkRpdXlMQXNJcVdaYlhGM3ZWRklGTzc2RWFuVDVCTmlUdnFTeTR0Z3p4OVZZUmZBUjlGQ3N1RDdFc00rRTB4bUZKSVRWZ0I1OGw1WGxqVVY3SzV5TnBHRE55SVBwekRBZDNYR3pucU9aQVpSQUNrK055amFra2kxbGJoUDV1Ri94LzlQbWZaODE1bUhZdklUSUtzTjJIK28zMmpTT1c0MEFzREJ3VHIva0ZQTVZWSUh3aVNlcnQ0TmduYWFrRmNmZVJqSDM2ZUZnbzFDOHpUKytnbFIwdTRSRVVvM3J3d2NCUVpSTFlSWnM1MA==', '1', '2023-08-13 01:36:39 pm', '2023-08-13 01:36:39 pm', '2023-08-13', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `circular_files`
--

CREATE TABLE `circular_files` (
  `CircularFileId` int(10) NOT NULL,
  `CircularMainId` varchar(10) NOT NULL,
  `CircularDocumentName` varchar(1000) NOT NULL,
  `CircularDocumentFile` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `circular_status`
--

CREATE TABLE `circular_status` (
  `CircularStatusId` int(10) NOT NULL,
  `CircularMainId` int(10) NOT NULL,
  `CircularMainUserId` int(10) NOT NULL,
  `CircularViewAt` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circular_status`
--

INSERT INTO `circular_status` (`CircularStatusId`, `CircularMainId`, `CircularMainUserId`, `CircularViewAt`) VALUES
(1, 1, 80, '2023-03-31 01:00:36 PM'),
(2, 1, 14, '2023-04-01 10:48:52 AM'),
(3, 1, 4, '2023-04-01 04:27:58 PM'),
(4, 1, 77, '2023-04-05 03:20:46 PM'),
(5, 1, 16, '2023-04-07 10:21:27 AM'),
(6, 1, 111, '2023-04-12 06:02:38 PM'),
(7, 1, 21, '2023-04-18 02:39:13 pm'),
(8, 1, 84, '2023-04-21 11:11:02 am'),
(9, 1, 1, '2023-04-23 02:21:10 pm'),
(10, 1, 114, '2023-04-30 12:01:37 pm'),
(11, 1, 13, '2023-05-06 05:25:57 pm'),
(12, 1, 101, '2023-05-19 05:42:00 pm'),
(13, 1, 125, '2023-06-23 11:27:53 am'),
(14, 1, 30, '2023-07-11 11:50:01 am'),
(15, 1, 138, '2023-07-22 02:24:43 pm'),
(16, 1, 140, '2023-08-02 11:52:32 am'),
(17, 1, 11, '2023-08-04 01:09:10 pm'),
(18, 2, 13, '2023-08-13 12:03:45 pm'),
(19, 2, 14, '2023-08-13 12:16:46 pm'),
(20, 3, 13, '2023-08-13 03:49:21 pm'),
(21, 2, 80, '2023-08-13 05:06:41 pm'),
(22, 3, 80, '2023-08-13 05:07:04 pm'),
(23, 3, 101, '2023-08-14 09:37:35 am'),
(24, 2, 101, '2023-08-14 09:37:43 am'),
(25, 3, 14, '2023-08-14 10:15:14 am'),
(26, 2, 30, '2023-08-14 10:31:01 am'),
(27, 3, 30, '2023-08-14 10:31:21 am'),
(28, 2, 136, '2023-08-17 05:00:56 pm'),
(29, 1, 136, '2023-08-17 05:01:11 pm'),
(30, 3, 136, '2023-08-17 05:01:28 pm'),
(31, 3, 11, '2023-08-25 11:19:14 am'),
(32, 2, 11, '2023-08-25 11:19:31 am'),
(33, 3, 91, '2023-08-28 05:33:01 pm'),
(34, 2, 91, '2023-09-14 12:11:04 PM'),
(35, 1, 91, '2023-09-14 12:11:18 PM'),
(36, 3, 20, '2023-09-16 11:07:43 AM'),
(37, 2, 20, '2023-09-16 11:07:59 AM'),
(38, 1, 20, '2023-09-16 11:08:05 AM'),
(39, 3, 17, '2023-09-22 11:48:12 AM'),
(40, 2, 17, '2023-09-22 11:48:17 AM'),
(41, 1, 17, '2023-09-22 11:48:21 AM'),
(42, 3, 108, '2023-09-22 12:46:09 PM'),
(43, 2, 108, '2023-09-22 12:46:16 PM'),
(44, 1, 108, '2023-09-22 12:46:24 PM'),
(45, 3, 149, '2023-09-30 05:51:51 PM'),
(46, 2, 149, '2023-09-30 05:51:58 PM'),
(47, 1, 149, '2023-09-30 05:52:05 PM'),
(48, 3, 176, '2023-10-03 11:18:34 AM'),
(49, 1, 176, '2023-10-03 11:18:47 AM'),
(50, 3, 154, '2023-10-06 06:15:43 PM');

-- --------------------------------------------------------

--
-- Table structure for table `comaigns`
--

CREATE TABLE `comaigns` (
  `ComaignId` int(100) NOT NULL,
  `CompaignName` varchar(100) NOT NULL,
  `CompaignDate` varchar(40) NOT NULL,
  `SourceOfCompaign` varchar(100) NOT NULL,
  `ProjectName` varchar(100) NOT NULL,
  `ProjectLocation` varchar(100) NOT NULL,
  `NumberOfLeads` varchar(100) NOT NULL,
  `CompaignCPL` varchar(100) NOT NULL,
  `CompaignForUserId` varchar(100) NOT NULL,
  `CompaignAmountSpent` varchar(100) NOT NULL,
  `CompaingDescription` varchar(1000) NOT NULL,
  `CompaignCreatedAt` varchar(40) NOT NULL,
  `CompaginUpdatedAt` varchar(40) NOT NULL,
  `CompaignStatus` varchar(10) NOT NULL,
  `CompaingAddedBy` varchar(100) NOT NULL,
  `CompaingUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_policies`
--

CREATE TABLE `company_policies` (
  `PolicyId` int(10) NOT NULL,
  `PolicyName` varchar(100) NOT NULL,
  `PolicyDetails` longtext NOT NULL,
  `PolicyActiveFrom` varchar(40) NOT NULL,
  `PolicyCreatedAt` varchar(40) NOT NULL,
  `PolicyUpdatedAt` varchar(40) NOT NULL,
  `PolicyCreatedBy` varchar(40) NOT NULL,
  `PolicyUpdatedBy` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_policies`
--

INSERT INTO `company_policies` (`PolicyId`, `PolicyName`, `PolicyDetails`, `PolicyActiveFrom`, `PolicyCreatedAt`, `PolicyUpdatedAt`, `PolicyCreatedBy`, `PolicyUpdatedBy`) VALUES
(2, 'Leave Policy', 'ekpuaW9xWXFZSSt2L1IrZFlCSllwYjJobWk4UlNhNnR1eWhOc0ZxbHkxND0=', '2022-12-28', '2022-12-28 03:12:02 PM', '2023-02-24 06:27:50 PM', '4', '4'),
(3, 'Medical Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS000QjZHVlVESlVXQkZZb3VQMUNOa0hmaE9GZGVXL1lTbkFKWGZJQVdacUlSc1lFMDJQd3Q4eWtqNjJtQjhBdnBIZUg2M1JVUFRtSHlQK2JXRjJRZ1ZWRm8zcmFPN2FOQlROY3F2Q2lFcTU2', '2022-12-28', '2022-12-28 04:12:42 PM', '2022-12-28 04:12:07 PM', '4', '4'),
(4, 'Health &amp; safty Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS000QjZHVlVESlVXQkZZb3VQMUNOa0hmaE9GZGVXL1lTbkFKWGZJQVdacUlLWit1SklDZDZOZ1RGTXczYmRIYXBCWUNDMjBQb2tqeWdkWjI3UmRKcGl6ck1OMWxtZGVpQ01OY1FsUUlJYWN1', '2022-12-28', '2022-12-28 04:12:56 PM', '2023-02-24 06:28:01 PM', '4', '4'),
(5, 'Break Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBiVEpab2poL3BlRkMvczJVNFpBS1NxalRlQ1p3U083b3hhSHkrN1g2KzdoYjQrTk44b2tWTDBLdWFUckg3UjlLV3ZVYlY1VmVkWVd5aWpIK2hYOWpKaGpDcmRpVWMxcDJZSENnTWk3KzRLUUswd2pYdXIxTDY2a2kwN3NyOWtvUjZBUTR4ZVl5U1ROdjlMYThmZGg1QkFWUGRQU1FpQXFHQUlEeEduanY4WW5YQStGMTFGaHVxYjQ0VXZ2MzhvcVIrV1ZsZElwQ0U3cGkwZWJmVjVkMlhBPT0=', '2022-12-28', '2022-12-28 04:12:19 PM', '2022-12-28 04:12:19 PM', '4', '4'),
(6, 'Time Off work Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHB5eldjNUx6dStmanFEbWl6V2NkN0piNEtQZ216TlFUM283em5zbWNTeWY5dDM2RVdQTGNrQm1jbFFNMGlOTmNwRGtwVEhUN1BKL2VhNUllSElvdzFmaDRqb3R4WlhNazlSNWVBbXdqa0JJN3R5azRmV1RvVEdxSE44MXdubm5PWk9DWm5LSDN1bEY0VitnRU85QXNjT3BjR2ZScU5sWjJUMjFnVHNJUmRNdzY5bzFMazlsYjNWWk8rNStCMlVoUkNGZy92WVhqZ0UxdHdSSC8zdjdrMC9PeHVPc0xaSzFHSzUrdmdwK0NZRkdVPQ==', '2022-12-28', '2022-12-28 04:12:31 PM', '2022-12-28 04:12:31 PM', '4', '4'),
(7, 'On Duty Work Policy', 'bTRvTUo3WTU0OWd6dEl0RDRIdWs4VENoVnNJQ1kyb1d2RWhpYXk4MkxWZz0=', '2022-12-28', '2022-12-28 04:12:02 PM', '2022-12-28 04:12:02 PM', '4', '4'),
(8, 'Termination of employment policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBaSDIxWlgxZnBQd2VCY1R0YmdNRkxrM05UdGdmU2tnbHpSS1dUb0ZWdkFDQjNUR3gzcWs2aUNqNU5wamlJZ1JRWkg3NGtOMUQ4ZzcybUlBd0RMNlkyQm5CREtZMmM2Uml6ZFlUQWhOaTF4VWt2TktTOVhBQnArUVF4VERzZldBQjJ3enJlNllmb05WTG9mV2owVmdlQ3Q3WFhsaXFsNmdpdytwV2lNZHZLZDdHY1M2djdYeDl3VFd1UXpmUkhUcXZXSEZUeHA2ampDT3JQd3I5QStqaG92YjB2R290czNoeGVoTlo1MFBqQ05Db2RsNTgxWGdLU240dVh3SnR0emVwM3cxK2lnZFRTL3lDNnZiTTZnKzR0Zz09', '2022-12-28', '2022-12-28 04:12:16 PM', '2022-12-28 04:12:16 PM', '4', '4'),
(9, 'Dress Code Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBMU1l6cStCZFUxeUV5bDI0Rnorb1NGQWZMRzJtc3htSmRZS1pzTit2NGxJMEJ6M0hQTC9SbEZCd2hPcG1wYUt5MmlUcUlkcUUrVm5sVGR2ZU0zbXVxbVJkdXYwaWxzUGdQQUlVaVVoRXFOSnlMRURnaFRETFRxMWVGK2xxTWpxaXpkdmxIZVJxcEwzN3cvWDRyb3h2S1N2dTlmOXA4ZS9xU2tFZHhud05Gb3JyanluM2d4bnQ5dVJaNVFuMUJidjd1OTJEeUpjTDUwR2IvdDhzV2JCUkFXU25ObGFxaExFck5ZSVFKeDJnK2JZPQ==', '2022-12-28', '2022-12-28 04:12:27 PM', '2022-12-28 04:12:27 PM', '4', '4'),
(10, 'probation and Confirmantion Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBObFpoWkJaQjN6bkpTTFhJOW5HaGI5Y09XRWw0dDl0dExLeTI4d2gwbXZEbjkvdCs3dG1TRTl1b21vQ3ZrQW0zL1pvaFdZTHlrUzJ2RzRwL1VVV2tuemdvckttaDRQQkdVWFc2QkdOd2Z3WldYZHRSTHV2Y2lWaW4wclJNUWkrTUxxT0syVnMxL0dwWXg5U3NIdmlKNldaRzdVakxQVGEwMVYyUlJRbm9ieHBVQk5JOElnSTd0MTkzUEczN2RNdlpoc1ZFRyswUHJZNy9mYXNzOG1qSzF2MXFlMmxCeWdaNW13ZXFRQTV3NDlNTHRZajl0bWx3MmE4Q3VnSDg2UVF6SHpjam5iZnpwSW8rK1FpMmFnNlY4QT09', '2022-12-28', '2022-12-28 04:12:38 PM', '2022-12-28 04:12:38 PM', '4', '4'),
(11, 'Gravience Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBVcU9jRVI2SXYzQlo0cjArUHpPOFlYMTl5NDg0UFVCY1NDTTE2dnpSWVpKV2o1WG1Od1lhVTErbjlkR2JMLzV2OVNoemhWRnZpM2poV1JaUmY3RkxhSnRFazFYNXp5SlZRWmVyTWZncHJLY2w2cEZ0MDhBQXA0djZJY1J1NGd6MS8wWWo4UzlaZ2ZGSDFXbVhuY3BBQ0ZhSkxUdktuVVROQjdoZ3hjdVdvZVVsZjBzQ1lkTkxPN2ZFQTZ3MHVDTTRHNWtnNUg5OUR1M2RkRHlKenlsbVlqSkhFeVpPZ255V2VXL1ZIWWI4NjFrPQ==', '2022-12-28', '2022-12-28 04:12:33 PM', '2022-12-28 04:12:33 PM', '4', '4'),
(12, 'Award and recognization Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBJK0k2eE53Q3BkVnhPL0RZQnRCWU54UitBQXpQdEw1ZzZkOGRtTGEwVmtHM0cwOXpsa3VGYi9UdmprRUpjamRFSXVaUDc4ZFhKZGJxLy9sL0p0bzcwTmMwYXVjcjZvOVExU2xadnVEWjUxZEd2a0RMTnpPMUNZNjFQRDNrMGJvdXBwYjlxMXJOaW5GRjl5SmFRT3E3eDU2V1kyUDBZOGFhdXJxdS92VjdLdzFqcGtQYnR3Vko1UVNJdlBvejZoTElrdU9hNGpqRHV5eHh5K1Z3QmorYUp1bTVaNWpPUnB5S1NCcEwwSGFJNFU4MnBxSlU1UlRjUEhiSHE0M0dzZ05o', '2022-12-28', '2022-12-28 04:12:55 PM', '2022-12-28 04:12:55 PM', '4', '4'),
(13, 'Travel Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHBuV3prWkVpZXVCWDZpKzdlK2tsREsyTWlpNjhzTEhlNXd6NVpyZkdENjBOSHoyS1hQMWJkdWxPeGR1bkVmNUZINTN6VStEeDJxTFRrUlY2Ujd2aUc4eFJpWWQ0WE1PVUlEeXhrMlRSb2p6eTV2aHAwbWxJZ0FWSVlXQTc4QmFOaWhZdFE3M1Npb045ZGF1NDhJVUx0TlFRUUdqOU0vOVFncVEvRkFWUVh1RXNRaHFtRFFpR1lyVGk5V09PeGE0czMyWnR0WTRTWHVNR2VibUJ6L2UrNThnPT0=', '2022-12-28', '2022-12-28 04:12:04 PM', '2022-12-28 04:12:04 PM', '4', '4'),
(14, 'Sexual harrasment in the work Policy', 'bmp0ZXRiMExnb2xFQjdVd1F2bElreWh2dG9OSDRpKzN0WXBNd2tDeHcvVFdyUWRhZkF6SVZDR1R6YWFPcFZhdldTUTcrTzdkQ0tjYk9NQWlKOWxIS0JYSm1PUW9ubUlQOUZrTEtyZVA4K2taazI3dm81NmtxY09vc0NWME5xWHAxVG9QUkVpcEhSYm1icEkvMTlycjRnUmN6MWZLZGQzUjY3N0tIZmRUc2RhUkZnMDd3UUhBT3piMi83VVlaSXNzaFdMM2tPeUZXOGhETDA3MWkyanpPRHA0S1JxNWZ4a0RNUHIybnM0RW1PbmpXUkg4SlE3VFpjbnNXNzRDS1lDSjZlb3F0ZjF3MVJwcXpDcVB4dzdPam1CNFVSQzZwaTUwQ01LVmlZUXZuS20raWNiSGk1bXoxb0dwbzVQbUJzdFBOMC9YWkcvSzNGc3phZXEvREkwZHN3QU1IUWVBNzVyR3BLWDBZM2l4bERkWDdDN1luQjJvdy9yYjJhVmp4N3p5c0pIZ0UxNWlZd0h5SUlPWUVLVis1dz09', '2022-12-28', '2022-12-28 04:12:19 PM', '2022-12-28 04:12:19 PM', '4', '4'),
(15, 'Code Of Conduct Policy ', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-28', '2022-12-28 04:12:31 PM', '2022-12-28 04:12:31 PM', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `company_policy_applicable_on`
--

CREATE TABLE `company_policy_applicable_on` (
  `ApplicableId` int(100) NOT NULL,
  `PolicyMainId` varchar(100) NOT NULL,
  `ApplicableGroupName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_policy_applicable_on`
--

INSERT INTO `company_policy_applicable_on` (`ApplicableId`, `PolicyMainId`, `ApplicableGroupName`) VALUES
(16, '3', 'Admin'),
(17, '3', 'TeamMember'),
(18, '3', 'HR'),
(19, '3', 'Account'),
(20, '3', 'Digital'),
(21, '2', 'Admin'),
(22, '2', 'TeamMember'),
(23, '2', 'HR'),
(24, '2', 'Digital');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `ConfigsId` int(100) NOT NULL,
  `ConfigGroupName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`ConfigsId`, `ConfigGroupName`) VALUES
(1, 'WORK_GROUP'),
(2, 'LEAD_STAGES'),
(5, 'PROJECT_TYPES'),
(6, 'LEAD_PERIORITY_LEVEL'),
(7, 'CALL_STATUS'),
(9, 'LEAD_SOURCES'),
(10, 'CALL_STATUS_SUB_FIELDS'),
(11, 'VISITOR_TYPES'),
(12, 'VISITOR_STATUS');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `configurationsid` int(100) NOT NULL,
  `configurationname` varchar(50) NOT NULL,
  `configurationvalue` varchar(9999) NOT NULL,
  `configurationtype` varchar(30) NOT NULL DEFAULT 'text',
  `configurationsupportivetext` varchar(1000) NOT NULL DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`configurationsid`, `configurationname`, `configurationvalue`, `configurationtype`, `configurationsupportivetext`) VALUES
(1, 'APP_NAME', 'APNA REAL ESTATE', 'TEXT', 'null'),
(2, 'TAGLINE', 'LEADS 365', 'text', 'null'),
(3, 'OWNER_NAME', 'Navix Consultancy Services', 'text', 'null'),
(4, 'PRIMARY_PHONE', '8447572565', 'phone', 'null'),
(5, 'PRIMARY_EMAIL', 'info@roofandassets.com', 'email', 'null'),
(6, 'SHORT_DESCRIPTION', 'bVVObWhBaDNwYnZoTzdBamdKM1Q0Z2ZjNldvTmpWTWtqRFQyazNZUTE2cz0=', 'text', 'null'),
(7, 'PRIMARY_ADDRESS', 'N2w0bUJSKzBzK0RlemZpM2VPMExUUWFSMmJCTFJKb1EvUWxLUHU5UWk2SUtpRk1CditrbldtTXY2NGNaYkhBVEdmVlJOK1V1UmlQNGNLSWZNNlBpeDduWDB5a3hRRDBmQXhsSjU2MzRaYndERjdiSnZ1V1BwVWpXV1N2SkV3ZlptNFdVTDA1eEQ0UkFxdnE2R3NCc0F3PT0=', 'address', 'null'),
(8, 'PRIMARY_MAP_LOCATION_LINK', 'M3N6cEE1V0syMjBKWE9JamJ0d2dERVk0aGNLSGw4cW5SUjYyKzY1NWNvQzVtcmZuc1JkVS81dTRsbFZCaGFuU0ZTVDZ2N1hMNDVuVzNoV3ROaEErZGJRa2hzV2FJbDVjREpGZFo2OUZ0R0pKbnlkNUtuZzFVLzRqdmwycWhnYlZWd0ZGUThnMHA5VE9TdnYwYnpSblZSenlDbUJjNVdFc0xaZEd2Mng5NVBqVnlTYThjZitzaE5ZL04vdU4wdTZnQk1rS3FORnJhYVo5QVBTbzJHczhIaEJTcVgzMStoOHpDM1prRURkV0Z0UFJPMkcyalQ4Mit1Uk5tRWJYUzYrK091R1BkSVR1N3R4ZVpGUTJTSStoM0xCN2xJeko0NXVNMit4Ni9sdyt0M0t2TU45RG5GSXh4U0tmbjRqdzkxcUczNHFlNkhZZHV1SFZTZG9Yc2cwNEpSb0pnbFA5bmlkRk91aHJ2L2NxT0dWUGpTU1A4dEI1MWVOTDVnc05pZlhSYVlQbFdGbVZiQnlQOWk3UE54SFptYjlmUkQ2eEt4SFJhY1gwY1FKd0lXWT0=', 'map', 'null'),
(9, 'SENDER_MAIL_ID', 'info@roofandassets.com', 'email', 'null'),
(10, 'RECEIVER_MAIL', 'info@roofandassets.com', 'email', 'null'),
(11, 'REPLY_TO', 'not available', 'email', 'null'),
(12, 'SUPPORT_MAIL', 'support@roofandassets.com', 'email', 'null'),
(13, 'ENQUIRY_MAIL', 'info@roofandassets.com', 'email', 'null'),
(14, 'ADMIN_MAIL', 'info@roofandassets.com', 'text', 'null'),
(15, 'SMS_API_KEY', 'null', 'text', 'null'),
(16, 'DOWNLOAD_ANDROID_APP_LINK', 'not available', 'link', 'null'),
(17, 'DOWNLOAD_IOS_APP_LINK', 'DOMAIN', 'link', 'null'),
(18, 'DOWNLOAD_BROCHER_LINK', 'DOMAIN\r\n', 'link', 'null'),
(20, 'CONTROL_WORK_ENV', 'DEV', 'boolean', 'dev, prod'),
(21, 'CONTROL_SMS', 'false', 'boolean', 'true, false'),
(23, 'CONTROL_MAILS', 'false', 'boolean', 'true, false'),
(24, 'CONTROL_NOTIFICATION', 'true', 'boolean', 'true, false'),
(25, 'CONTROL_MSG_DISPLAY_TIME', '4500', 'number', '1000, 10000'),
(26, 'CONTROL_APP_LOGS', 'false', 'boolean', 'true, false'),
(27, 'APP_LOGO', 'APNA_REAL_ESTATE__26_Oct_2023_10_10_17_15568636163_.png', 'img', 'null'),
(28, 'SMS_OTP_TEMP_ID', 'null', 'text', 'null'),
(29, 'PASS_RESET_OTP_TEMP', 'null', 'text', 'null'),
(30, 'SMS_SENDER_ID', 'null', 'text', 'null'),
(31, 'PG_PROVIDER', 'PAYTM', 'text', 'null'),
(32, 'PG_MODE', 'DEV', 'text', 'null'),
(33, 'MERCHENT_ID', 'HJvgh1gh3234jh4vgc3j4c3gh123', 'text', 'null'),
(34, 'MERCHANT_KEY', '#bkjbhv23h2v3gh232vghvc2gv3gh', 'text', 'null'),
(35, 'ONLINE_PAYMENT_OPTION', 'false', 'boolean', 'true, false'),
(36, 'CONTROL_NOTIFICATION_SOUND', 'true', 'boolean', 'true, false'),
(37, 'FINANCIAL_YEAR', 'September - August', 'text', 'null'),
(38, 'GST_NO', '06AALCR4165K1ZZ', 'text', 'null'),
(39, 'COMPANY_TYPE', 'PUBLISHING', 'text', 'null'),
(40, 'LOGIN_BG_IMAGE', 'ROOF_&_ASSETS_INFRA_Logo_26_Sep_2022_10_09_48_61750536552_.gif', 'text', 'null'),
(41, 'PRIMARY_AREA', 'M3RKYjIyemJJcnFXZ2xLdzZINzdMNVNqRVJFbkY2ZnpTQ1BmNFdQcUgrMD0=', 'text', 'null'),
(42, 'PRIMARY_CITY', 'Q1o2a0w2NEpQOEFLTHA3ZHdNYjh4UT09', 'text', 'null'),
(43, 'PRIMARY_STATE', 'Rm9nUDlDRTVkV20zWm8wMmEvMEpPZz09', 'text', 'null'),
(44, 'PRIMARY_COUNTRY', 'MmtSc3hhcXA1OU1mNjFaYUJ6VVhIZz09', 'text', 'null'),
(45, 'PRIMARY_PINCODE', 'RjV6emhnOUxVeC9ic29tQ25BV211QT09', 'text', 'null'),
(46, 'TAX_NO', 'DELA61323D1', 'text', 'null'),
(47, 'APP_THEME', 'facebook', 'text', 'null'),
(48, 'DEFAULT_RECORD_LISTING', '10', 'text', 'null'),
(49, 'WEBSITE', 'false', 'text', 'null'),
(50, 'APP', 'false', 'text', 'null'),
(51, 'MAX_ORDER_QTY', '', 'text', 'null'),
(52, 'MIN_ORDER_QTY', '', 'text', 'null'),
(53, 'GOOGLE_MAP_API', 'AIzaSyC2Xh8p7kp8B4VZWFonkjVvwfwmPT0A_Hw', 'text', 'null'),
(54, 'MINIMUM_ATTANDANCE_RANGE', '5', 'text', 'null'),
(55, 'OFFICE_START_TIME', '10:00', 'text', 'null'),
(56, 'OFFICE_MAX_START_TIME', '10:15', 'text', 'null'),
(57, 'OFFICE_HALF_DAY_ALLOWED', '16:30', 'text', 'null'),
(58, 'MAXIMUM_ALLOWED_LATE_CHECK_IN', '3', 'text', 'null'),
(59, 'OFFICE_LUNCH_START_TIME', '13:00', 'text', 'null'),
(60, 'OFFICE_END_TIME', '18:30', 'text', 'null'),
(61, 'SHORT_LEAVE_MAX_TIME', '16:30', 'text', 'null'),
(62, 'OFFICE_LUNCH_TIME_IN_MINUTES', '40', 'text', 'null'),
(63, 'WORKING_DAYS_IN_MONTH', '0', 'text', 'null'),
(64, 'AUTO_MONTHLY_PAYROLL_COSING_DATE', '', 'text', 'null'),
(65, 'MAXIMUM_SHORT_LEAVE_IN_MONTH', '3', 'text', 'null'),
(66, 'DEDUCTION_AMOUNT_ON_PER_LATE', '0', 'text', 'null'),
(67, 'EMP_CODE', 'PRP', 'text', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `config_holidays`
--

CREATE TABLE `config_holidays` (
  `ConfigHolidayid` int(10) NOT NULL,
  `ConfigHolidayName` varchar(100) NOT NULL,
  `ConfigHolidayFromDate` varchar(25) NOT NULL,
  `ConfigHolidayToDate` varchar(25) NOT NULL,
  `ConfigHolidayNotes` varchar(1000) NOT NULL,
  `ConfigHolidayMediaImage` varchar(1000) NOT NULL,
  `ConfigHolidayCreatedBy` varchar(25) NOT NULL,
  `ConfigHolidayMailStatus` varchar(10) NOT NULL,
  `ConfigHolidayCreatedAt` varchar(25) NOT NULL,
  `ConfigHolidayUpdatedAt` varchar(25) NOT NULL,
  `ConfigHolidayUpdatedBy` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_holidays`
--

INSERT INTO `config_holidays` (`ConfigHolidayid`, `ConfigHolidayName`, `ConfigHolidayFromDate`, `ConfigHolidayToDate`, `ConfigHolidayNotes`, `ConfigHolidayMediaImage`, `ConfigHolidayCreatedBy`, `ConfigHolidayMailStatus`, `ConfigHolidayCreatedAt`, `ConfigHolidayUpdatedAt`, `ConfigHolidayUpdatedBy`) VALUES
(5, 'Ram Navami', '2023-03-28', '', 'MEpLZVpSb1dndkNmVUJETHp5WDlGQlA2SG5oY3M2WUpuYjAxUHhrUWdKQT0=', '', '4', 'Active', '2023-03-28 04:12:52 PM', '2023-03-28 04:13:56 PM', 4),
(6, 'Rakshabandhan', '2023-08-30', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '1', 'Inactive', '2023-08-29 02:31:37 pm', '2023-08-29 02:31:37 pm', 1),
(7, 'Diwali', '2023-11-12', '', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '', '148', 'Inactive', '2023-09-07 04:24:45 PM', '2023-09-07 04:24:45 PM', 148);

-- --------------------------------------------------------

--
-- Table structure for table `config_locations`
--

CREATE TABLE `config_locations` (
  `config_location_id` int(10) NOT NULL,
  `config_location_name` varchar(25) NOT NULL,
  `config_location_address` varchar(255) NOT NULL,
  `config_location_Latitude` varchar(25) NOT NULL,
  `config_location_Longitude` varchar(25) NOT NULL,
  `config_location_status` int(1) NOT NULL,
  `config_location_created_at` varchar(25) NOT NULL,
  `config_location_updated_at` varchar(25) NOT NULL,
  `config_location_created_by` int(10) NOT NULL,
  `config_location_updated_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_locations`
--

INSERT INTO `config_locations` (`config_location_id`, `config_location_name`, `config_location_address`, `config_location_Latitude`, `config_location_Longitude`, `config_location_status`, `config_location_created_at`, `config_location_updated_at`, `config_location_created_by`, `config_location_updated_by`) VALUES
(1, 'NOIDA', 'L2pVb2Z2cjhxRVdYUUhlbmVIOHJpRXFRcG40bUhGL1FDUDZhMHp6U3d3OTgxNTlFV2l2R0NybzB5YkxTZnVKRg==', '28.627348', '77.380244', 1, '2023-05-10 05:09:48 pm', '2023-08-29 02:15:38 pm', 1, 1),
(2, 'GURGAON', 'bmwvMkt0VGRXMjZsY0FEaTdHODZ3YnpFNUIrb2FrbGVOQkdzQ2R0S0xrVklYY3NlVm5TK21CN3EzMjFhYTRsWnk5VXpSdnBPeVE5UTZET2RmNWhRMlM5WjNsVE1helZJc2xQK0lZbXpWK0U9', '28.6124729', '77.377668', 1, '2023-05-10 05:11:38 pm', '2023-08-26 06:01:55 pm', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_mail_sender`
--

CREATE TABLE `config_mail_sender` (
  `config_mail_sender_id` int(10) NOT NULL,
  `config_mail_sender_host` varchar(255) NOT NULL,
  `config_mail_sender_username` varchar(100) NOT NULL,
  `config_mail_sender_password` varchar(50) NOT NULL,
  `config_mail_sender_port` varchar(10) NOT NULL,
  `config_mail_sent_from` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_mail_sender`
--

INSERT INTO `config_mail_sender` (`config_mail_sender_id`, `config_mail_sender_host`, `config_mail_sender_username`, `config_mail_sender_password`, `config_mail_sender_port`, `config_mail_sent_from`) VALUES
(1, 'smtp.hostinger.com', 'no-reply@roofnassets.com', 'Navix@9810895713', '465', 'no-reply@roofnassets.com');

-- --------------------------------------------------------

--
-- Table structure for table `config_modules`
--

CREATE TABLE `config_modules` (
  `ConfigModuleId` int(100) NOT NULL,
  `ConfigModuleName` varchar(100) NOT NULL,
  `ConfigModuleCreatedAt` varchar(100) NOT NULL,
  `ConfigModuleUpdatedAt` varchar(100) NOT NULL,
  `ConfigModuleUpdatedBy` varchar(100) NOT NULL,
  `ConfigModuleCreatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_payroll_allowances`
--

CREATE TABLE `config_payroll_allowances` (
  `payroll_allowance_id` int(10) NOT NULL,
  `payroll_allowance_name` varchar(150) NOT NULL,
  `payroll_allowance_descriptions` varchar(10000) NOT NULL,
  `payroll_allowance_created_at` varchar(30) NOT NULL,
  `payroll_allowance_updated_at` varchar(30) NOT NULL,
  `payroll_allowance_created_by` int(10) NOT NULL,
  `payroll_allowance_updated_by` int(10) NOT NULL,
  `payroll_allowance_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_payroll_allowances`
--

INSERT INTO `config_payroll_allowances` (`payroll_allowance_id`, `payroll_allowance_name`, `payroll_allowance_descriptions`, `payroll_allowance_created_at`, `payroll_allowance_updated_at`, `payroll_allowance_created_by`, `payroll_allowance_updated_by`, `payroll_allowance_status`) VALUES
(2, 'Salary', '', '2023-07-04 11:23:32 am', '2023-07-04 11:23:32 am', 1, 1, 1),
(3, 'Support', '', '2023-08-26 06:06:20 pm', '2023-08-26 06:06:20 pm', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_payroll_allowance_for_users`
--

CREATE TABLE `config_payroll_allowance_for_users` (
  `payroll_allowance_for_emps_id` int(10) NOT NULL,
  `payroll_allowance_for_users_main_user_id` int(10) NOT NULL,
  `payroll_allowance_main_id` int(10) NOT NULL,
  `payroll_allowance_for_users_type` varchar(255) NOT NULL,
  `payroll_allowance_for_users_amount` int(10) NOT NULL,
  `payroll_allowance_for_users_pay_frequency` varchar(255) NOT NULL,
  `payroll_allowance_for_users_effective_date` varchar(40) NOT NULL,
  `payroll_allowance_for_users_created_at` varchar(40) NOT NULL,
  `payroll_allowance_for_users_created_by` int(10) NOT NULL,
  `payroll_allowance_for_users_updated_at` varchar(40) NOT NULL,
  `payroll_allowance_for_users_updated_by` int(10) NOT NULL,
  `payroll_allowance_for_users_status` varchar(10) NOT NULL,
  `payroll_allowance_for_users_notes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_payroll_allowance_for_users`
--

INSERT INTO `config_payroll_allowance_for_users` (`payroll_allowance_for_emps_id`, `payroll_allowance_for_users_main_user_id`, `payroll_allowance_main_id`, `payroll_allowance_for_users_type`, `payroll_allowance_for_users_amount`, `payroll_allowance_for_users_pay_frequency`, `payroll_allowance_for_users_effective_date`, `payroll_allowance_for_users_created_at`, `payroll_allowance_for_users_created_by`, `payroll_allowance_for_users_updated_at`, `payroll_allowance_for_users_updated_by`, `payroll_allowance_for_users_status`, `payroll_allowance_for_users_notes`) VALUES
(1, 121, 2, 'FIX_AMOUNT', 25000, '', '2023-08-01', '2023-08-10 03:27:13 pm', 1, '2023-08-11 04:15:09 pm', 1, '1', 'WisxN2oxdXRia1AzYUFtUVQwSzRndz09'),
(2, 13, 2, 'FIX_AMOUNT', 48000, '', '2023-08-01', '2023-08-11 05:29:10 pm', 1, '2023-08-11 05:29:10 pm', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(3, 14, 2, 'FIX_AMOUNT', 42000, '', '2023-08-01', '2023-08-11 05:30:37 pm', 1, '2023-08-11 05:30:37 pm', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(4, 135, 2, 'FIX_AMOUNT', 30000, '', '2023-08-01', '2023-08-11 05:31:46 pm', 1, '2023-08-11 05:31:46 pm', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(5, 115, 2, 'FIX_AMOUNT', 35000, '', '2023-08-01', '2023-08-11 05:32:26 pm', 1, '2023-08-11 05:32:26 pm', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(6, 123, 2, 'FIX_AMOUNT', 13000, '', '2023-08-01', '2023-08-11 05:34:04 pm', 1, '2023-08-11 05:34:04 pm', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(7, 16, 3, 'FIX_AMOUNT', 20000, '', '2023-08-01', '2023-08-27 11:09:41 am', 1, '2023-08-27 11:09:41 am', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(8, 17, 3, 'FIX_AMOUNT', 26000, '', '2023-08-01', '2023-08-27 11:11:09 am', 1, '2023-09-03 01:04:20 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(9, 20, 3, 'FIX_AMOUNT', 20000, '', '2023-08-01', '2023-08-27 11:12:14 am', 1, '2023-08-27 11:12:14 am', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(10, 30, 3, 'FIX_AMOUNT', 15000, '', '2023-08-01', '2023-08-27 11:15:40 am', 1, '2023-08-27 11:15:40 am', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(11, 80, 3, 'FIX_AMOUNT', 20000, '', '2023-08-01', '2023-08-27 11:16:32 am', 1, '2023-08-27 11:16:32 am', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(12, 86, 3, 'FIX_AMOUNT', 30000, '', '2023-08-01', '2023-08-27 11:17:36 am', 1, '2023-08-27 11:17:36 am', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(13, 126, 3, 'FIX_AMOUNT', 19000, '', '2023-09-01', '2023-09-03 12:32:06 PM', 1, '2023-09-03 12:32:06 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(14, 139, 3, 'FIX_AMOUNT', 20000, '', '2023-09-01', '2023-09-03 12:33:12 PM', 1, '2023-09-03 12:33:12 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(15, 143, 3, 'FIX_AMOUNT', 15000, '', '2023-09-01', '2023-09-03 12:34:44 PM', 1, '2023-09-03 12:34:44 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(16, 142, 3, 'FIX_AMOUNT', 15000, '', '2023-09-01', '2023-09-03 12:35:12 PM', 1, '2023-09-03 12:35:12 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(17, 21, 3, 'FIX_AMOUNT', 20000, '', '2023-09-01', '2023-09-03 12:35:58 PM', 1, '2023-09-03 12:35:58 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(18, 134, 3, 'FIX_AMOUNT', 30000, '', '2023-09-01', '2023-09-03 12:36:41 PM', 1, '2023-09-03 12:36:41 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(19, 91, 3, 'FIX_AMOUNT', 35000, '', '2023-09-01', '2023-09-03 12:37:23 PM', 1, '2023-09-03 12:37:23 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(20, 131, 3, 'FIX_AMOUNT', 25000, '', '2023-09-01', '2023-09-03 12:38:43 PM', 1, '2023-09-03 12:38:43 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(21, 108, 3, 'FIX_AMOUNT', 20000, '', '2023-09-01', '2023-09-03 12:39:46 PM', 1, '2023-09-03 12:39:46 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(22, 132, 3, 'FIX_AMOUNT', 24000, '', '2023-09-01', '2023-09-03 12:42:34 PM', 1, '2023-09-03 12:42:34 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(23, 57, 3, 'FIX_AMOUNT', 30000, '', '2023-09-01', '2023-09-03 12:43:30 PM', 1, '2023-09-03 12:43:30 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(24, 145, 2, 'FIX_AMOUNT', 20000, '', '2023-09-01', '2023-09-03 12:44:31 PM', 1, '2023-09-03 12:44:31 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(25, 144, 2, 'FIX_AMOUNT', 16000, '', '2023-09-01', '2023-09-03 12:45:12 PM', 1, '2023-09-03 12:45:12 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(26, 101, 3, 'FIX_AMOUNT', 21000, '', '2023-09-01', '2023-09-03 12:47:02 PM', 1, '2023-09-03 12:47:02 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(27, 138, 3, 'FIX_AMOUNT', 30000, '', '2023-09-01', '2023-09-03 12:48:29 PM', 1, '2023-09-03 12:48:29 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(28, 116, 3, 'FIX_AMOUNT', 25000, '', '2023-09-01', '2023-09-03 12:49:09 PM', 1, '2023-09-03 12:49:09 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(29, 137, 3, 'FIX_AMOUNT', 30000, '', '2023-09-01', '2023-09-03 12:50:46 PM', 1, '2023-09-03 12:50:46 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(30, 128, 3, 'FIX_AMOUNT', 20000, '', '2023-09-01', '2023-09-03 12:52:37 PM', 1, '2023-09-03 12:52:37 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(31, 122, 3, 'FIX_AMOUNT', 16000, '', '2023-09-01', '2023-09-03 12:53:20 PM', 1, '2023-09-03 12:53:20 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(32, 127, 3, 'FIX_AMOUNT', 25000, '', '2023-09-01', '2023-09-03 12:54:23 PM', 1, '2023-09-03 12:54:23 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(33, 133, 2, 'FIX_AMOUNT', 35000, '', '2023-09-01', '2023-09-03 12:55:09 PM', 1, '2023-09-03 12:55:09 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(34, 141, 3, 'FIX_AMOUNT', 15000, '', '2023-09-01', '2023-09-03 12:55:36 PM', 1, '2023-09-03 12:55:36 PM', 1, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(35, 148, 2, 'FIX_AMOUNT', 45000, '', '2023-09-01', '2023-09-07 04:15:06 PM', 148, '2023-09-07 04:15:06 PM', 148, '1', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(36, 198, 2, 'FIX_AMOUNT', 26000, '', '2023-10-26', '2023-10-26 04:41:14 PM', 1, '2023-10-26 04:41:14 PM', 1, '1', 'VGplYlpaaXU0VlVJS2w3eHdnWGFIUT09'),
(37, 196, 2, 'FIX_AMOUNT', 12000, '', '2023-10-26', '2023-10-26 04:41:51 PM', 1, '2023-10-26 04:41:51 PM', 1, '1', 'dVI0UVBBSHRwSk5OeDhqSEw3TDV6Zz09');

-- --------------------------------------------------------

--
-- Table structure for table `config_payroll_deductions`
--

CREATE TABLE `config_payroll_deductions` (
  `payroll_deduction_id` int(10) NOT NULL,
  `payroll_deducation_name` varchar(255) NOT NULL,
  `payroll_deduction_descriptions` varchar(1000) NOT NULL,
  `payroll_deduction_created_at` varchar(40) NOT NULL,
  `payroll_deduction_updated_at` varchar(40) NOT NULL,
  `payroll_deduction_created_by` int(10) NOT NULL,
  `payroll_deduction_updated_by` int(10) NOT NULL,
  `payroll_deduction_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_payroll_deductions`
--

INSERT INTO `config_payroll_deductions` (`payroll_deduction_id`, `payroll_deducation_name`, `payroll_deduction_descriptions`, `payroll_deduction_created_at`, `payroll_deduction_updated_at`, `payroll_deduction_created_by`, `payroll_deduction_updated_by`, `payroll_deduction_status`) VALUES
(1, 'Software Charges', '', '2023-07-04 11:10:27 am', '2023-07-04 11:10:27 am', 1, 1, 1),
(2, 'TDS', '', '2023-07-04 11:10:41 am', '2023-07-04 11:10:41 am', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_payroll_deductions_for_users`
--

CREATE TABLE `config_payroll_deductions_for_users` (
  `payroll_deductions_for_users_id` int(10) NOT NULL,
  `payroll_deductions_for_users_main_user_id` int(10) NOT NULL,
  `payroll_deductions_main_id` int(10) NOT NULL,
  `payroll_deductions_for_users_type` varchar(255) NOT NULL,
  `payroll_deductions_for_users_amount` int(10) NOT NULL,
  `payroll_deductions_for_users_effective_date` varchar(40) NOT NULL,
  `payroll_deductions_for_users_created_at` varchar(40) NOT NULL,
  `payroll_deductions_for_users_created_by` int(10) NOT NULL,
  `payroll_deductions_for_users_updated_at` varchar(40) NOT NULL,
  `payroll_deductions_for_users_updated_by` int(10) NOT NULL,
  `payroll_deductions_for_users_status` int(2) NOT NULL,
  `payroll_deductions_for_users_closed_at` varchar(40) NOT NULL,
  `payroll_deductions_for_users_closed_by` int(10) NOT NULL,
  `payroll_deductions_for_users_notes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_payroll_deductions_for_users`
--

INSERT INTO `config_payroll_deductions_for_users` (`payroll_deductions_for_users_id`, `payroll_deductions_for_users_main_user_id`, `payroll_deductions_main_id`, `payroll_deductions_for_users_type`, `payroll_deductions_for_users_amount`, `payroll_deductions_for_users_effective_date`, `payroll_deductions_for_users_created_at`, `payroll_deductions_for_users_created_by`, `payroll_deductions_for_users_updated_at`, `payroll_deductions_for_users_updated_by`, `payroll_deductions_for_users_status`, `payroll_deductions_for_users_closed_at`, `payroll_deductions_for_users_closed_by`, `payroll_deductions_for_users_notes`) VALUES
(1, 121, 1, 'FIX_AMOUNT', 250, '2023-08-01', '2023-08-11 04:14:00 pm', 1, '2023-08-11 04:14:00 pm', 1, 1, '', 0, 'eUJoa2FPdGdreE9yTldEYXdJQ3dnTHh4a2FxQmNOQjRVeDVXekVSTUxjMD0='),
(2, 16, 1, 'FIX_AMOUNT', 250, '2023-08-01', '2023-08-27 11:10:06 am', 1, '2023-08-27 11:10:06 am', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(3, 17, 1, 'FIX-AMOUNT', 250, '2023-08-27', '2023-08-27 11:11:25 am', 1, '2023-08-27 11:11:25 am', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(4, 20, 1, 'FIX-AMOUNT', 250, '2023-08-01', '2023-08-27 11:12:28 am', 1, '2023-08-27 11:12:28 am', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(5, 30, 1, 'FIX_AMOUNT', 250, '2023-08-01', '2023-08-27 11:15:17 am', 1, '2023-08-27 11:15:17 am', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(6, 80, 1, 'FIX_AMOUNT', 250, '2023-08-01', '2023-08-27 11:16:50 am', 1, '2023-08-27 11:16:50 am', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(7, 86, 1, 'FIX_AMOUNT', 250, '2023-08-01', '2023-08-27 11:18:00 am', 1, '2023-08-27 11:18:00 am', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(8, 126, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:32:07 PM', 1, '2023-09-03 12:32:07 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(9, 139, 1, 'FIX_AMOUNT', 250, '2023-09-03', '2023-09-03 12:33:11 PM', 1, '2023-09-03 12:33:11 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(10, 143, 1, 'FIX_AMOUNT', 250, '2023-09-03', '2023-09-03 12:34:19 PM', 1, '2023-09-03 12:34:19 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(11, 142, 1, 'FIX_AMOUNT', 250, '2023-09-03', '2023-09-03 12:35:15 PM', 1, '2023-09-03 12:35:15 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(12, 21, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:35:59 PM', 1, '2023-09-03 12:35:59 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(13, 134, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:36:43 PM', 1, '2023-09-03 12:36:43 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(14, 91, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:37:49 PM', 1, '2023-09-03 12:37:49 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(15, 131, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:38:42 PM', 1, '2023-09-03 12:38:42 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(16, 108, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:39:44 PM', 1, '2023-09-03 12:39:44 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(17, 132, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:42:53 PM', 1, '2023-09-03 12:42:53 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(18, 57, 1, 'FIX_AMOUNT', 250, '2023-09-03', '2023-09-03 12:43:29 PM', 1, '2023-09-03 12:43:29 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(19, 101, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:47:00 PM', 1, '2023-09-03 12:47:00 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(20, 116, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:49:07 PM', 1, '2023-09-03 12:49:07 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(21, 122, 1, 'FIX_AMOUNT', 250, '2023-09-03', '2023-09-03 12:53:19 PM', 1, '2023-09-03 12:53:19 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(22, 127, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:54:22 PM', 1, '2023-09-03 12:54:22 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(23, 133, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:55:09 PM', 1, '2023-09-03 12:55:09 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(24, 141, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-03 12:55:58 PM', 1, '2023-09-03 12:55:58 PM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09'),
(25, 137, 1, 'FIX_AMOUNT', 250, '2023-09-01', '2023-09-05 11:40:11 AM', 1, '2023-09-05 11:40:11 AM', 1, 1, '', 0, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09');

-- --------------------------------------------------------

--
-- Table structure for table `config_pgs`
--

CREATE TABLE `config_pgs` (
  `ConfigPgId` int(100) NOT NULL,
  `ConfigPgProvider` varchar(100) NOT NULL,
  `ConfigPgMode` varchar(100) NOT NULL,
  `ConfigPgMerchantId` varchar(500) NOT NULL,
  `ConfigPgMerchantKey` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_pgs`
--

INSERT INTO `config_pgs` (`ConfigPgId`, `ConfigPgProvider`, `ConfigPgMode`, `ConfigPgMerchantId`, `ConfigPgMerchantKey`) VALUES
(1, 'RAZORAPAY', 'jhvjhdsbvj', 'jbcjhbdbfm b', 'qkjbdjkfbvjdbvkdbkjvbdkjbjkbdjkfd vjdbvgjhdfhbvdf'),
(2, 'PAYTM', 'DEV', 'HJvgh1gh3234jh4vgc3j4c3gh123', '#bkjbhv23h2v3gh232vghvc2gv3gh');

-- --------------------------------------------------------

--
-- Table structure for table `config_values`
--

CREATE TABLE `config_values` (
  `ConfigValueId` int(100) NOT NULL,
  `ConfigValueGroupId` varchar(100) NOT NULL,
  `ConfigValueDetails` varchar(100) NOT NULL,
  `ConfigReferenceId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_values`
--

INSERT INTO `config_values` (`ConfigValueId`, `ConfigValueGroupId`, `ConfigValueDetails`, `ConfigReferenceId`) VALUES
(15, '5', 'Retail Shops', ''),
(16, '5', 'Residential Plots', '0'),
(17, '5', 'Commercial Space', ''),
(18, '5', 'Farm House', ''),
(19, '5', 'Residential Villas', ''),
(21, '6', 'HIGH', ''),
(22, '6', 'MEDIUM', ''),
(23, '6', 'LOW', ''),
(33, '5', 'SCOs', ''),
(34, '1', 'BH', '0'),
(35, '1', 'TH', ''),
(36, '1', 'SM', ''),
(37, '2', 'FRESH LEAD', ''),
(38, '2', 'FOLLOW UP', ''),
(39, '2', 'JUNK', ''),
(40, '2', 'NOT INTERESTED', ''),
(41, '9', 'Facebook', ''),
(42, '9', 'Instagram', ''),
(43, '9', 'Google Ads', ''),
(44, '9', 'Trade India', ''),
(45, '9', 'India Mart', ''),
(46, '9', '99acre', ''),
(47, '9', 'Housing.in', ''),
(48, '9', 'Others', ''),
(49, '9', 'Self', '0'),
(50, '7', 'Follow Up', ''),
(51, '7', 'NOT Interested', ''),
(52, '7', 'Junk', ''),
(70, '10', 'INFORMATION SHARING', '50'),
(71, '10', 'SITE VISIT PLANNED', '50'),
(72, '10', 'CALL BACK', '50'),
(74, '10', 'SITE VISIT DONE', '50'),
(75, '10', 'LOCATION ISSUE', '51'),
(76, '10', 'BUDGET ISSUE', '51'),
(77, '10', 'JUST WANT AN INFOMRATION', '51'),
(78, '10', 'ALREADY INVESTED', '51'),
(79, '10', 'WRONG NUMBER', '52'),
(80, '10', 'NUMBER NOT UPTO THE MARK', '52'),
(81, '10', 'Others', '50'),
(82, '10', 'Others', '51'),
(83, '10', 'Others', '52'),
(84, '5', 'Residential Flats', '0'),
(85, '5', 'Residential- Low Rise', '0'),
(86, '5', 'Affordable Housing Projects', '0'),
(87, '1', 'Management', '0'),
(89, '10', 'Not Answered', '88'),
(90, '7', 'Sales Closed', '0'),
(91, '10', 'Close', '90'),
(92, '9', 'News Paper ad', '0'),
(93, '10', 'Not Picked', '50'),
(94, '7', 'Ringing', '0'),
(95, '2', 'Ringing', '0'),
(96, '10', 'Ringing', '94'),
(97, '11', 'General Enquiry', '0'),
(98, '11', 'IT Team', '0'),
(99, '11', 'Electrician', '0'),
(100, '11', 'Project Enquiry', '0'),
(101, '11', 'Site Visit', '0'),
(102, '11', 'Payment ', '0'),
(103, '11', 'Job &amp; Interview ', '0'),
(104, '11', 'Courier', '0'),
(111, '12', 'NEW', '0'),
(112, '12', 'Approved', '0'),
(113, '12', 'Please Wait', '0'),
(120, '2', 'Registration', '0'),
(121, '7', 'Registration done', '0'),
(122, '10', 'Registration done', '121'),
(123, '12', 'Selected', '0'),
(124, '12', 'Rejected', '0'),
(125, '7', 'Fresh Leads', '0'),
(126, '10', ' ', '125');

-- --------------------------------------------------------

--
-- Table structure for table `creatives`
--

CREATE TABLE `creatives` (
  `CreativeId` int(10) NOT NULL,
  `CreativeName` varchar(100) NOT NULL,
  `CreativeOccasion` varchar(100) NOT NULL,
  `PostedOn` varchar(100) NOT NULL,
  `UploadCreative` varchar(1000) NOT NULL,
  `CreatedOn` varchar(100) NOT NULL,
  `ExecutionDate` varchar(100) NOT NULL,
  `CreatedAt` varchar(40) NOT NULL,
  `UpdatedAt` varchar(40) NOT NULL,
  `CreatedBy` int(10) NOT NULL,
  `UpdatedBy` int(10) NOT NULL,
  `CreativeNotes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerId` int(10) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `CustomerRelationName` varchar(100) NOT NULL,
  `CustomerPhoneNumber` varchar(100) NOT NULL,
  `CustomerEmailId` varchar(100) NOT NULL,
  `CustomerBirthdate` varchar(100) NOT NULL,
  `CustomerCreatedBy` varchar(10) NOT NULL,
  `CustomerUpdatedBy` varchar(10) NOT NULL,
  `CustomerCreatedAt` varchar(40) NOT NULL,
  `CustomerUpdatedAt` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerId`, `CustomerName`, `CustomerRelationName`, `CustomerPhoneNumber`, `CustomerEmailId`, `CustomerBirthdate`, `CustomerCreatedBy`, `CustomerUpdatedBy`, `CustomerCreatedAt`, `CustomerUpdatedAt`) VALUES
(1, 'gaurav singh', 'bgfgfg', '8447572565', 'gauravsinghigc@gmail.com', '2023-10-25', '1', '1', '2023-10-25 01:05:53 PM', '2023-10-25 01:05:53 PM');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `CustAddressId` int(10) NOT NULL,
  `CustomerMainId` int(100) NOT NULL,
  `CustomerStreetAddress` varchar(500) NOT NULL,
  `CustomerAreaLocality` varchar(100) NOT NULL,
  `CustomerCity` varchar(100) NOT NULL,
  `CustomerState` varchar(100) NOT NULL,
  `CustomerCountry` varchar(100) NOT NULL,
  `CustomerPincode` varchar(10) NOT NULL,
  `CustAddressIfDefault` varchar(10) NOT NULL,
  `CustomerAddressType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`CustAddressId`, `CustomerMainId`, `CustomerStreetAddress`, `CustomerAreaLocality`, `CustomerCity`, `CustomerState`, `CustomerCountry`, `CustomerPincode`, `CustAddressIfDefault`, `CustomerAddressType`) VALUES
(1, 1, 'YXlBeG12dkZGZThDaE1DdWg4OVhvZz09', 'fdfd', 'fddv', 'gfb', 'gfdf', 'fgf', '', 'CURRENT'),
(2, 1, 'YXlBeG12dkZGZThDaE1DdWg4OVhvZz09', 'fdfd', 'fddv', 'gfb', 'gfdf', 'fgf', '', 'PERMANENT');

-- --------------------------------------------------------

--
-- Table structure for table `customer_co_address_details`
--

CREATE TABLE `customer_co_address_details` (
  `CustomerCoAddressId` int(10) NOT NULL,
  `MainCoCustomerId` int(10) NOT NULL,
  `CoCustomerStreetAddress` varchar(1000) NOT NULL,
  `CoCustomerAreaLocality` varchar(500) NOT NULL,
  `CoCustomerCity` varchar(100) NOT NULL,
  `CoCustomerState` varchar(150) NOT NULL,
  `CoCustomerCountry` varchar(100) NOT NULL,
  `CoCustomerPincode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_co_details`
--

CREATE TABLE `customer_co_details` (
  `CustCoId` int(10) NOT NULL,
  `MainCustomerId` varchar(100) NOT NULL,
  `CoCustomerName` varchar(100) NOT NULL,
  `CoCustomerRelationName` varchar(100) NOT NULL,
  `CoCustomerPhoneNumber` varchar(100) NOT NULL,
  `CoCustomerEmailId` varchar(100) NOT NULL,
  `CoCustomerCreatedAt` varchar(40) NOT NULL,
  `CoCustomerUpdatedAt` varchar(40) NOT NULL,
  `CuCustomerCreatedBy` varchar(40) NOT NULL,
  `CoCustomerUpdatedBy` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_co_documents`
--

CREATE TABLE `customer_co_documents` (
  `CustomerCoDocId` int(10) NOT NULL,
  `CustomerCoMainId` int(10) NOT NULL,
  `CustomerCoDocName` varchar(100) NOT NULL,
  `CustomerCoDocNo` varchar(100) NOT NULL,
  `CustomerCoFile` varchar(1000) NOT NULL,
  `CustomerCoUploadedAt` varchar(100) NOT NULL,
  `CustomerUploadedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_documents`
--

CREATE TABLE `customer_documents` (
  `CustomerDocumentId` int(10) NOT NULL,
  `CustomerMainId` varchar(10) NOT NULL,
  `CustomerDocmentType` varchar(100) NOT NULL,
  `CustomerDocumentName` varchar(100) NOT NULL,
  `CustomerDocumentNo` varchar(1000) NOT NULL,
  `CustomerDocumentAttachement` varchar(1000) NOT NULL,
  `CustomerDocUploadedAt` varchar(40) NOT NULL,
  `CustomerDocumentUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_documents`
--

INSERT INTO `customer_documents` (`CustomerDocumentId`, `CustomerMainId`, `CustomerDocmentType`, `CustomerDocumentName`, `CustomerDocumentNo`, `CustomerDocumentAttachement`, `CustomerDocUploadedAt`, `CustomerDocumentUpdatedBy`) VALUES
(1, '1', 'ID', 'PHOTO', 'PHOTO', 'PHOTO__25_Oct_2023_01_10_23_92414327922_.jpg', '2023-10-25 01:09:23 PM', ''),
(2, '1', 'ID', 'PAN-CARD', 'gnvbnv', 'PANCARD__25_Oct_2023_01_10_24_447220514_.jpg', '2023-10-25 01:09:23 PM', ''),
(3, '1', 'ADDRESS', 'AADHAR-CARD', 't56ryt5r65', 'CUSTOMER_ADHAAR_CARD_FILE__25_Oct_2023_01_10_24_74523777301_.jpg', '2023-10-25 01:09:23 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_nominees`
--

CREATE TABLE `customer_nominees` (
  `CustNomineeId` int(10) NOT NULL,
  `CustomerMainId` int(10) NOT NULL,
  `CustNomRelation` varchar(100) NOT NULL,
  `CustNomFullName` varchar(100) NOT NULL,
  `CustNomPhoneNumber` varchar(100) NOT NULL,
  `CustNomEmailId` varchar(100) NOT NULL,
  `CustNomStreetAdress` varchar(500) NOT NULL,
  `CustNomAreaLocality` varchar(100) NOT NULL,
  `CustNomCity` varchar(100) NOT NULL,
  `CustNomState` varchar(100) NOT NULL,
  `CustNomCountry` varchar(100) NOT NULL,
  `CustNomPincode` varchar(100) NOT NULL,
  `CustNomDateofbirth` varchar(100) NOT NULL,
  `CustNomCreatedAt` varchar(100) NOT NULL,
  `CustNomUpdatedAt` varchar(100) NOT NULL,
  `CustNomCreatedBy` varchar(100) NOT NULL,
  `CustNomUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_nominees`
--

INSERT INTO `customer_nominees` (`CustNomineeId`, `CustomerMainId`, `CustNomRelation`, `CustNomFullName`, `CustNomPhoneNumber`, `CustNomEmailId`, `CustNomStreetAdress`, `CustNomAreaLocality`, `CustNomCity`, `CustNomState`, `CustNomCountry`, `CustNomPincode`, `CustNomDateofbirth`, `CustNomCreatedAt`, `CustNomUpdatedAt`, `CustNomCreatedBy`, `CustNomUpdatedBy`) VALUES
(1, 95, 'son', 'Vikrant Yadav', '7015988879', 'tarachandasi43pwl@gmail.com', 'MDVGaWtXcHlnbUtHS090NkZmRHRDUT09', 'Kanhai Gaon (73)', 'Gurgaon', 'Haryana', 'India', '122003', '1997-05-31', '2023-05-04 03:14:20 pm', '2023-05-04 03:14:20 pm', '13', '13');

-- --------------------------------------------------------

--
-- Table structure for table `customer_notifications`
--

CREATE TABLE `customer_notifications` (
  `CustomerNotificationId` int(100) NOT NULL,
  `CustomerMainId` int(10) NOT NULL,
  `CustNotificationSubject` varchar(200) NOT NULL,
  `CustNotificationDetails` longtext NOT NULL,
  `CustNotificationDate` varchar(40) NOT NULL,
  `CustNotificationStatus` varchar(40) NOT NULL,
  `CustNotificationCreatedBy` varchar(10) NOT NULL,
  `CustNotificationCreatedAt` varchar(40) NOT NULL,
  `CustNotificationUpdatedAt` varchar(40) NOT NULL,
  `CustNotificationReadAt` varchar(10) NOT NULL,
  `CustNotificationSendStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expanses`
--

CREATE TABLE `expanses` (
  `ExpansesId` bigint(100) NOT NULL,
  `ExpanseName` varchar(200) NOT NULL,
  `ExpanseCategory` varchar(200) NOT NULL,
  `ExpanseTags` varchar(200) NOT NULL,
  `ExpanseAmount` int(10) NOT NULL,
  `ExpanseDescription` varchar(10000) NOT NULL,
  `ExpanseCreatedBy` varchar(100) NOT NULL,
  `ExpanseCreatedFor` varchar(100) NOT NULL,
  `ExpanseDate` varchar(100) NOT NULL,
  `ExpanseCreatedAt` varchar(100) NOT NULL,
  `ExpanseUpdatedAt` varchar(100) NOT NULL,
  `ExpanseUpdatedBy` varchar(100) NOT NULL,
  `ExpanseReceiptAttachment` varchar(1000) NOT NULL,
  `ExpansePaidStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `LeadsId` int(10) NOT NULL,
  `LeadPersonFullname` varchar(100) NOT NULL,
  `LeadSalutations` varchar(1000) NOT NULL,
  `LeadPersonPhoneNumber` varchar(100) NOT NULL,
  `LeadPersonEmailId` varchar(200) NOT NULL,
  `LeadPersonAddress` varchar(1000) NOT NULL,
  `LeadPersonCreatedAt` varchar(100) NOT NULL,
  `LeadPersonLastUpdatedAt` varchar(100) NOT NULL,
  `LeadPersonCreatedBy` varchar(100) NOT NULL,
  `LeadPersonManagedBy` varchar(100) NOT NULL,
  `LeadPersonStatus` varchar(100) NOT NULL,
  `LeadPriorityLevel` varchar(100) NOT NULL,
  `LeadPersonNotes` varchar(10000) NOT NULL,
  `LeadPersonSource` varchar(1000) NOT NULL,
  `LeadPersonSubStatus` varchar(100) NOT NULL,
  `LeadProjectId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`LeadsId`, `LeadPersonFullname`, `LeadSalutations`, `LeadPersonPhoneNumber`, `LeadPersonEmailId`, `LeadPersonAddress`, `LeadPersonCreatedAt`, `LeadPersonLastUpdatedAt`, `LeadPersonCreatedBy`, `LeadPersonManagedBy`, `LeadPersonStatus`, `LeadPriorityLevel`, `LeadPersonNotes`, `LeadPersonSource`, `LeadPersonSubStatus`, `LeadProjectId`) VALUES
(1, 'Amethyst Doyle', 'Miss.', '+1 (184) 177-5511', 'lykyleqo@mailinator.com', 'Consequatur Omnis e', '2023-10-20 11:25:12 AM', '2023-10-20 11:25:12 AM', '1', '1', '', 'LOW', 'THVyYUdVczltVjhORU9nYVBTck9kZnhCUVh2dklzdkZIVjEvUDlvdm80ST0=', 'Facebook', '', 'Deen Dayal Plots - Residential Plots'),
(2, 'Angela Cain', 'Sir.', '+1 (711) 615-8067', 'cikanod@mailinator.com', 'Sunt in ea sit perf', '2023-10-20 11:25:19 AM', '2023-10-20 11:25:19 AM', '1', '1', '', 'MEDIUM', 'UWJiOHAzODRJd3dha1M3WERQeW9GSEVCY1UzdGlvMFpzN1ljNUhqSHFsZz0=', 'Housing.in', '', 'Deen Dayal Plots - Residential Plots'),
(3, 'Rahim Montgomery', 'Mr.', '+1 (976) 349-8808', 'wukoma@mailinator.com', 'Omnis consequat Eli', '2023-10-20 11:25:23 AM', '2023-10-20 11:25:23 AM', '1', '1', '', 'HIGH', 'L1N0MGpNYXFRblJCYWxDeXlRWUYyNkYxWXpFdzMxU0pJRjhqc0l6N1hidz0=', '99acre', '', 'GCC 88A - Retail Shops'),
(4, 'Barbara Fuentes', 'Mrs.', '+1 (527) 786-6961', 'ronecojep@mailinator.com', 'Soluta dolorum rerum', '2023-10-20 11:25:28 AM', '2023-10-20 11:25:28 AM', '1', '1', '', 'LOW', 'enE5NWQ0SzRWSWx6dlVEcWlyUFdwWWNCTUt4TytORGNZNEcrcWZxbTd0ND0=', 'Google Ads', '', 'Deen Dayal Plots - Residential Plots'),
(5, 'Nadine Mathews', 'Sir.', '+1 (942) 274-4585', 'qiredetehu@mailinator.com', 'Officiis in voluptat', '2023-10-20 11:25:33 AM', '2023-10-20 11:25:33 AM', '1', '1', '', 'HIGH', 'NlhINVY2WWlvOFZWSHdrZkErMmthblNMQ05jWWRZZWVVOGYzS2FrUVRqaz0=', 'News Paper ad', '', 'GH-89 - Affordable Housing Projects'),
(6, 'Ainsley Conway', 'Prof.', '+1 (449) 314-1079', 'kere@mailinator.com', 'Temporibus ratione e', '2023-10-20 11:26:46 AM', '2023-10-20 11:26:46 AM', '1', '1', '', 'LOW', 'ZmJYZTdJVUZvZlRtNUtaVU9OUTZUTDV4T1JYbVVOUVR5Q3hWYnozcDRaMD0=', 'News Paper ad', '', 'Deen Dayal Plots - Residential Plots'),
(7, 'Gwendolyn Reilly', 'Mrs.', '+1 (236) 913-6571', 'geca@mailinator.com', 'Sint officia iusto c', '2023-10-20 11:26:54 AM', '2023-10-20 11:26:54 AM', '1', '1', '', 'MEDIUM', 'M0VDR1JTZkVSbnRxanN4emc3NmpVQTNydEgxWGpjMFpZekdLZGhMdEtkMD0=', 'Trade India', '', 'Deen Dayal Plots - Residential Plots'),
(8, 'Signe Salas', 'Prof.', '+1 (726) 927-6679', 'mygepicydi@mailinator.com', 'Asperiores rerum dol', '2023-10-20 11:27:01 AM', '2023-10-25', '1', '1', 'Follow Up', 'LOW', 'MzBtUlZoZkhnVEE2Q0dzZHFRU2xSZWhBbDhuK0Fjd1h0RDBLY3l1Sjdycz0=', 'Facebook', 'INFORMATION SHARING', 'GCC 88A - Retail Shops'),
(9, 'Alana Rich', 'Sir.', '+1 (587) 979-1783', 'lygumavek@mailinator.com', 'Sed facilis libero m', '2023-10-20 11:27:10 AM', '2023-10-25', '1', '1', 'Follow Up', 'HIGH', 'YU0wTFYremVnb2R4Qnlxa3NNc250TEh0WW9HNGZmSEk2YzVROHhtODRTcz0=', 'Trade India', 'INFORMATION SHARING', '22');

-- --------------------------------------------------------

--
-- Table structure for table `lead_followups`
--

CREATE TABLE `lead_followups` (
  `LeadFollowUpId` int(100) NOT NULL,
  `LeadFollowMainId` varchar(100) NOT NULL,
  `LeadFollowStatus` varchar(100) NOT NULL,
  `LeadFollowCurrentStatus` varchar(100) NOT NULL,
  `LeadFollowUpDate` varchar(100) NOT NULL,
  `LeadFollowUpTime` varchar(100) NOT NULL,
  `LeadFollowUpDescriptions` varchar(1000) NOT NULL,
  `LeadFollowUpHandleBy` varchar(100) NOT NULL,
  `LeadFollowUpCreatedAt` varchar(100) NOT NULL,
  `LeadFollowUpCallType` varchar(100) NOT NULL,
  `LeadFollowUpRemindStatus` varchar(1000) NOT NULL,
  `LeadFollowUpRemindNotes` varchar(1000) NOT NULL,
  `LeadFollowUpUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead_followups`
--

INSERT INTO `lead_followups` (`LeadFollowUpId`, `LeadFollowMainId`, `LeadFollowStatus`, `LeadFollowCurrentStatus`, `LeadFollowUpDate`, `LeadFollowUpTime`, `LeadFollowUpDescriptions`, `LeadFollowUpHandleBy`, `LeadFollowUpCreatedAt`, `LeadFollowUpCallType`, `LeadFollowUpRemindStatus`, `LeadFollowUpRemindNotes`, `LeadFollowUpUpdatedAt`) VALUES
(1, '9', 'Follow Up', 'INFORMATION SHARING', '2023-10-20', '12:23 PM', 'dfjvdmfnmndm', '1', '2023-10-20 12:24:51 PM', 'outgoing', 'INACTIVE', 'dfjvdmfnmndm', '2023-10-20 12:24:51 PM'),
(2, '9', 'Ringing', 'Ringing', '', '', 'cv v', '1', '2023-10-20 02:03:20 PM', 'outgoing', 'INACTIVE', '', '2023-10-20 02:03:20 PM'),
(3, '9', 'Follow Up', 'INFORMATION SHARING', '2023-10-20', '02:14 PM', 'bnn', '1', '2023-10-20 02:09:26 PM', 'outgoing', 'INACTIVE', 'bnn', '2023-10-20 02:09:26 PM'),
(4, '9', 'Fresh Leads', ' ', '', '', 'mnbnmb', '1', '2023-10-20 02:52:13 PM', 'outgoing', 'INACTIVE', '', '2023-10-20 02:52:13 PM'),
(5, '9', 'Sales Closed', 'Close', '', '', 'bnmbnmbnm', '1', '2023-10-20 02:54:26 PM', 'outgoing', 'INACTIVE', '', '2023-10-20 02:54:26 PM'),
(6, '9', 'Registration done', 'Registration done', '', '', 'nbnbnm', '1', '2023-10-20 02:59:05 PM', 'outgoing', 'INACTIVE', '', '2023-10-20 02:59:05 PM'),
(7, '9', 'Sales Closed', 'Close', '', '', 'nbnmbnm', '1', '2023-10-20 02:59:55 PM', 'outgoing', 'INACTIVE', '', '2023-10-20 02:59:55 PM'),
(8, '9', 'Ringing', 'Ringing', '', '', 'nbmbnm', '1', '2023-10-20 03:08:27 PM', 'outgoing', 'INACTIVE', '', '2023-10-20 03:08:27 PM'),
(9, '8', 'Follow Up', 'SITE VISIT PLANNED', '2023-10-20', '03:14 PM', 'bmnbmnbnm', '1', '2023-10-20 03:09:46 PM', 'outgoing', 'INACTIVE', 'bmnbmnbnm', '2023-10-20 03:09:46 PM'),
(10, '9', 'Follow Up', 'CALL BACK', '2023-10-20', '03:11 PM', 'testings', '1', '2023-10-20 03:10:14 PM', 'outgoing', 'INACTIVE', 'testings', '2023-10-20 03:10:14 PM'),
(11, '9', 'Ringing', 'Ringing', '', '', 'nbmn', '1', '2023-10-20 06:10:08 PM', 'outgoing', 'INACTIVE', '', '2023-10-20 06:10:08 PM'),
(12, '9', 'Follow Up', 'INFORMATION SHARING', '2023-10-25', '12:26 PM', 'testings', '1', '2023-10-25 12:25:38 PM', 'outgoing', 'ACTIVE', 'testings', '2023-10-25 12:25:38 PM'),
(13, '8', 'Follow Up', 'INFORMATION SHARING', '2023-10-25', '03:02 PM', 'tetsings', '1', '2023-10-25 03:00:37 PM', 'outgoing', 'ACTIVE', 'tetsings', '2023-10-25 03:00:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `lead_followup_durations`
--

CREATE TABLE `lead_followup_durations` (
  `leadcallId` int(10) NOT NULL,
  `LeadCallFollowUpMainId` int(10) NOT NULL,
  `leadcallstartat` varchar(45) NOT NULL,
  `leadcallendat` varchar(45) NOT NULL,
  `leadcallcreatedat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead_followup_durations`
--

INSERT INTO `lead_followup_durations` (`leadcallId`, `LeadCallFollowUpMainId`, `leadcallstartat`, `leadcallendat`, `leadcallcreatedat`) VALUES
(1, 1, '2023-10-20 12:24:36 pm', '2023-10-20 12:24:51 PM', '2023-10-20 12:24:51 PM'),
(2, 2, '2023-10-20 02:03:11 pm', '2023-10-20 02:03:20 PM', '2023-10-20 02:03:20 PM'),
(3, 3, '2023-10-20 02:09:16 pm', '2023-10-20 02:09:26 PM', '2023-10-20 02:09:26 PM'),
(4, 4, '2023-10-20 02:52:04 pm', '2023-10-20 02:52:13 PM', '2023-10-20 02:52:13 PM'),
(5, 5, '2023-10-20 02:54:11 pm', '2023-10-20 02:54:26 PM', '2023-10-20 02:54:26 PM'),
(6, 6, '2023-10-20 02:58:54 pm', '2023-10-20 02:59:05 PM', '2023-10-20 02:59:05 PM'),
(7, 7, '2023-10-20 02:59:47 pm', '2023-10-20 02:59:55 PM', '2023-10-20 02:59:55 PM'),
(8, 8, '2023-10-20 03:08:02 pm', '2023-10-20 03:08:27 PM', '2023-10-20 03:08:27 PM'),
(9, 9, '2023-10-20 03:09:32 pm', '2023-10-20 03:09:46 PM', '2023-10-20 03:09:46 PM'),
(10, 10, '2023-10-20 03:10:00 pm', '2023-10-20 03:10:14 PM', '2023-10-20 03:10:14 PM'),
(11, 11, '2023-10-20 06:09:58 pm', '2023-10-20 06:10:08 PM', '2023-10-20 06:10:08 PM'),
(12, 12, '2023-10-25 12:25:18 pm', '2023-10-25 12:25:38 PM', '2023-10-25 12:25:38 PM'),
(13, 13, '2023-10-25 03:00:19 pm', '2023-10-25 03:00:37 PM', '2023-10-25 03:00:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `lead_requirements`
--

CREATE TABLE `lead_requirements` (
  `LeadRequirementID` int(10) NOT NULL,
  `LeadMainId` int(10) NOT NULL,
  `LeadRequirementDetails` varchar(200) NOT NULL,
  `LeadRequirementCreatedAt` varchar(100) NOT NULL,
  `LeadRequirementStatus` varchar(100) NOT NULL,
  `LeadRequirementNotes` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead_requirements`
--

INSERT INTO `lead_requirements` (`LeadRequirementID`, `LeadMainId`, `LeadRequirementDetails`, `LeadRequirementCreatedAt`, `LeadRequirementStatus`, `LeadRequirementNotes`) VALUES
(1, 1, 'Deen Dayal Plots - Residential Plots', '2023-10-20 11:25:12 AM', '1', ''),
(2, 1, 'GH-89 - Affordable Housing Projects', '2023-10-20 11:25:12 AM', '1', ''),
(3, 1, 'Yash Vihar- Pataudi Sector-5 - Residential Plots', '2023-10-20 11:25:12 AM', '1', ''),
(4, 1, 'Sohna Greens - Residential Plots', '2023-10-20 11:25:12 AM', '1', ''),
(5, 1, 'M3M Sector 79 - Residential Plots', '2023-10-20 11:25:12 AM', '1', ''),
(6, 1, 'M3M Route 65 - Commercial Space', '2023-10-20 11:25:12 AM', '1', ''),
(7, 1, 'Aashiyara II - Sec 37C - Commercial Space', '2023-10-20 11:25:12 AM', '1', ''),
(8, 1, 'Flora Avenue 33 - Residential Flats', '2023-10-20 11:25:12 AM', '1', ''),
(9, 1, 'Signature Global Park 4 &amp; 5 - Residential Flats', '2023-10-20 11:25:12 AM', '1', ''),
(10, 1, 'Orange Prime CIty - Sector 6 (Jhajjar Plots) - Residential Plots', '2023-10-20 11:25:12 AM', '1', ''),
(11, 2, 'Deen Dayal Plots - Residential Plots', '2023-10-20 11:25:19 AM', '1', ''),
(12, 2, 'Yash Vihar- Pataudi Sector-5 - Residential Plots', '2023-10-20 11:25:19 AM', '1', ''),
(13, 2, 'Others - Affordable Housing Projects', '2023-10-20 11:25:19 AM', '1', ''),
(14, 2, 'Sohna Greens - Residential Plots', '2023-10-20 11:25:19 AM', '1', ''),
(15, 2, 'M3M Sector 79 - Residential Plots', '2023-10-20 11:25:19 AM', '1', ''),
(16, 2, 'M3M Capital Walk 113 - Commercial Space', '2023-10-20 11:25:19 AM', '1', ''),
(17, 2, 'Flora Avenue 33 - Residential Flats', '2023-10-20 11:25:19 AM', '1', ''),
(18, 2, 'Ashiana Anmol - Residential Flats', '2023-10-20 11:25:19 AM', '1', ''),
(19, 2, 'Signature Global Park 4 &amp; 5 - Residential Flats', '2023-10-20 11:25:19 AM', '1', ''),
(20, 2, 'Orange Prime CIty - Sector 6 (Jhajjar Plots) - Residential Plots', '2023-10-20 11:25:19 AM', '1', ''),
(21, 2, 'Yamuna City Mall - Commercial Space', '2023-10-20 11:25:19 AM', '1', ''),
(22, 2, 'M3M - Residential Plots', '2023-10-20 11:25:19 AM', '1', ''),
(23, 2, 'GOKULAM - Residential Plots', '2023-10-20 11:25:19 AM', '1', ''),
(24, 3, 'GCC 88A - Retail Shops', '2023-10-20 11:25:23 AM', '1', ''),
(25, 3, 'Others - Affordable Housing Projects', '2023-10-20 11:25:23 AM', '1', ''),
(26, 3, 'Sohna Greens - Residential Plots', '2023-10-20 11:25:23 AM', '1', ''),
(27, 3, 'M3M Route 65 - Commercial Space', '2023-10-20 11:25:23 AM', '1', ''),
(28, 3, 'Flora Avenue 33 - Residential Flats', '2023-10-20 11:25:23 AM', '1', ''),
(29, 3, 'Signature Global City 81 - Residential Flats', '2023-10-20 11:25:23 AM', '1', ''),
(30, 3, 'Ashiana Anmol - Residential Flats', '2023-10-20 11:25:23 AM', '1', ''),
(31, 3, 'Ganga Realty TATHASTU - Affordable Housing Projects', '2023-10-20 11:25:23 AM', '1', ''),
(32, 3, 'Yamuna City Mall - Commercial Space', '2023-10-20 11:25:23 AM', '1', ''),
(33, 3, 'DATA - Residential Plots', '2023-10-20 11:25:23 AM', '1', ''),
(34, 3, 'GOKULAM - Residential Plots', '2023-10-20 11:25:23 AM', '1', ''),
(35, 4, 'Deen Dayal Plots - Residential Plots', '2023-10-20 11:25:28 AM', '1', ''),
(36, 4, 'Others - Affordable Housing Projects', '2023-10-20 11:25:28 AM', '1', ''),
(37, 4, 'M3M Route 65 - Commercial Space', '2023-10-20 11:25:28 AM', '1', ''),
(38, 4, 'Flora Avenue 33 - Residential Flats', '2023-10-20 11:25:28 AM', '1', ''),
(39, 4, 'Signature Global City 81 - Residential Flats', '2023-10-20 11:25:28 AM', '1', ''),
(40, 4, 'Ganga Realty TATHASTU - Affordable Housing Projects', '2023-10-20 11:25:28 AM', '1', ''),
(41, 4, 'Saras City - Residential Plots', '2023-10-20 11:25:28 AM', '1', ''),
(42, 4, 'M3M - Residential Plots', '2023-10-20 11:25:28 AM', '1', ''),
(43, 5, 'GH-89 - Affordable Housing Projects', '2023-10-20 11:25:33 AM', '1', ''),
(44, 5, 'M3M Capital Walk 113 - Commercial Space', '2023-10-20 11:25:33 AM', '1', ''),
(45, 5, 'Aashiyara II - Sec 37C - Commercial Space', '2023-10-20 11:25:33 AM', '1', ''),
(46, 5, 'Flora Avenue 33 - Residential Flats', '2023-10-20 11:25:33 AM', '1', ''),
(47, 5, 'Ashiana Anmol - Residential Flats', '2023-10-20 11:25:33 AM', '1', ''),
(48, 5, 'Signature Global Park 4 &amp; 5 - Residential Flats', '2023-10-20 11:25:33 AM', '1', ''),
(49, 5, 'Orange Prime CIty - Sector 6 (Jhajjar Plots) - Residential Plots', '2023-10-20 11:25:33 AM', '1', ''),
(50, 5, 'Ganga Realty TATHASTU - Affordable Housing Projects', '2023-10-20 11:25:33 AM', '1', ''),
(51, 5, 'GOKULAM - Residential Plots', '2023-10-20 11:25:33 AM', '1', ''),
(52, 6, 'Deen Dayal Plots - Residential Plots', '2023-10-20 11:26:46 AM', '1', ''),
(53, 6, 'GCC 88A - Retail Shops', '2023-10-20 11:26:46 AM', '1', ''),
(54, 6, 'Oasis Grand Stand - Residential Flats', '2023-10-20 11:26:46 AM', '1', ''),
(55, 6, 'GH-89 - Affordable Housing Projects', '2023-10-20 11:26:46 AM', '1', ''),
(56, 6, 'Yash Vihar- Pataudi Sector-5 - Residential Plots', '2023-10-20 11:26:46 AM', '1', ''),
(57, 6, 'M3M Sector 79 - Residential Plots', '2023-10-20 11:26:46 AM', '1', ''),
(58, 6, 'Ashiana Anmol - Residential Flats', '2023-10-20 11:26:46 AM', '1', ''),
(59, 6, 'Ganga Realty TATHASTU - Affordable Housing Projects', '2023-10-20 11:26:46 AM', '1', ''),
(60, 6, 'Yamuna City Mall - Commercial Space', '2023-10-20 11:26:46 AM', '1', ''),
(61, 6, 'Saras City - Residential Plots', '2023-10-20 11:26:46 AM', '1', ''),
(62, 6, 'DATA - Residential Plots', '2023-10-20 11:26:46 AM', '1', ''),
(63, 6, 'GOKULAM - Residential Plots', '2023-10-20 11:26:46 AM', '1', ''),
(64, 7, 'Deen Dayal Plots - Residential Plots', '2023-10-20 11:26:54 AM', '1', ''),
(65, 7, 'Gallexie 91 - Commercial Space', '2023-10-20 11:26:54 AM', '1', ''),
(66, 7, 'GCC 88A - Retail Shops', '2023-10-20 11:26:54 AM', '1', ''),
(67, 7, 'GH-89 - Affordable Housing Projects', '2023-10-20 11:26:54 AM', '1', ''),
(68, 7, 'Yash Vihar- Pataudi Sector-5 - Residential Plots', '2023-10-20 11:26:54 AM', '1', ''),
(69, 7, 'Others - Affordable Housing Projects', '2023-10-20 11:26:54 AM', '1', ''),
(70, 7, 'M3M Sector 79 - Residential Plots', '2023-10-20 11:26:54 AM', '1', ''),
(71, 7, 'M3M Capital Walk 113 - Commercial Space', '2023-10-20 11:26:54 AM', '1', ''),
(72, 7, 'Flora Avenue 33 - Residential Flats', '2023-10-20 11:26:54 AM', '1', ''),
(73, 7, 'Signature Global Park 4 &amp; 5 - Residential Flats', '2023-10-20 11:26:54 AM', '1', ''),
(74, 7, 'Orange Prime CIty - Sector 6 (Jhajjar Plots) - Residential Plots', '2023-10-20 11:26:54 AM', '1', ''),
(75, 7, 'Ganga Realty TATHASTU - Affordable Housing Projects', '2023-10-20 11:26:54 AM', '1', ''),
(76, 7, 'Yamuna City Mall - Commercial Space', '2023-10-20 11:26:54 AM', '1', ''),
(77, 7, 'GOKULAM - Residential Plots', '2023-10-20 11:26:54 AM', '1', ''),
(78, 8, 'GCC 88A - Retail Shops', '2023-10-20 11:27:01 AM', '1', ''),
(79, 8, 'GH-89 - Affordable Housing Projects', '2023-10-20 11:27:01 AM', '1', ''),
(80, 8, 'Yash Vihar- Pataudi Sector-5 - Residential Plots', '2023-10-20 11:27:01 AM', '1', ''),
(81, 8, 'Others - Affordable Housing Projects', '2023-10-20 11:27:01 AM', '1', ''),
(82, 8, 'M3M Sector 79 - Residential Plots', '2023-10-20 11:27:01 AM', '1', ''),
(83, 8, 'M3M Capital Walk 113 - Commercial Space', '2023-10-20 11:27:01 AM', '1', ''),
(84, 8, 'Signature Global City 81 - Residential Flats', '2023-10-20 11:27:01 AM', '1', ''),
(85, 8, 'Signature Global Park 4 &amp; 5 - Residential Flats', '2023-10-20 11:27:01 AM', '1', ''),
(86, 8, 'Orange Prime CIty - Sector 6 (Jhajjar Plots) - Residential Plots', '2023-10-20 11:27:01 AM', '1', ''),
(87, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(88, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(89, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(90, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(91, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(92, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(93, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(94, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(95, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(96, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(97, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(98, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(99, 9, '22', '2023-10-20 11:27:10 AM', '1', ''),
(100, 9, '22', '2023-10-20 11:27:10 AM', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `lead_uploads`
--

CREATE TABLE `lead_uploads` (
  `leadsUploadId` int(100) NOT NULL,
  `LeadsUploadBy` varchar(100) NOT NULL,
  `LeadsUploadedfor` varchar(100) NOT NULL,
  `LeadsName` varchar(100) NOT NULL,
  `LeadsEmail` varchar(100) NOT NULL,
  `LeadsPhone` varchar(100) NOT NULL,
  `LeadsAddress` varchar(100) NOT NULL,
  `LeadsCity` varchar(100) NOT NULL,
  `LeadsProfession` varchar(100) NOT NULL,
  `LeadsSource` varchar(100) NOT NULL,
  `UploadedOn` varchar(1000) NOT NULL,
  `LeadStatus` varchar(100) NOT NULL,
  `LeadProjectsRef` varchar(100) NOT NULL,
  `LeadType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_collaterals`
--

CREATE TABLE `marketing_collaterals` (
  `MarketingCoId` int(100) NOT NULL,
  `MarketingCoProjectName` varchar(100) NOT NULL,
  `MaterialName` varchar(100) NOT NULL,
  `AllotmentDate` varchar(40) NOT NULL,
  `NumberOfMarketingMaterial` varchar(50) NOT NULL,
  `IssuedTo` varchar(100) NOT NULL,
  `Amount` varchar(100) NOT NULL,
  `NoteAndRemarks` varchar(1000) NOT NULL,
  `CreatedAt` varchar(50) NOT NULL,
  `UpdatedAt` varchar(50) NOT NULL,
  `CreatedBy` varchar(50) NOT NULL,
  `UpdatedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newspapercompaigns`
--

CREATE TABLE `newspapercompaigns` (
  `NewCompaignId` int(10) NOT NULL,
  `NewsPaperName` varchar(100) NOT NULL,
  `ProjectName` varchar(100) NOT NULL,
  `CompaignDate` varchar(100) NOT NULL,
  `NewPaperEditions` varchar(100) NOT NULL,
  `NewPaperAdSize` varchar(100) NOT NULL,
  `PublicationDate` varchar(100) NOT NULL,
  `PublicationCost` varchar(100) NOT NULL,
  `UploadCreative` varchar(100) NOT NULL,
  `ContactPersonName` varchar(100) NOT NULL,
  `ContactPersonPhoneNumber` varchar(20) NOT NULL,
  `NewsPaperLink` varchar(1000) NOT NULL,
  `CreatedAt` varchar(100) NOT NULL,
  `UpdatedAt` varchar(100) NOT NULL,
  `CreatedBy` varchar(10) NOT NULL,
  `UpdatedBy` varchar(10) NOT NULL,
  `PublicationNotes` varchar(10000) NOT NULL,
  `CompaignStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NotificationsId` bigint(100) NOT NULL,
  `NotificationRefNo` varchar(100) NOT NULL,
  `NotificationSenderId` int(10) NOT NULL,
  `NotificationReceiverId` int(10) NOT NULL,
  `NotificationDetails` varchar(10000) NOT NULL,
  `NotificationSendDateTime` varchar(30) NOT NULL,
  `NotificationStatus` varchar(10) NOT NULL,
  `NotificationReadAt` varchar(25) NOT NULL,
  `NotificationResponseModule` varchar(1000) NOT NULL,
  `NotificationName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `od_forms`
--

CREATE TABLE `od_forms` (
  `OdFormId` int(10) NOT NULL,
  `OdReferenceId` varchar(100) NOT NULL,
  `OdMainUserId` int(10) NOT NULL,
  `OdTeamLeaderId` int(10) NOT NULL,
  `OdPermissionTimeFrom` varchar(30) NOT NULL,
  `OdPermissionTimeTo` varchar(30) NOT NULL,
  `OdRequestDate` varchar(40) NOT NULL,
  `OdBriefReason` varchar(1000) NOT NULL,
  `OdLeadMainId` int(100) NOT NULL,
  `OdLocationDetails` varchar(1000) NOT NULL,
  `OdCreatedBy` int(10) NOT NULL,
  `OdCreatedAt` varchar(40) NOT NULL,
  `OdUpdatedAt` varchar(40) NOT NULL,
  `OdUpdatedBy` varchar(40) NOT NULL,
  `ODFormStatus` varchar(100) NOT NULL DEFAULT 'NEW'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `od_form_attachements`
--

CREATE TABLE `od_form_attachements` (
  `OdFormAttachmentId` int(100) NOT NULL,
  `OdFormMainId` varchar(100) NOT NULL,
  `OdFormAttachedFile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `od_form_status`
--

CREATE TABLE `od_form_status` (
  `OdFormStatuslId` int(10) NOT NULL,
  `OdFormMainId` int(10) NOT NULL,
  `OdFormStatusAddedBy` int(10) NOT NULL,
  `OdFormStatusRemarks` varchar(1000) NOT NULL,
  `OdFormStatusAddedAt` varchar(40) NOT NULL,
  `OdFormStatus` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `payrolls_id` int(10) NOT NULL,
  `payrolls_ref_no` varchar(100) NOT NULL,
  `payrolls_from_date` varchar(40) NOT NULL,
  `payrolls_to_date` varchar(40) NOT NULL,
  `payrolls_type` varchar(100) NOT NULL,
  `payrolls_status` varchar(100) NOT NULL,
  `payrolls_created_at` varchar(40) NOT NULL,
  `payrolls_main_user_id` int(10) NOT NULL,
  `payroll_net_presents` int(2) NOT NULL,
  `payroll_short_leaves` int(2) NOT NULL,
  `payroll_holidays` int(2) NOT NULL,
  `payroll_total_presents` int(10) NOT NULL,
  `payroll_total_absants` int(10) NOT NULL,
  `payroll_total_lates` int(10) NOT NULL,
  `payroll_total_meetings` int(10) NOT NULL,
  `payroll_total_leaves` int(10) NOT NULL,
  `payroll_half_days` int(2) NOT NULL,
  `payroll_updated_at` varchar(40) NOT NULL,
  `payroll_closed_at` varchar(40) NOT NULL,
  `payroll_mail_sent_at` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_allowances`
--

CREATE TABLE `payroll_allowances` (
  `pay_allowance_id` int(10) NOT NULL,
  `payroll_main_id` int(10) NOT NULL,
  `pay_allowance_name` varchar(255) NOT NULL,
  `pay_allowance_amount` int(10) NOT NULL,
  `pay_allowance_descriptions` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_deductions`
--

CREATE TABLE `payroll_deductions` (
  `pay_deduction_id` int(10) NOT NULL,
  `payroll_main_id` int(10) NOT NULL,
  `pay_deduction_name` varchar(255) NOT NULL,
  `pay_deduction_amount` int(10) NOT NULL,
  `pay_deduction_descriptions` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectsId` int(100) NOT NULL,
  `ProjectName` varchar(100) NOT NULL,
  `ProjectTypeId` int(10) NOT NULL,
  `ProjectDescriptions` varchar(10000) NOT NULL,
  `ProjectCreatedAt` varchar(100) NOT NULL,
  `ProjectCreatedBy` varchar(100) NOT NULL,
  `ProjectUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ProjectsId`, `ProjectName`, `ProjectTypeId`, `ProjectDescriptions`, `ProjectCreatedAt`, `ProjectCreatedBy`, `ProjectUpdatedAt`) VALUES
(6, 'Deen Dayal Plots', 16, 'N0RwQ0tOV3ZnbkVzaGE4ck5acUVXZz09', '2022-10-01 11:10:04 AM', '1', '2022-10-14 01:10:07 PM'),
(7, 'Gallexie 91', 17, 'N0RwQ0tOV3ZnbkVzaGE4ck5acUVXZz09', '2022-10-01 11:10:10 AM', '1', '2022-11-15 11:11:02 AM'),
(11, 'GCC 88A', 15, 'N0RwQ0tOV3ZnbkVzaGE4ck5acUVXZz09', '2022-10-01 11:10:12 AM', '1', '2022-11-30 11:11:14 AM'),
(13, 'Oasis Grand Stand', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-10-08 01:10:59 PM', '1', '2022-12-30 03:12:33 PM'),
(14, 'GH-89', 86, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-10-08 01:10:28 PM', '1', '2022-10-08 01:10:28 PM'),
(16, 'Yash Vihar- Pataudi Sector-5', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-10-14 01:10:53 PM', '1', '2022-10-14 01:10:53 PM'),
(17, 'Others', 86, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-10-14 01:10:42 PM', '1', '2023-03-10 01:24:30 PM'),
(18, 'Sohna Greens', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-11-12 06:11:38 PM', '1', '2022-11-12 06:11:38 PM'),
(19, 'M3M Sector 79', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-11-19 11:11:45 AM', '1', '2022-11-19 11:11:45 AM'),
(20, 'M3M Route 65', 17, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-11-30 12:11:11 PM', '1', '2022-11-30 12:11:11 PM'),
(21, 'M3M Capital Walk 113', 17, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-11-30 12:11:38 PM', '1', '2022-11-30 12:11:38 PM'),
(22, 'Aashiyara II - Sec 37C', 17, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-14 10:12:28 AM', '1', '2022-12-14 10:12:28 AM'),
(23, 'Flora Avenue 33', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-28 05:12:07 PM', '14', '2022-12-28 05:12:07 PM'),
(24, 'Signature Global City 81', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-30 02:12:45 PM', '14', '2022-12-30 03:12:38 PM'),
(25, 'Ashiana Anmol', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-30 02:12:13 PM', '14', '2022-12-30 02:12:13 PM'),
(26, 'Signature Global Park 4 &amp; 5', 84, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2022-12-30 03:12:24 PM', '14', '2022-12-30 03:12:24 PM'),
(27, 'Orange Prime CIty - Sector 6 (Jhajjar Plots)', 16, 'ZU1aZzNaS3BNR04xeXJnc2dtSFJlWG5zZzB6dnRPRmdMWmQ3RWJMZlFuekJNak1KOThaRnpyTHBWb0NHNzFwSQ==', '2023-01-31 12:01:05 PM', '14', '2023-02-12 09:02:07 PM'),
(28, 'Ganga Realty TATHASTU', 86, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-02-16 01:02:30 PM', '14', '2023-02-16 01:02:53 PM'),
(29, 'Yamuna City Mall', 17, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-05-04 01:14:53 pm', '14', '2023-05-04 01:14:53 pm'),
(30, 'Saras City', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-07-05 02:19:05 pm', '14', '2023-07-05 02:19:05 pm'),
(31, 'DATA', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-07-25 10:17:03 am', '14', '2023-07-25 10:17:03 am'),
(32, 'M3M', 16, 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '2023-08-01 11:23:43 am', '14', '2023-08-01 11:23:43 am'),
(33, 'GOKULAM', 16, 'S3V2bGkvK0szRXdUV1BEOXVUbDdzUT09', '2023-08-12 04:23:26 pm', '14', '2023-08-12 04:23:26 pm');

-- --------------------------------------------------------

--
-- Table structure for table `project_media_files`
--

CREATE TABLE `project_media_files` (
  `ProjectMediaFileId` int(10) NOT NULL,
  `ProjectMainId` int(10) NOT NULL,
  `ProjectMediaFileName` varchar(1000) NOT NULL,
  `ProjectMediaFileType` varchar(100) NOT NULL,
  `ProjectMediaFileDocument` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_media_files`
--

INSERT INTO `project_media_files` (`ProjectMediaFileId`, `ProjectMainId`, `ProjectMediaFileName`, `ProjectMediaFileType`, `ProjectMediaFileDocument`) VALUES
(21, 16, 'Brochure', 'pdf', 'Brochure_pdf_30_Nov_2022_12_11_09_17841195113_.pdf'),
(22, 13, 'Brochure', 'pdf', 'Brochure_pdf_30_Nov_2022_12_11_47_18963382426_.pdf'),
(23, 20, 'Brochure', 'pdf', 'Brochure_pdf_30_Nov_2022_12_11_47_8904976018_.pdf'),
(24, 20, 'Route 65', 'images', 'Route_65_images_30_Nov_2022_12_11_25_53699983533_.jpg'),
(25, 22, 'Price List', 'pdf', 'Price_List_pdf_14_Dec_2022_10_12_45_87484588405_.pdf'),
(26, 22, 'Brochure', 'pdf', 'Brochure_pdf_14_Dec_2022_11_12_37_24044512655_.pdf'),
(27, 27, 'Price List', 'pdf', 'Price_List_pdf_31_Jan_2023_12_01_54_20414677253_.pdf'),
(28, 28, 'Brochure', 'pdf', 'Brochure_pdf_16_Feb_2023_01_02_46_71636588108_.pdf'),
(29, 28, 'Tathastu 1', 'images', 'Tathastu_1_images_16_Feb_2023_01_02_38_30541058377_.jpg'),
(31, 11, 'Brochure', 'pdf', 'Brochure_pdf_02_Mar_2023_06_03_24_49301612802_.pdf'),
(32, 11, 'GCC 88A ', 'images', 'GCC_88A__images_02_Mar_2023_06_03_59_17946055367_.jpg'),
(33, 27, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_40_45423192051_.pdf'),
(34, 26, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_41_58932049149_.pdf'),
(35, 26, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_08_38264774774_.jpg'),
(36, 25, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_36_76126285303_.pdf'),
(37, 25, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_03_20084948102_.jpg'),
(38, 24, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_32_36479502365_.pdf'),
(39, 24, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_58_96914289590_.jpg'),
(40, 23, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_25_8539692186_.pdf'),
(41, 23, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_57_52094779839_.jpg'),
(42, 14, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_07_9677900740_.pdf'),
(43, 14, 'Images', 'images', 'Images_images_10_Mar_2023_01_03_26_18930494931_.jpg'),
(44, 7, 'Brochure', 'pdf', 'Brochure_pdf_10_Mar_2023_01_03_35_82554658816_.pdf'),
(45, 30, 'Brochure', 'pdf', 'Brochure_pdf_05_Jul_2023_02_07_01_99938987149_.pdf'),
(46, 30, 'Price List', 'pdf', 'Price_List_pdf_05_Jul_2023_02_07_10_24293902710_.pdf'),
(47, 30, 'Images', 'images', 'Images_images_05_Jul_2023_02_07_22_59769994217_.jpg'),
(48, 30, 'Images2', 'images', 'Images2_images_05_Jul_2023_02_07_58_1468991525_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_units`
--

CREATE TABLE `project_units` (
  `project_unit_id` int(10) NOT NULL,
  `project_main_id` int(10) NOT NULL,
  `project_unit_name` varchar(100) NOT NULL,
  `project_unit_type` varchar(100) NOT NULL,
  `project_unit_area` varchar(100) NOT NULL,
  `project_unit_area_type` varchar(100) NOT NULL,
  `project_unit_rate` varchar(50) NOT NULL,
  `project_unit_descriptions` longtext NOT NULL,
  `project_unit_status` varchar(50) NOT NULL,
  `project_unit_created_at` varchar(25) NOT NULL,
  `project_unit_updated_at` varchar(25) NOT NULL,
  `project_unit_created_by` int(10) NOT NULL,
  `project_unit_updated_by` int(10) NOT NULL,
  `project_unit_floor_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reception_activity`
--

CREATE TABLE `reception_activity` (
  `reception_activity_id` int(100) NOT NULL,
  `reception_activity_user_main_id` int(10) NOT NULL,
  `reception_activity_type_of_activity` varchar(200) NOT NULL,
  `reception_activity_place_of_activity_number` varchar(200) NOT NULL,
  `reception_activity_customer_email_id` varchar(150) NOT NULL,
  `reception_activity_customer_name` varchar(200) NOT NULL,
  `reception_activity_customer_mobile` int(12) NOT NULL,
  `reception_activity_customer_address` varchar(300) NOT NULL,
  `reception_activity_out_time` varchar(100) NOT NULL,
  `reception_activity_in_time` varchar(100) NOT NULL,
  `reception_activity_city` varchar(100) NOT NULL,
  `reception_activity_state` varchar(100) NOT NULL,
  `reception_activity_pincode` int(200) NOT NULL,
  `reception_activity_status` varchar(20) NOT NULL,
  `reception_activity_note_remark` mediumtext NOT NULL,
  `reception_activity_created_at` varchar(150) NOT NULL,
  `reception_activity_updated_at` varchar(150) NOT NULL,
  `reception_activity_created_by` int(100) NOT NULL,
  `reception_activity_updated_by` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reception_activity`
--

INSERT INTO `reception_activity` (`reception_activity_id`, `reception_activity_user_main_id`, `reception_activity_type_of_activity`, `reception_activity_place_of_activity_number`, `reception_activity_customer_email_id`, `reception_activity_customer_name`, `reception_activity_customer_mobile`, `reception_activity_customer_address`, `reception_activity_out_time`, `reception_activity_in_time`, `reception_activity_city`, `reception_activity_state`, `reception_activity_pincode`, `reception_activity_status`, `reception_activity_note_remark`, `reception_activity_created_at`, `reception_activity_updated_at`, `reception_activity_created_by`, `reception_activity_updated_by`) VALUES
(1, 1, '2', 'hukj', 'adu@gmail.com', 'bhgjhjk', 2147483647, 'Dhaiya dhanbad near raj academy high school', 'jh', 'jn8', 'Dhanbad', 'Jharkhand', 826004, '1', 'OEhMTHZHVWd5a01QdkFncTBKajB0dz09', '2023-11-06 05:08:27 PM', '2023-11-08 01:34:25 PM', 1, 1),
(2, 197, '1', '271', 'lefob@mailinator.com', 'Sasha Huff', 1, 'Possimus omnis duci', 'Dicta ut aute sit se', 'Impedit voluptatem', 'Minim quos consequun', 'Aut dolor et rerum e', 0, '1', 'RFlJb3JWQitoVlNHQUYvaUlhMmRHNWFKenlCcXJmVU1NVk1JelBvejY2WT0=', '2023-11-16 01:56:51 PM', '2023-11-16 01:56:51 PM', 1, 1),
(3, 1, '2', '590', 'vake@mailinator.com', 'Macaulay Mcmahon', 1, 'Nulla sint aliquid a', 'Sunt praesentium vol', 'Tempora laboris maxi', 'Et sint dolor id qu', 'Voluptatibus est in', 0, '2', 'OHZzSDBmREhkeHZrVGtNTW5SeUkwRUFSQkJUaC9RaWdaUkwramVBYjlaZz0=', '2023-11-16 01:58:00 PM', '2023-11-16 01:58:00 PM', 1, 1),
(4, 1, '1', '58', 'xefa@mailinator.com', 'Aidan Guerra', 1, 'Quidem magni nostrum', 'Ab vero omnis suscip', 'Error maiores molest', 'In cum et voluptatem', 'Eaque Nam et nulla n', 0, '2', 'TlkyNVY4T1BUWDVFZmV3dElVSi9DVUJFcTc3b3dYN2RoYnJlS1JOR29mRT0=', '2023-11-16 02:52:08 PM', '2023-11-16 02:52:08 PM', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reception_courier`
--

CREATE TABLE `reception_courier` (
  `reception_courier_id` int(100) NOT NULL,
  `reception_courier_user_main_id` int(10) NOT NULL,
  `reception_courier_name_of_party` varchar(100) NOT NULL,
  `reception_courier_party_contact_number` int(12) NOT NULL,
  `reception_courier_date` varchar(100) NOT NULL,
  `reception_courier_party_address` mediumtext NOT NULL,
  `reception_courier_city` varchar(100) NOT NULL,
  `reception_courier_state` varchar(100) NOT NULL,
  `reception_courier_pincode` int(100) NOT NULL,
  `reception_courier_sender_name` varchar(200) NOT NULL,
  `reception_courier_sender_contact_number` int(12) NOT NULL,
  `reception_courier_name` varchar(200) NOT NULL,
  `reception_courier_tracking_number` varchar(50) NOT NULL,
  `reception_courier_item_details` varchar(100) NOT NULL,
  `reception_courier_receipt_received` varchar(100) NOT NULL,
  `reception_courier_scan_hard_copy` varchar(500) NOT NULL,
  `reception_courier_status` int(15) NOT NULL,
  `reception_courier_returned_date` varchar(50) NOT NULL,
  `reception_courier_returned_reason` varchar(600) NOT NULL,
  `reception_courier_note_remark` mediumtext NOT NULL,
  `reception_courier_created_at` varchar(150) NOT NULL,
  `reception_courier_updated_at` varchar(150) NOT NULL,
  `reception_courier_created_by` int(100) NOT NULL,
  `reception_courier_updated_by` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reception_courier`
--

INSERT INTO `reception_courier` (`reception_courier_id`, `reception_courier_user_main_id`, `reception_courier_name_of_party`, `reception_courier_party_contact_number`, `reception_courier_date`, `reception_courier_party_address`, `reception_courier_city`, `reception_courier_state`, `reception_courier_pincode`, `reception_courier_sender_name`, `reception_courier_sender_contact_number`, `reception_courier_name`, `reception_courier_tracking_number`, `reception_courier_item_details`, `reception_courier_receipt_received`, `reception_courier_scan_hard_copy`, `reception_courier_status`, `reception_courier_returned_date`, `reception_courier_returned_reason`, `reception_courier_note_remark`, `reception_courier_created_at`, `reception_courier_updated_at`, `reception_courier_created_by`, `reception_courier_updated_by`) VALUES
(10, 1, 'GHJJ', 2147483647, '2023-11-02', 'Dhaiya dhanbad near raj academy high school', 'Dhanbad', 'Jharkhand', 826004, 'hkikj', 2147483647, '0', 'bhjhjjhj 7778788', 'hjjhjkj ', 'hjjkiuiu ', 'corier_receipts__16_Nov_2023_12_11_26_84673088871_.png', 1, '10/10/2023', 'wdfghjkl', 'Z3Q5U0U4UG1FSnlEbE9peTc0d01ZZz09', '2023-11-16 12:56:26 PM', '2023-11-16 12:56:26 PM', 1, 1),
(11, 1, 'GHJJ', 2147483647, '', 'Dhaiya dhanbad near raj academy high school', 'Dhanbad', 'Jharkhand', 826004, 'hkikj', 2147483647, '0', 'bhjhjjhj 7778788', 'hjjhjkj ', 'hjjkiuiu ', 'corier_receipts__16_Nov_2023_01_11_57_9612045439_.png', 1, '10/10/2023', 'wdfghjkl', 'RnI1WUJIMGF1NVFab1MrYUN6RnVXUT09', '2023-11-16 01:38:57 PM', '2023-11-16 01:38:57 PM', 1, 1),
(12, 1, 'GHJJ', 2147483647, '', 'Dhaiya dhanbad near raj academy high school', 'Dhanbad', 'Jharkhand', 826004, 'gyg', 2147483647, '1', 'bhjhjjhj 7778788', 'hjjhjkj ', 'kjkjk879', 'corier_receipts__16_Nov_2023_01_11_39_93932764411_.png', 0, '10/10/2023', 'asz', 'T243WE1WeHVPT1J6NXR4azJITlJ5Zz09', '2023-11-16 01:40:39 PM', '2023-11-16 01:40:39 PM', 1, 1),
(13, 1, 'Rana Jacobs', 1, '1984-08-13', 'Sit sint aliquip am', 'Provident qui commo', 'Laborum tempore vol', 0, 'Kendall Jefferson', 1, '1', '114', 'Autem excepteur et o', '+1 (882) 292-2403', '', 1, '07-Jun-1982', 'Itaque aliquam assum', 'bGx5ZWczQU80UXNJT0lrUmNncjlTNjVwdUhDSngvd1phbWJkUS9BVXZtVT0=', '2023-11-16 01:57:07 PM', '2023-11-16 01:57:07 PM', 1, 1),
(14, 1, 'Angelica Schmidt', 1, '1973-08-16', 'Amet voluptas assum', 'Quia recusandae Exe', 'Cum consectetur omn', 0, 'Shay Harrington', 1, '0', '833', 'Alias impedit facer', '+1 (136) 629-7207', '', 0, '1982-06-28', 'Perspiciatis dolore', 'eEkzdnJsL1BtT3B5VHdCRGQyVytPTjZKNDRKVXJGUDFtWGdEVW11RUMzYz0=', '2023-11-16 02:50:23 PM', '2023-11-16 02:50:23 PM', 1, 1),
(15, 1, 'Elvis Hunt', 1, '1983-07-09', 'Ea occaecat blanditi', 'Est ratione totam m', 'Placeat explicabo ', 0, 'Caleb Slater', 1, '1', '534', 'Labore voluptatem qu', '+1 (199) 865-2337', '', 1, '1986-08-02', 'Fugiat neque explic', 'Y3N1VGpGN01uOXdVMjVseXJGMC9Wd2NtTGdwQ3RrZEFRWlVmZVVmTklGYz0=', '2023-11-16 02:51:31 PM', '2023-11-16 02:51:31 PM', 1, 1),
(16, 1, 'Orli Carney', 1, '1995-11-20', 'Molestias est minim', 'Perferendis cupidita', 'Quas adipisicing asp', 0, 'Imelda Wilkins', 1, '0', '880', 'Qui soluta est culpa', '+1 (228) 536-5959', '', 1, '1981-08-18', 'Voluptatem et non in', 'bXo2ajN5cGZtUlBkSlpNZS8yL0N1TlJFaDgvTUZqWXBtdC9BcW9LUlJnMD0=', '2023-11-16 03:06:00 PM', '2023-11-16 03:06:00 PM', 1, 1),
(17, 1, 'Nita Taylor', 1, '2007-01-24', 'Dignissimos labore n', 'Ex consequat Dolor ', 'Dolor omnis eum ulla', 0, 'Thane Wilkinson', 1, '1', '547', 'Mollit esse laborum', '+1 (635) 927-8198', '', 1, '1985-11-19', 'Temporibus vitae tem', 'TzI3bEVjYWMrY0k2cngwczNlZFVHUXFtVjNTTEQrajAzNHgrUFN3Sk01bz0=', '2023-11-16 03:40:32 PM', '2023-11-16 03:40:32 PM', 1, 1),
(18, 1, 'Ariana Hart', 1, '2003-01-06', 'Non explicabo Adipi', 'Pariatur Cillum obc', 'Sequi reprehenderit ', 0, 'Price Lindsey', 1, '1', '646', 'Ratione recusandae ', '+1 (718) 328-7936', '', 1, '1987-01-22', 'Nisi id quo rerum qu', 'dXZKWllGeDVTTEIwMzNJRllIS2ZTUjNjUkRiRDU4VUllM1ByR01IVVc1QT0=', '2023-11-16 03:49:10 PM', '2023-11-16 03:49:10 PM', 1, 1),
(19, 1, 'Justine Compton', 84465765, '2023-11-07', 'Quae sunt suscipit u', 'Aliquid sint aliquip', '', 0, 'Palmer Hays', 1, '0', '479', 'Et placeat ut est e', '+1 (824) 691-8193', '', 0, '1994-09-20', 'Tempor officiis duis', 'Y0lBdndZMHpjSkxoRVdXTVo5Yjc2aVBObk5rZENZbEluQnc3TzVyazJCOD0=', '2023-11-16 03:57:11 PM', '2023-11-24 03:30:01 PM', 1, 1),
(20, 1, 'Carson Winters', 1, '1999-03-18', 'Ipsam amet voluptat', 'Rerum dolorem aliqua', 'Rerum voluptas eos e', 0, 'Bree Bell', 1, '0', '604', 'Quia nulla labore si', '+1 (365) 662-4933', '', 0, '1980-11-23', 'Aut rerum sit iure s', 'blQ4RWFJU0lEYVpSUXZLcitwK3RrN0EvKzBnZmdFSWRyMk1TOEpVQk11Yz0=', '2023-11-16 04:42:20 PM', '2023-11-16 04:42:20 PM', 1, 1),
(21, 1, 'Madaline Hudson', 1, '1985-05-18', 'Officiis laudantium', 'Ut officiis totam co', 'Odio atque odio natu', 0, 'Xantha Porter', 1, '1', '765', 'Consequuntur ipsum e', '+1 (283) 475-9857', '', 0, '2023-06-30', 'Pariatur Eum sed ab', 'MzlGK0xiOUlHYXlJSVcxaWRqK0xHRW5JMGRTUlhkTFppVkNFUUFScVVudz0=', '2023-11-16 04:46:07 PM', '2023-11-16 04:46:07 PM', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reception_meeting`
--

CREATE TABLE `reception_meeting` (
  `reception_meeting_id` int(100) NOT NULL,
  `reception_meeting_user_main_id` int(10) NOT NULL,
  `reception_meeting_date` varchar(50) NOT NULL,
  `reception_Category` varchar(30) NOT NULL,
  `reception_meeting_associate_name` varchar(50) NOT NULL,
  `reception_meeting_associate_mob_no` int(12) NOT NULL,
  `reception_meeting_select_project` int(10) NOT NULL,
  `reception_meeting_descrp_of_meeting` mediumtext NOT NULL,
  `reception_meeting_customer_name` varchar(100) NOT NULL,
  `recption_meeting_customer_mobile` int(12) NOT NULL,
  `reception_meeting_customer_address` varchar(200) NOT NULL,
  `reception_meeting_city` varchar(150) NOT NULL,
  `reception_meeting_state` varchar(150) NOT NULL,
  `recption_meeting_pincode` int(100) NOT NULL,
  `reception_meeting_out_time` varchar(50) NOT NULL,
  `reception_meeting_in_time` varchar(50) NOT NULL,
  `reception_meeting_status` int(10) NOT NULL,
  `reception_meeting_note_remark` mediumtext NOT NULL,
  `reception_meeting_created_at` varchar(150) NOT NULL,
  `reception_meeting_updated_at` varchar(150) NOT NULL,
  `reception_meeting_created_by` int(100) NOT NULL,
  `reception_meeting_updated_by` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reception_meeting`
--

INSERT INTO `reception_meeting` (`reception_meeting_id`, `reception_meeting_user_main_id`, `reception_meeting_date`, `reception_Category`, `reception_meeting_associate_name`, `reception_meeting_associate_mob_no`, `reception_meeting_select_project`, `reception_meeting_descrp_of_meeting`, `reception_meeting_customer_name`, `recption_meeting_customer_mobile`, `reception_meeting_customer_address`, `reception_meeting_city`, `reception_meeting_state`, `recption_meeting_pincode`, `reception_meeting_out_time`, `reception_meeting_in_time`, `reception_meeting_status`, `reception_meeting_note_remark`, `reception_meeting_created_at`, `reception_meeting_updated_at`, `reception_meeting_created_by`, `reception_meeting_updated_by`) VALUES
(1, 1, '', '0', 'adu', 2147483647, 0, 'hghjjhj', 'hjhjjhkh', 2147483647, 'Dhaiya dhanbad near raj academy high school', 'Dhanbad', 'Jharkhand', 826004, '3', '3', 1, 'Z3FZdlhHVHladnhaaDR3WHpxSWMrMFQreG91RHJIaHVleGxJTUtENGk4UVJWam5ZWkEvbERHWEc3a3JncXFxTFpqbFF5OWxNMXBxTmFyV0l5Y2FpNjVTQ2MzYWJ0L2lvLy9kOTFkeWN0MU93b2dHTjJtYU9nUkFzYWNSYXBGTG8=', '2023-11-06 04:50:40 PM', '2023-11-08 01:23:19 PM', 1, 1),
(2, 1, '2023-11-09', '0', 'adu', 2147483647, 1, 'asdfghjk', 'hjhjjhkh', 2147483647, 'Dhaiya dhanbad near raj academy high school', 'Dhanbad', 'Jharkhand', 826004, '3', '3', 1, 'RUVmdThJWUFsaU1md2wzOGU4ZHc0Zz09', '2023-11-16 12:46:30 PM', '2023-11-16 12:46:30 PM', 1, 1),
(3, 1, '2023-11-09', '0', 'adu', 2147483647, 1, 'fdfdv', 'hjhjjhkh', 2147483647, 'Dhaiya dhanbad near raj academy high school', 'Dhanbad', 'Jharkhand', 826004, '3', '2', 0, 'UzdkZXJmRWxyVEhXZEVKY2ZKSk5OQT09', '2023-11-16 01:47:47 PM', '2023-11-16 01:47:47 PM', 1, 1),
(4, 1, '2010-08-05', '0', '+1 (941) 111-7655', 1, 0, 'Voluptatem et tempor', 'Hilary Bray', 1, 'Eum animi voluptate', 'Error in ad fugit i', 'Eius vitae culpa inv', 0, 'Dolor maiores recusa', 'Deserunt esse est ve', 1, 'SjVGTWorWFdIdnlrWjlLeUtPQmRhaVhCemVvaWhIV0YwU0JFdGxJWDMvaz0=', '2023-11-16 01:58:16 PM', '2023-11-16 01:58:16 PM', 1, 1),
(5, 1, '1996-06-21', '1', '+1 (581) 745-4454', 1, 0, 'Facilis distinctio ', 'Idola Benson', 1, 'Consectetur et itaqu', 'Cupidatat corporis r', 'Suscipit ea proident', 0, 'Hic non perferendis ', 'Dolores enim proiden', 1, 'alcrd2tEK2liQk1kTnczdTFNZFNjSnYwSzNINW4rVkJRUE1Cc2RUQnNyMD0=', '2023-11-16 02:52:22 PM', '2023-11-16 02:52:22 PM', 1, 1),
(6, 1, '1995-07-13', '1', '+1 (573) 707-9743', 1, 0, 'Perferendis anim et ', 'Sade Leonard', 1, 'Labore blanditiis se', 'Exercitation dolores', 'Fugit dicta qui non', 0, 'Omnis ex mollit mini', 'Ut in enim aut non a', 0, 'ckl6UmhUK1E4c2FqWkFlNWY4dHVTWW1ZRXpsNjZxL0Y3bVQ4NnVLWi9BND0=', '2023-11-16 03:43:00 PM', '2023-11-16 03:43:00 PM', 1, 1),
(7, 1, '1972-10-06', '0', '+1 (644) 533-6331', 1, 0, 'Voluptatem a minus ', 'Rebekah Shepherd', 1, 'Eos excepteur assume', 'Similique enim ut ut', 'Quisquam ex commodi ', 0, 'Dicta aliquam fuga ', 'Obcaecati labore qui', 1, 'UlJFVmV2a29scHYrVjdQNFdweGdMQzhtUVJGaVh5Z0xXeUdpa2NhWjJsdz0=', '2023-11-16 03:43:19 PM', '2023-11-16 03:43:19 PM', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reception_sitevisit`
--

CREATE TABLE `reception_sitevisit` (
  `reception_sitevisit_id` int(11) NOT NULL,
  `reception_sitevisit_user_main_id` varchar(100) NOT NULL,
  `reception_sitevisit_project_to_visit` varchar(100) NOT NULL,
  `reception_sitevisit_booking_date` varchar(100) NOT NULL,
  `reception_sitevisit_associate_name` varchar(200) NOT NULL,
  `reception_sitevisit_associate_mobile_number` int(12) NOT NULL,
  `reception_sitevisit_customer_name` varchar(100) NOT NULL,
  `reception_sitevisit_customer_mobile_number` int(12) NOT NULL,
  `reception_sitevisit_approved_by` varchar(100) NOT NULL,
  `reception_sitevisit_vendor_firm_name` varchar(200) NOT NULL,
  `reception_sitevisit_driver_name` varchar(200) NOT NULL,
  `reception_sitevisit_cab_number` varchar(250) NOT NULL,
  `reception_sitevisit_type_of_vehicle` varchar(200) NOT NULL,
  `reception_sitevisit_open_km` varchar(150) NOT NULL,
  `reception_sitevisit_close_km` varchar(150) NOT NULL,
  `reception_sitevisit_total_km` varchar(150) NOT NULL,
  `reception_sitevisit_in_time` varchar(100) NOT NULL,
  `reception_sitevisit_out_time` varchar(100) NOT NULL,
  `reception_sitevisit_total_hours` varchar(100) NOT NULL,
  `reception_sitevisit_status` varchar(20) NOT NULL,
  `reception_sitevisit_note_remark` mediumtext NOT NULL,
  `reception_sitevisit_created_at` varchar(150) NOT NULL,
  `reception_sitevisit_updated_at` varchar(150) NOT NULL,
  `reception_sitevisit_created_by` int(100) NOT NULL,
  `reception_sitevisit_updated_by` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reception_sitevisit`
--

INSERT INTO `reception_sitevisit` (`reception_sitevisit_id`, `reception_sitevisit_user_main_id`, `reception_sitevisit_project_to_visit`, `reception_sitevisit_booking_date`, `reception_sitevisit_associate_name`, `reception_sitevisit_associate_mobile_number`, `reception_sitevisit_customer_name`, `reception_sitevisit_customer_mobile_number`, `reception_sitevisit_approved_by`, `reception_sitevisit_vendor_firm_name`, `reception_sitevisit_driver_name`, `reception_sitevisit_cab_number`, `reception_sitevisit_type_of_vehicle`, `reception_sitevisit_open_km`, `reception_sitevisit_close_km`, `reception_sitevisit_total_km`, `reception_sitevisit_in_time`, `reception_sitevisit_out_time`, `reception_sitevisit_total_hours`, `reception_sitevisit_status`, `reception_sitevisit_note_remark`, `reception_sitevisit_created_at`, `reception_sitevisit_updated_at`, `reception_sitevisit_created_by`, `reception_sitevisit_updated_by`) VALUES
(1, '196', '1', '2023-11-02', 'fg', 2147483647, 'ghhg', 2147483647, '', 'bjhjh', 'hjjhjj', 'hghh677676', '2', 'hjh', 'hjjh', '667', '7', '6', '12', '0', 'ghhgjh hjhjh', '2023-11-06 05:03:19 PM', '2023-11-06 05:03:19 PM', 1, 1),
(2, '196', '1', '2023-11-04', 'ASDFGHJ', 234567890, 'WDFGHJ', 23456789, '', 'ASDFGHJK', 'SZDFGHJKL', 'SDFGHJ3456', '1', 'DFGHJ', 'DXFGHJK', '12', '7', 'ESRTYU', '12', '0', 'WAERTFYHUJIKOL', '2023-11-08 05:01:47 PM', '2023-11-08 05:01:47 PM', 1, 1),
(3, '1', '0', '2023-11-17', 'SDFGHJ', 234567890, 'ESDFGHJK', 23456789, '', 'sdfghjk', 'ghjklsdfghj', 'er324567df', '2', 'hjh', 'hjjh', '667', '7', '6', '5', '1', 'wesdfghjk', '2023-11-10 02:26:25 PM', '2023-11-10 02:26:25 PM', 1, 1),
(4, '1', '0', '2008-03-28', 'Cairo Pope', 173, 'Aileen Cannon', 263, '', 'Dahlia Levy', 'Anthony Cantu', '255', '3', 'Quis possimus eiusm', 'Aperiam quasi dignis', 'Ratione elit ipsa ', 'Eius exercitation en', 'Nostrud odio veniam', 'Dicta ut quos rerum ', '0', 'Similique voluptatum', '2023-11-16 02:52:38 PM', '2023-11-16 02:52:38 PM', 1, 1),
(5, '1', '1', '2022-03-17', 'Kennan Frost', 996, 'Tashya Christensen', 483, '', 'Cain May', 'Lars Manning', '139', '1', 'Voluptates consectet', 'A animi ullam rerum', 'Qui sit modi aut do', 'Commodi aut animi e', 'Sint amet quo mole', 'Omnis velit corrupti', '1', 'Veniam laborum sed ', '2023-11-16 02:53:03 PM', '2023-11-16 02:53:03 PM', 1, 1),
(6, '1', '0', '2005-10-08', 'Hilary Espinoza', 148, 'Burke Wilkerson', 305, '', 'Pandora Wall', 'Wilma Stone', '954', '1', 'Eos ex error est ve', 'Eligendi magna cupid', 'Aut et sed beatae re', 'Id natus deserunt vo', 'Magni amet id corpo', 'Ullamco similique et', '1', 'Non et anim ad accus', '2023-11-16 03:24:59 PM', '2023-11-16 03:24:59 PM', 1, 1),
(7, '1', '0', '1973-01-02', 'Jerry Peterson', 290, 'Troy Silva', 800, '', 'Jessamine Harrington', 'Shaeleigh Snow', '953', '3', '5', '3', '', 'Ea asperiores aliqui', 'Magna nihil tempor i', 'Expedita blanditiis ', '0', 'Ullamco odit qui rem', '2023-11-17 04:22:29 PM', '2023-11-17 04:22:29 PM', 1, 1),
(8, '196', '0', '2000-07-15', 'Shaeleigh Sharp', 217, 'Clio Wong', 851, '', 'Kamal Flores', 'Leandra Maddox', '664', '3', '5', '3', '', 'Sed maiores exercita', 'Dignissimos officia ', 'Duis eiusmod ducimus', '1', 'Eius earum et iure v', '2023-11-17 04:26:24 PM', '2023-11-17 04:26:24 PM', 1, 1),
(9, '1', '0', '1996-10-14', 'Joelle Foreman', 907, 'Mari Erickson', 34, '', 'Phillip James', 'Dante Simpson', '456', '3', '5', '6', '', 'Molestiae reprehende', 'Dolore iste perspici', 'At nisi odio suscipi', '1', 'Duis nisi temporibus', '2023-11-17 04:28:17 PM', '2023-11-17 04:28:17 PM', 1, 1),
(10, '1', '0', '1986-07-04', 'Amela Rogers', 2147483647, 'Callie Hatfield', 494, '', 'Edward Mcbride', 'Julian Mccarty', '911', '3', '8', '2', '', 'Dolore aut accusamus', 'Consectetur repelle', 'Velit a harum doloru', '0', 'Sed fuga Ipsum num', '2023-11-17 04:31:06 PM', '2023-11-18 03:35:09 PM', 1, 1),
(11, '1', '0', '2004-05-01', 'Lillian Cherry', 2147483647, 'Stuart Jenkins', 2147483647, '', 'Sydney Vang', 'Wesley Green', '389', '3', '87', '70', '39', '14:52', '04:25', 'Nihil aut sunt moles', '1', 'Qui enim ipsum magn', '2023-11-18 05:27:54 PM', '2023-11-18 05:27:54 PM', 1, 1),
(12, '1', '0', '1970-08-25', 'Ima Wolf', 2147483647, 'Moses George', 2147483647, '', 'Ishmael Osborne', 'Kathleen Heath', '416', '2', '10', '83', '9', '03:50', '11:14', 'Iste delectus moles', '0', 'Laboriosam cupidata', '2023-11-18 05:28:19 PM', '2023-11-18 05:28:19 PM', 1, 1),
(13, '1', '0', '2022-04-13', 'Ulric Kim', 2147483647, 'Dane Steele', 2147483647, '', 'Gage Terry', 'Katelyn Bradford', '551', '2', '44', '59', '50', '11:59', '04:10', 'Quae qui omnis labor', '0', 'Fuga Et molestias p', '2023-11-18 05:31:55 PM', '2023-11-18 05:31:55 PM', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `RegistrationId` int(10) NOT NULL,
  `RegMainCustomerId` varchar(100) NOT NULL,
  `RegCustomRefId` varchar(100) NOT NULL,
  `RegAcknowledgeCode` varchar(100) NOT NULL,
  `RegProjectId` varchar(100) NOT NULL,
  `RegUnitCost` int(100) NOT NULL,
  `RegAllotmentPhase` varchar(100) NOT NULL,
  `RegUnitSizeApplied` varchar(100) NOT NULL,
  `RegProjectCost` int(100) NOT NULL,
  `RegistrationDate` varchar(100) NOT NULL,
  `RegPossessionStatus` varchar(100) NOT NULL,
  `RegTeamHead` varchar(100) NOT NULL,
  `RegDirectSale` varchar(100) NOT NULL,
  `RegBusHead` varchar(100) NOT NULL,
  `RegMailSentStatus` varchar(10) NOT NULL DEFAULT 'false',
  `RegAutoMailSentStatus` varchar(10) NOT NULL DEFAULT 'false',
  `RegStatus` varchar(10) NOT NULL DEFAULT 'Active',
  `RegUnitAlloted` varchar(10) NOT NULL,
  `RegNotes` varchar(10000) NOT NULL,
  `RegCreatedAt` varchar(30) NOT NULL,
  `RegUpdatedAt` varchar(30) NOT NULL,
  `RegCreatedby` int(10) NOT NULL,
  `RegUpdatedBy` int(10) NOT NULL,
  `RegUnitMeasureType` varchar(100) NOT NULL,
  `RegUnitRate` varchar(100) NOT NULL,
  `RegNetCharge` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`RegistrationId`, `RegMainCustomerId`, `RegCustomRefId`, `RegAcknowledgeCode`, `RegProjectId`, `RegUnitCost`, `RegAllotmentPhase`, `RegUnitSizeApplied`, `RegProjectCost`, `RegistrationDate`, `RegPossessionStatus`, `RegTeamHead`, `RegDirectSale`, `RegBusHead`, `RegMailSentStatus`, `RegAutoMailSentStatus`, `RegStatus`, `RegUnitAlloted`, `RegNotes`, `RegCreatedAt`, `RegUpdatedAt`, `RegCreatedby`, `RegUpdatedBy`, `RegUnitMeasureType`, `RegUnitRate`, `RegNetCharge`) VALUES
(1, '1', '', 'ghfhfhg', '23', 250000, 'phase1', '50', 1, '2023-10-24', 'Yes', '1', '1', '1', '', '', 'Pending', 'flat 1 - 2', 'ME5EU09SZ2gvMGJFaXZOSC9ETklXQT09', '2023-10-25 01:09:23 PM', '2023-10-25 01:17:58 PM', 1, 1, 'Sq. Yards', '5000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `registration_activities`
--

CREATE TABLE `registration_activities` (
  `RegActivityId` int(100) NOT NULL,
  `RegMainId` int(10) NOT NULL,
  `RegActivityType` varchar(100) NOT NULL,
  `RegActivityDetails` mediumtext NOT NULL,
  `RegActivityRemindDate` varchar(100) NOT NULL,
  `RegActivityRemindTime` varchar(100) NOT NULL,
  `RegActivityStatus` varchar(100) NOT NULL,
  `RegActivityManagedBy` varchar(10) NOT NULL,
  `RegActivityCreatedBy` varchar(100) NOT NULL,
  `RegActivityCreatedAt` varchar(100) NOT NULL,
  `RegActivityUpdatedAt` varchar(100) NOT NULL,
  `RegActivityUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_charges`
--

CREATE TABLE `registration_charges` (
  `RegChargeId` int(100) NOT NULL,
  `RegistrationMainId` varchar(100) NOT NULL,
  `RegChargeName` varchar(50) NOT NULL,
  `RegChargeType` varchar(15) NOT NULL,
  `RegChargePercentage` varchar(10) NOT NULL,
  `RegChargeAmount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_charges`
--

INSERT INTO `registration_charges` (`RegChargeId`, `RegistrationMainId`, `RegChargeName`, `RegChargeType`, `RegChargePercentage`, `RegChargeAmount`) VALUES
(1, '1', 'PLC Charges', 'PERCENTAGE', '5', '12500');

-- --------------------------------------------------------

--
-- Table structure for table `registration_members`
--

CREATE TABLE `registration_members` (
  `RegMemberId` int(100) NOT NULL,
  `RegMainId` varchar(100) NOT NULL,
  `RegMemberRole` varchar(100) NOT NULL,
  `RegMemberMainId` varchar(100) NOT NULL,
  `RegMemberNotes` varchar(1000) NOT NULL,
  `RegMemberCreatedAt` varchar(100) NOT NULL,
  `RegMemberUpatedAt` varchar(100) NOT NULL,
  `RegMemUpdatedBy` varchar(100) NOT NULL,
  `RegMemCreatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_members`
--

INSERT INTO `registration_members` (`RegMemberId`, `RegMainId`, `RegMemberRole`, `RegMemberMainId`, `RegMemberNotes`, `RegMemberCreatedAt`, `RegMemberUpatedAt`, `RegMemUpdatedBy`, `RegMemCreatedBy`) VALUES
(1, '2', 'APPLICANT', '1', 'Co-Applicant', '2023-02-15 06:02:18 PM', '2023-02-15 06:02:18 PM', '13', '13'),
(2, '10', 'APPLICANT', '2', 'Co-Applicant', '2023-02-17 05:02:06 PM', '2023-02-17 05:02:06 PM', '13', '13'),
(3, '11', 'APPLICANT', '2', 'Co-Applicant', '2023-02-17 05:02:54 PM', '2023-02-17 05:02:54 PM', '13', '13'),
(4, '12', 'APPLICANT', '2', 'Co-Applicant', '2023-02-17 06:02:12 PM', '2023-02-17 06:02:12 PM', '13', '13'),
(5, '14', 'APPLICANT', '3', 'Co-Applicant', '2023-02-18 10:02:25 AM', '2023-02-18 10:02:25 AM', '13', '13'),
(6, '15', 'APPLICANT', '4', 'Co-Applicant', '2023-02-18 03:02:31 PM', '2023-02-18 03:02:31 PM', '13', '13'),
(7, '16', 'APPLICANT', '4', 'Co-Applicant', '2023-02-18 04:02:20 PM', '2023-02-18 04:02:20 PM', '13', '13'),
(8, '17', 'APPLICANT', '5', 'Co-Applicant', '2023-02-18 06:02:05 PM', '2023-02-18 06:02:05 PM', '13', '13'),
(9, '50', 'APPLICANT', '13', 'Co-Applicant', '2023-03-09 03:36:06 PM', '2023-03-09 03:36:06 PM', '13', '13'),
(10, '55', 'APPLICANT', '15', 'Co-Applicant', '2023-03-11 05:08:50 PM', '2023-03-11 05:08:50 PM', '13', '13'),
(11, '56', 'APPLICANT', '16', 'Co-Applicant', '2023-03-11 06:28:56 PM', '2023-03-11 06:28:56 PM', '13', '13'),
(12, '64', 'APPLICANT', '17', 'Co-Applicant', '2023-03-14 05:45:28 PM', '2023-03-14 05:45:28 PM', '13', '13'),
(13, '65', 'APPLICANT', '17', 'Co-Applicant', '2023-03-14 05:48:22 PM', '2023-03-14 05:48:22 PM', '13', '13'),
(14, '66', 'APPLICANT', '17', 'Co-Applicant', '2023-03-14 05:49:06 PM', '2023-03-14 05:49:06 PM', '13', '13'),
(15, '67', 'APPLICANT', '17', 'Co-Applicant', '2023-03-14 05:49:32 PM', '2023-03-14 05:49:32 PM', '13', '13'),
(16, '68', 'APPLICANT', '17', 'Co-Applicant', '2023-03-14 05:49:38 PM', '2023-03-14 05:49:38 PM', '13', '13'),
(17, '69', 'APPLICANT', '17', 'Co-Applicant', '2023-03-14 05:49:42 PM', '2023-03-14 05:49:42 PM', '13', '13'),
(18, '70', 'APPLICANT', '17', 'Co-Applicant', '2023-03-14 05:50:06 PM', '2023-03-14 05:50:06 PM', '13', '13'),
(19, '71', 'APPLICANT', '17', 'Co-Applicant', '2023-03-14 05:50:11 PM', '2023-03-14 05:50:11 PM', '13', '13'),
(20, '70', 'APPLICANT', '19', 'Co-Applicant', '2023-03-16 06:21:15 PM', '2023-03-16 06:21:15 PM', '13', '13'),
(21, '71', 'APPLICANT', '19', 'Co-Applicant', '2023-03-16 06:21:18 PM', '2023-03-16 06:21:18 PM', '13', '13'),
(22, '72', 'APPLICANT', '19', 'Co-Applicant', '2023-03-16 06:21:24 PM', '2023-03-16 06:21:24 PM', '13', '13'),
(23, '89', 'APPLICANT', '20', 'Co-Applicant', '2023-03-31 04:00:05 PM', '2023-03-31 04:00:05 PM', '13', '13'),
(24, '90', 'APPLICANT', '20', 'Co-Applicant', '2023-03-31 04:19:59 PM', '2023-03-31 04:19:59 PM', '13', '13'),
(25, '91', 'APPLICANT', '20', 'Co-Applicant', '2023-03-31 04:20:05 PM', '2023-03-31 04:20:05 PM', '13', '13'),
(26, '92', 'APPLICANT', '20', 'Co-Applicant', '2023-03-31 04:20:09 PM', '2023-03-31 04:20:09 PM', '13', '13'),
(27, '93', 'APPLICANT', '20', 'Co-Applicant', '2023-03-31 04:21:15 PM', '2023-03-31 04:21:15 PM', '13', '13'),
(28, '94', 'APPLICANT', '20', 'Co-Applicant', '2023-03-31 04:22:23 PM', '2023-03-31 04:22:23 PM', '13', '13'),
(29, '96', 'APPLICANT', '21', 'Co-Applicant', '2023-04-01 06:04:25 PM', '2023-04-01 06:04:25 PM', '13', '13'),
(30, '101', 'APPLICANT', '22', 'Co-Applicant', '2023-04-16 06:10:38 pm', '2023-04-16 06:10:38 pm', '13', '13'),
(31, '103', 'APPLICANT', '23', 'Co-Applicant', '2023-04-21 03:20:55 pm', '2023-04-21 03:20:55 pm', '13', '13'),
(32, '112', 'APPLICANT', '24', 'Co-Applicant', '2023-05-17 01:09:57 pm', '2023-05-17 01:09:57 pm', '13', '13'),
(33, '115', 'APPLICANT', '25', 'Co-Applicant', '2023-05-18 06:21:06 pm', '2023-05-18 06:21:06 pm', '13', '13'),
(35, '117', 'APPLICANT', '27', 'Co-Applicant', '2023-05-20 03:41:10 pm', '2023-05-20 03:41:10 pm', '13', '13'),
(36, '121', 'APPLICANT', '28', 'Co-Applicant', '2023-05-25 03:24:16 pm', '2023-05-25 03:24:16 pm', '13', '13'),
(37, '122', 'APPLICANT', '28', 'Co-Applicant', '2023-05-25 04:19:12 pm', '2023-05-25 04:19:12 pm', '13', '13'),
(38, '123', 'APPLICANT', '28', 'Co-Applicant', '2023-05-25 05:20:51 pm', '2023-05-25 05:20:51 pm', '13', '13'),
(39, '127', 'APPLICANT', '29', 'Co-Applicant', '2023-05-27 06:12:32 pm', '2023-05-27 06:12:32 pm', '13', '13'),
(40, '134', 'APPLICANT', '30', 'Co-Applicant', '2023-06-04 02:59:17 pm', '2023-06-04 02:59:17 pm', '13', '13'),
(41, '135', 'APPLICANT', '30', 'Co-Applicant', '2023-06-04 05:22:16 pm', '2023-06-04 05:22:16 pm', '13', '13'),
(42, '136', 'APPLICANT', '31', 'Co-Applicant', '2023-06-04 06:26:07 pm', '2023-06-04 06:26:07 pm', '13', '13'),
(43, '140', 'APPLICANT', '32', 'Co-Applicant', '2023-06-10 01:55:41 pm', '2023-06-10 01:55:41 pm', '13', '13'),
(44, '141', 'APPLICANT', '32', 'Co-Applicant', '2023-06-10 02:15:28 pm', '2023-06-10 02:15:28 pm', '13', '13'),
(45, '142', 'APPLICANT', '33', 'Co-Applicant', '2023-06-10 02:44:56 pm', '2023-06-10 02:44:56 pm', '13', '13'),
(46, '143', 'APPLICANT', '34', 'Co-Applicant', '2023-06-10 04:57:27 pm', '2023-06-10 04:57:27 pm', '13', '13'),
(47, '144', 'APPLICANT', '34', 'Co-Applicant', '2023-06-10 05:49:15 pm', '2023-06-10 05:49:15 pm', '13', '13'),
(48, '150', 'APPLICANT', '35', 'Co-Applicant', '2023-06-11 02:31:03 pm', '2023-06-11 02:31:03 pm', '13', '13'),
(49, '151', 'APPLICANT', '35', 'Co-Applicant', '2023-06-11 03:08:03 pm', '2023-06-11 03:08:03 pm', '13', '13'),
(50, '152', 'APPLICANT', '35', 'Co-Applicant', '2023-06-11 03:41:03 pm', '2023-06-11 03:41:03 pm', '13', '13'),
(51, '153', 'APPLICANT', '35', 'Co-Applicant', '2023-06-11 03:55:56 pm', '2023-06-11 03:55:56 pm', '13', '13'),
(52, '158', 'APPLICANT', '38', 'Co-Applicant', '2023-06-17 06:31:00 pm', '2023-06-17 06:31:00 pm', '13', '13'),
(53, '160', 'APPLICANT', '39', 'Co-Applicant', '2023-06-22 03:47:22 pm', '2023-06-22 03:47:22 pm', '13', '13'),
(54, '162', 'APPLICANT', '40', 'Co-Applicant', '2023-06-27 12:25:17 pm', '2023-06-27 12:25:17 pm', '13', '13'),
(55, '165', 'APPLICANT', '41', 'Co-Applicant', '2023-06-30 05:04:20 pm', '2023-06-30 05:04:20 pm', '13', '13'),
(56, '170', 'APPLICANT', '42', 'Co-Applicant', '2023-07-16 12:53:40 pm', '2023-07-16 12:53:40 pm', '13', '13'),
(57, '173', 'APPLICANT', '43', 'Co-Applicant', '2023-08-01 05:52:17 pm', '2023-08-01 05:52:17 pm', '13', '13'),
(58, '176', 'APPLICANT', '44', 'Co-Applicant', '2023-08-11 01:21:27 pm', '2023-08-11 01:21:27 pm', '13', '13'),
(59, '185', 'APPLICANT', '45', 'Co-Applicant', '2023-08-23 05:37:38 pm', '2023-08-23 05:37:38 pm', '13', '13'),
(60, '186', 'APPLICANT', '45', 'Co-Applicant', '2023-08-23 06:47:03 pm', '2023-08-23 06:47:03 pm', '13', '13'),
(61, '189', 'APPLICANT', '47', 'Co-Applicant', '2023-09-03 06:16:12 PM', '2023-09-03 06:16:12 PM', '13', '13'),
(62, '191', 'APPLICANT', '48', 'Co-Applicant', '2023-09-12 01:27:27 PM', '2023-09-12 01:27:27 PM', '13', '13');

-- --------------------------------------------------------

--
-- Table structure for table `registration_nominee_docs`
--

CREATE TABLE `registration_nominee_docs` (
  `RegNomDocId` int(10) NOT NULL,
  `RegMainNomId` int(10) NOT NULL,
  `RegNomDocName` varchar(100) NOT NULL,
  `RegNomDocNo` varchar(100) NOT NULL,
  `RegNomDocFile` varchar(1000) NOT NULL,
  `RegNomDocUploadedAt` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_nom_transfer`
--

CREATE TABLE `registration_nom_transfer` (
  `RegNomTransferId` int(100) NOT NULL,
  `RegMainId` int(100) NOT NULL,
  `RegNomTransferReason` varchar(1000) NOT NULL,
  `RegNomTransferDate` varchar(10000) NOT NULL,
  `RegNomCreatedBy` varchar(100) NOT NULL,
  `RegNomUpdatedBy` varchar(100) NOT NULL,
  `RegNomCreatedAt` varchar(100) NOT NULL,
  `RegNomUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_nom_transfer_docs`
--

CREATE TABLE `registration_nom_transfer_docs` (
  `RegNomTranDocId` int(10) NOT NULL,
  `RegMainTransferId` varchar(10) NOT NULL,
  `RegNomTranDocName` varchar(100) NOT NULL,
  `RegNomDocNo` varchar(100) NOT NULL,
  `RegNomDocFile` varchar(1000) NOT NULL,
  `RegDocUploadedAt` varchar(100) NOT NULL,
  `RegDocUploadedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_payments`
--

CREATE TABLE `registration_payments` (
  `RegPaymentId` int(100) NOT NULL,
  `RegPayCustRefId` varchar(100) NOT NULL,
  `RegMainId` varchar(100) NOT NULL,
  `RegPayMode` varchar(100) NOT NULL,
  `RegPayTotalAmount` int(50) NOT NULL,
  `RegPayTaxPercentage` int(50) NOT NULL,
  `RegPaySourceName` varchar(100) NOT NULL,
  `RegPaySourceNo` varchar(100) NOT NULL,
  `RegPayReferenceNo` varchar(100) NOT NULL,
  `RegPayChequeDDNo` varchar(100) NOT NULL,
  `RegPayOtherDetails` varchar(10000) NOT NULL,
  `RegPaymentStatus` varchar(20) NOT NULL,
  `RegPaymentCreatedAt` varchar(30) NOT NULL,
  `RegPayCashReceivedBy` varchar(10) NOT NULL,
  `RegPaymentReceivedBy` varchar(100) NOT NULL,
  `RegPaymentUpdatedAt` varchar(30) NOT NULL,
  `RegPaymentUploadReceipt` varchar(10) NOT NULL,
  `RegPaymentCreatedBy` varchar(10) NOT NULL,
  `RegPayClearedAt` varchar(30) NOT NULL,
  `RegPaymentDate` varchar(30) NOT NULL,
  `RegPaymentFailedAt` varchar(30) NOT NULL,
  `RegPatmentBounceAt` varchar(30) NOT NULL,
  `RegChequePayIssueBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_payments`
--

INSERT INTO `registration_payments` (`RegPaymentId`, `RegPayCustRefId`, `RegMainId`, `RegPayMode`, `RegPayTotalAmount`, `RegPayTaxPercentage`, `RegPaySourceName`, `RegPaySourceNo`, `RegPayReferenceNo`, `RegPayChequeDDNo`, `RegPayOtherDetails`, `RegPaymentStatus`, `RegPaymentCreatedAt`, `RegPayCashReceivedBy`, `RegPaymentReceivedBy`, `RegPaymentUpdatedAt`, `RegPaymentUploadReceipt`, `RegPaymentCreatedBy`, `RegPayClearedAt`, `RegPaymentDate`, `RegPaymentFailedAt`, `RegPatmentBounceAt`, `RegChequePayIssueBy`) VALUES
(1, '#TXN25102314855', '1', 'CASH', 26250, 5, 'CASH', 'CASH', 'CASH', '', 'nbvbnvbn', 'Paid', '2023-10-25 01:09:23 PM', 'vikash', '', '2023-10-25 01:09:23 PM', '', '1', '', '2023-10-25', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration_payment_activities`
--

CREATE TABLE `registration_payment_activities` (
  `RegPayActivityId` int(100) NOT NULL,
  `RegPayId` varchar(100) NOT NULL,
  `RegPayActivityDate` varchar(50) NOT NULL,
  `RegPayPreviousDetails` varchar(1000) NOT NULL,
  `RegPayRecordUpdatedBy` varchar(50) NOT NULL,
  `RegLastPayStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_payment_activities`
--

INSERT INTO `registration_payment_activities` (`RegPayActivityId`, `RegPayId`, `RegPayActivityDate`, `RegPayPreviousDetails`, `RegPayRecordUpdatedBy`, `RegLastPayStatus`) VALUES
(1, '1', '2023-10-25', 'MUxURkNBKzFHSXJHMDZMMkZDaFByQT09', '1', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `registration_refunds`
--

CREATE TABLE `registration_refunds` (
  `RegRefundId` int(10) NOT NULL,
  `RegMainId` int(10) NOT NULL,
  `RegRefundCustomRefId` varchar(100) NOT NULL,
  `RegRefundReason` varchar(500) NOT NULL,
  `RegRefundMode` varchar(200) NOT NULL,
  `RegRefundNotes` mediumtext NOT NULL,
  `RegRefundCreateDate` varchar(100) NOT NULL,
  `RegRefundStatus` varchar(20) NOT NULL,
  `RegRefundDate` varchar(100) NOT NULL,
  `RegRefundCreatedAt` varchar(100) NOT NULL,
  `RegRefundUpdatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_refund_documents`
--

CREATE TABLE `registration_refund_documents` (
  `RegRefundDocId` int(10) NOT NULL,
  `RegMainRefundId` int(10) NOT NULL,
  `RegRefundDocName` varchar(100) NOT NULL,
  `RegRefundDoNo` varchar(100) NOT NULL,
  `RegRefundDocFile` varchar(200) NOT NULL,
  `RegRefundCreatedOn` varchar(100) NOT NULL,
  `RegRefundUpdatedOn` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemlogs`
--

CREATE TABLE `systemlogs` (
  `LogsId` int(100) NOT NULL,
  `logTitle` varchar(200) NOT NULL,
  `logdesc` varchar(1000) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `systeminfo` varchar(1000) NOT NULL,
  `logtype` varchar(100) NOT NULL,
  `logenv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `TrainingId` int(10) NOT NULL,
  `TrainingName` varchar(100) NOT NULL,
  `TrainingStartDate` varchar(100) NOT NULL,
  `TrainingEndDate` varchar(25) NOT NULL,
  `TrainingStartTime` varchar(25) NOT NULL,
  `TrainingEndTime` varchar(100) NOT NULL,
  `TrainingDetails` longtext NOT NULL,
  `TrainingDescriptions` varchar(100) NOT NULL,
  `TrainingCreatedAt` varchar(40) NOT NULL,
  `TrainingUpdatedAt` varchar(40) NOT NULL,
  `TrainingCreatedBy` varchar(50) NOT NULL,
  `TrainingUpdatedBy` varchar(50) NOT NULL,
  `TrainingMode` varchar(100) NOT NULL,
  `TrainingStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_members`
--

CREATE TABLE `training_members` (
  `TrainingMemberId` int(10) NOT NULL,
  `TrainingMainId` int(10) NOT NULL,
  `TrainingUserId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(100) NOT NULL,
  `UserSalutation` varchar(1000) NOT NULL,
  `UserFullName` varchar(500) NOT NULL,
  `UserPhoneNumber` varchar(100) NOT NULL,
  `UserEmailId` varchar(1000) NOT NULL,
  `UserPassword` varchar(500) NOT NULL,
  `UserCreatedAt` varchar(25) NOT NULL DEFAULT 'current_timestamp(6)',
  `UserUpdatedAt` varchar(25) NOT NULL DEFAULT 'current_timestamp(6)',
  `UserStatus` tinyint(1) NOT NULL DEFAULT 1,
  `UserNotes` longtext NOT NULL,
  `UserCompanyName` varchar(1000) NOT NULL,
  `UserDepartment` varchar(1000) NOT NULL,
  `UserDesignation` varchar(1000) NOT NULL,
  `UserWorkFeilds` varchar(1000) NOT NULL,
  `UserProfileImage` varchar(1000) NOT NULL DEFAULT 'default.png',
  `UserType` varchar(1000) NOT NULL,
  `UserDateOfBirth` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserSalutation`, `UserFullName`, `UserPhoneNumber`, `UserEmailId`, `UserPassword`, `UserCreatedAt`, `UserUpdatedAt`, `UserStatus`, `UserNotes`, `UserCompanyName`, `UserDepartment`, `UserDesignation`, `UserWorkFeilds`, `UserProfileImage`, `UserType`, `UserDateOfBirth`) VALUES
(1, 'Mr.', 'APNA LEAD ADMIN', '9876543210', 'navix365@gmail.com', '9810', '0000-00-00 00:00:00.00000', '25 Oct, 2023', 1, 'YkVYdnY2YmtTdHBSRVkxbW95bFEyWTl6L2YxNUhpQ1NRK0FFR1BMRnpDN0JnUEdFTzNwb0NJaUptK2V6WDJUTQ==', 'Navix Consultancy Services', 'Sales &amp; Marketing', 'Sales Head', 'Information Technology', 'default.png', 'Receptions', '2022-11-02'),
(195, 'Mr.', 'Kasper Hayes', '+1 (189) 903-8452', 'saki@mailinator.com', 'Occaecat voluptate i', '2007-05-06', '2023-10-26 03:34:32 PM', 1, '', '', '', '', '', 'default.png', 'Receptions', '1975-10-14'),
(196, 'Mr.', 'Glenna Acevedo', '+1 (579) 913-6912', 'tebawi@mailinator.com', 'Labore sunt consecte', '1996-02-01', '2023-10-26 10:55:54 AM', 1, '', '', '', '', '', 'default.png', 'Receptions', '1994-09-10'),
(197, 'Miss', 'Porter Ferrell', '+1 (116) 169-4303', 'qugul@mailinator.com', 'Id dolore nostrum do', '2004-06-15', 'current_timestamp(6)', 1, '', '', '', '', '', 'default.png', '', '1975-09-20'),
(198, 'M/s', 'Hayfa Walter', '+1 (576) 109-5021', 'jufaqox@mailinator.com', 'Molestiae dolor offi', '1990-03-12', '2023-10-26 03:34:22 PM', 1, '', '', '', '', '', 'default.png', 'Receptions', '2007-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `UserAccessId` int(100) NOT NULL,
  `UserAccessUserId` int(100) NOT NULL,
  `UserAccessName` varchar(100) NOT NULL,
  `UserAccessCreatedAt` datetime(6) NOT NULL,
  `UserAccessUpdatedAt` datetime(6) NOT NULL,
  `UserAccessStatus` varchar(10) DEFAULT 'true',
  `UserAccessNotes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`UserAccessId`, `UserAccessUserId`, `UserAccessName`, `UserAccessCreatedAt`, `UserAccessUpdatedAt`, `UserAccessStatus`, `UserAccessNotes`) VALUES
(285, 1, 'Receptions', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'true', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `UserAddressId` int(100) NOT NULL,
  `UserAddressUserId` int(100) NOT NULL,
  `UserStreetAddress` varchar(10000) NOT NULL,
  `UserLocality` varchar(200) NOT NULL,
  `UserCity` varchar(200) NOT NULL,
  `UserState` varchar(200) NOT NULL,
  `UserCountry` varchar(200) NOT NULL,
  `UserPincode` varchar(200) NOT NULL,
  `UserAddressType` varchar(100) NOT NULL,
  `UserAddressContactPerson` varchar(1000) NOT NULL,
  `UserAddressNotes` varchar(1000) NOT NULL,
  `UserAddressMapUrl` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`UserAddressId`, `UserAddressUserId`, `UserStreetAddress`, `UserLocality`, `UserCity`, `UserState`, `UserCountry`, `UserPincode`, `UserAddressType`, `UserAddressContactPerson`, `UserAddressNotes`, `UserAddressMapUrl`) VALUES
(1, 195, 'Dolorem iure quo rep', 'Sed nostrum tenetur ', 'Fugit molestiae omn', 'Amet veniam blandi', 'Temporibus quas nesc', 'Magni quasi accusant', 'Home Address', 'Fugiat voluptate et ', '', ''),
(2, 196, 'Voluptatem dolore o', 'Nulla est eu eum lib', 'Id consectetur eos ', 'Molestiae ut quis el', 'Cumque facere duis n', 'Et sint dolorem sit', 'Office Address', 'Ullamco tempore mol', '', ''),
(3, 197, 'Amet animi velit i', 'Nihil dolore volupta', 'Corporis voluptatem', 'Adipisci perferendis', 'Voluptas non et et c', 'Dignissimos saepe al', 'Office Address', 'Accusamus dolor non ', '', ''),
(4, 198, 'Facilis velit accusa', 'Dolorem aliquip quia', 'Laboris sit consequa', 'Ut architecto quam d', 'Qui placeat adipisc', 'Ut praesentium id do', 'Office Address', 'Dignissimos dolore a', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_allowed_leaves`
--

CREATE TABLE `user_allowed_leaves` (
  `UserAllowedLeaveId` int(10) NOT NULL,
  `UserALMainUserId` int(10) NOT NULL,
  `UserAllowedLeaveYear` varchar(20) NOT NULL,
  `UserAllowedLeaveCreatedAt` varchar(25) NOT NULL,
  `UserAllowedLeaveCreatedBy` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_appraisals`
--

CREATE TABLE `user_appraisals` (
  `UserAppraisalId` int(10) NOT NULL,
  `UserAppraisalRefNo` varchar(100) NOT NULL,
  `UserAppraisalName` varchar(200) NOT NULL,
  `UserAppraisalMainUserId` int(10) NOT NULL,
  `UserAppraisalMessage` varchar(1000) NOT NULL,
  `UserAppraisalCreatedBy` varchar(10) NOT NULL,
  `UserAppraisalDate` varchar(40) NOT NULL,
  `UserAppraisalCreatedAt` varchar(40) NOT NULL,
  `UserAppraisalViewAt` varchar(100) NOT NULL,
  `UserAppraisalStatus` varchar(100) NOT NULL,
  `UserAppraisalUpdatedAt` varchar(100) NOT NULL,
  `UserAppraisalUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_attandance_check_in`
--

CREATE TABLE `user_attandance_check_in` (
  `check_in_id` int(100) NOT NULL,
  `check_in_main_user_id` int(10) NOT NULL,
  `check_in_location_longitude` varchar(50) NOT NULL,
  `check_in_location_latitude` varchar(50) NOT NULL,
  `check_in_date_time` varchar(50) NOT NULL,
  `check_in_ip_address` varchar(500) NOT NULL,
  `check_in_device_mac_address` varchar(500) NOT NULL,
  `check_in_device_info` varchar(10000) NOT NULL,
  `check_in_created_at` varchar(25) NOT NULL,
  `check_in_created_by` int(10) NOT NULL,
  `check_in_updated_at` varchar(25) NOT NULL,
  `check_in_update_by` int(10) NOT NULL,
  `check_in_status` varchar(100) NOT NULL,
  `check_in_distance` varchar(100) NOT NULL,
  `check_in_time_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_attandance_check_in`
--

INSERT INTO `user_attandance_check_in` (`check_in_id`, `check_in_main_user_id`, `check_in_location_longitude`, `check_in_location_latitude`, `check_in_date_time`, `check_in_ip_address`, `check_in_device_mac_address`, `check_in_device_info`, `check_in_created_at`, `check_in_created_by`, `check_in_updated_at`, `check_in_update_by`, `check_in_status`, `check_in_distance`, `check_in_time_status`) VALUES
(1, 196, '', '', '2023-10-26 04:38', '::1', '', '\r\n    Date Time: Thu 26 Oct, 2023 04:10:01 pm\r\n    Page_Location: http://localhost/propusers/handler/ModuleHandler.php\r\n    Ip-Address : ::1\r\n    Device Type : COMPUTER\r\n    Ipv6_P : Windows NT GSI-HP-2023 10.0 build 22635 (Windows 11) AMD64\r\n    OS : Windows NT\r\n    OS_RELEASE : 10.0\r\n    OS_VERSION : build 22635 (Windows 11)\r\n    System : AMD64\r\n    Host Name : GSI-HP-2023\r\n    System Information : Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '2023-10-26 04:39:01 PM', 1, '', 0, 'true', '0.1', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_attandance_check_out`
--

CREATE TABLE `user_attandance_check_out` (
  `check_out_id` int(100) NOT NULL,
  `check_out_main_check_in_id` int(10) NOT NULL,
  `check_out_main_user_id` int(10) NOT NULL,
  `check_out_location_longitude` varchar(50) NOT NULL,
  `check_out_location_latitude` varchar(50) NOT NULL,
  `check_out_date_time` varchar(50) NOT NULL,
  `check_out_ip_address` varchar(255) NOT NULL,
  `check_out_device_mac_address` varchar(255) NOT NULL,
  `check_out_device_info` varchar(500) NOT NULL,
  `check_out_created_at` varchar(25) NOT NULL,
  `check_out_created_by` int(10) NOT NULL,
  `check_out_updated_at` varchar(25) NOT NULL,
  `check_out_updated_by` int(10) NOT NULL,
  `check_out_status` varchar(50) NOT NULL,
  `check_out_distance` varchar(50) NOT NULL,
  `check_out_time_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_attandance_check_out`
--

INSERT INTO `user_attandance_check_out` (`check_out_id`, `check_out_main_check_in_id`, `check_out_main_user_id`, `check_out_location_longitude`, `check_out_location_latitude`, `check_out_date_time`, `check_out_ip_address`, `check_out_device_mac_address`, `check_out_device_info`, `check_out_created_at`, `check_out_created_by`, `check_out_updated_at`, `check_out_updated_by`, `check_out_status`, `check_out_distance`, `check_out_time_status`) VALUES
(1, 1, 196, '', '', '2023-10-26 04:39', '::1', '', '\r\n    Date Time: Thu 26 Oct, 2023 04:10:05 pm\r\n    Page_Location: http://localhost/propusers/handler/ModuleHandler.php\r\n    Ip-Address : ::1\r\n    Device Type : COMPUTER\r\n    Ipv6_P : Windows NT GSI-HP-2023 10.0 build 22635 (Windows 11) AMD64\r\n    OS : Windows NT\r\n    OS_RELEASE : 10.0\r\n    OS_VERSION : build 22635 (Windows 11)\r\n    System : AMD64\r\n    Host Name : GSI-HP-2023\r\n    System Information : Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.', '2023-10-26 04:39:05 PM', 1, '', 0, 'true', '0.1', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_details`
--

CREATE TABLE `user_bank_details` (
  `UserBankDetailsId` int(100) NOT NULL,
  `UserMainId` varchar(100) NOT NULL,
  `UserBankName` varchar(100) NOT NULL,
  `UserBankAccountNo` varchar(100) NOT NULL,
  `UserBankIFSC` varchar(100) NOT NULL,
  `UserBankAccoundHolderName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_bank_details`
--

INSERT INTO `user_bank_details` (`UserBankDetailsId`, `UserMainId`, `UserBankName`, `UserBankAccountNo`, `UserBankIFSC`, `UserBankAccoundHolderName`) VALUES
(1, '195', 'Briar Mayer', 'Rem perspiciatis ve', 'Pariatur Tempor vit', 'Joel English'),
(2, '196', 'Aline Bolton', 'Tenetur quae dolor r', 'Eius reprehenderit p', 'McKenzie Acosta'),
(3, '197', 'Xyla Hampton', 'Ut nisi consequatur', 'Omnis odit labore ni', 'Angela Baird'),
(4, '198', 'Ivor Soto', 'Non aliquid optio i', 'Soluta sed deleniti ', 'Shannon Newman');

-- --------------------------------------------------------

--
-- Table structure for table `user_day_breaks`
--

CREATE TABLE `user_day_breaks` (
  `day_break_id` int(100) NOT NULL,
  `day_break_main_user_id` int(10) NOT NULL,
  `day_break_location_longitude` varchar(50) NOT NULL,
  `day_break_location_latitude` varchar(50) NOT NULL,
  `day_break_start_date_time` varchar(80) NOT NULL,
  `day_break_end_date_time` varchar(80) NOT NULL,
  `day_break_ip_address` varchar(255) NOT NULL,
  `day_break_device_info` varchar(1055) NOT NULL,
  `day_break_created_at` varchar(25) NOT NULL,
  `day_break_updated_at` varchar(25) NOT NULL,
  `day_break_created_by` int(11) NOT NULL,
  `day_break_updated_by` int(11) NOT NULL,
  `day_break_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE `user_documents` (
  `UserDocsId` int(100) NOT NULL,
  `UserMainId` varchar(100) NOT NULL,
  `UserDocumentNo` varchar(100) NOT NULL,
  `UserDocumentName` varchar(100) NOT NULL,
  `UserDocumentFile` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_documents`
--

INSERT INTO `user_documents` (`UserDocsId`, `UserMainId`, `UserDocumentNo`, `UserDocumentName`, `UserDocumentFile`) VALUES
(1, '195', 'Accusantium incididu', 'PAN CARD', ''),
(2, '195', 'Anim est quis mollit', 'ADHAAR CARD', ''),
(3, '196', 'Mollitia iste at fac', 'PAN CARD', ''),
(4, '196', 'Ex sint nobis molest', 'ADHAAR CARD', ''),
(5, '197', 'Consequuntur aliquip', 'PAN CARD', ''),
(6, '197', 'Qui labore rem esse ', 'ADHAAR CARD', ''),
(7, '198', 'Aut non et et volupt', 'PAN CARD', ''),
(8, '198', 'Placeat qui est ea ', 'ADHAAR CARD', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_employment_details`
--

CREATE TABLE `user_employment_details` (
  `UserEmpDetailsId` int(100) NOT NULL,
  `UserMainUserId` varchar(10) NOT NULL,
  `UserEmpBackGround` varchar(100) NOT NULL,
  `UserEmpTotalWorkExperience` varchar(100) NOT NULL,
  `UserEmpPreviousOrg` varchar(100) NOT NULL,
  `UserEmpBloodGroup` varchar(100) NOT NULL,
  `UserEmpReraId` varchar(100) NOT NULL,
  `UserEmpReportingMember` varchar(100) NOT NULL,
  `UserEmpJoinedId` varchar(100) NOT NULL,
  `UserEmpCRMStatus` varchar(100) NOT NULL,
  `UserEmpVisitingCard` varchar(100) NOT NULL,
  `UserEmpWorkEmailId` varchar(100) NOT NULL,
  `UserEmpGroupName` varchar(100) NOT NULL,
  `UserEmpType` varchar(100) NOT NULL,
  `UserEmpLocations` varchar(100) NOT NULL,
  `UserEmpRoleStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_employment_details`
--

INSERT INTO `user_employment_details` (`UserEmpDetailsId`, `UserMainUserId`, `UserEmpBackGround`, `UserEmpTotalWorkExperience`, `UserEmpPreviousOrg`, `UserEmpBloodGroup`, `UserEmpReraId`, `UserEmpReportingMember`, `UserEmpJoinedId`, `UserEmpCRMStatus`, `UserEmpVisitingCard`, `UserEmpWorkEmailId`, `UserEmpGroupName`, `UserEmpType`, `UserEmpLocations`, `UserEmpRoleStatus`) VALUES
(1, '195', 'Laboriosam quis dol', 'Natus aliquid reicie', 'Aliqua Placeat mol', 'B-', 'Sit sed eius dolores', '0', '1', 'Yes', 'Yes', 'xynu@mailinator.com', 'SM', '', '2', ''),
(2, '196', 'Velit non ea eveniet', 'Pariatur Reiciendis', 'Odit velit molestia', 'B+', 'Qui in enim quia con', '1', '2', 'No', 'No', 'fomirelej@mailinator.com', 'TH', '', '1', ''),
(3, '197', 'Laudantium et fuga', 'Incididunt earum dol', 'Nisi laboris enim mo', 'B+', 'Cillum quo est exce', '1', '3', 'No', 'Yes', 'mupinija@mailinator.com', 'Management', '', '1', ''),
(4, '198', 'Voluptatibus eligend', 'Sed praesentium ab a', 'Ut accusamus officia', 'AB+', 'Commodo praesentium ', '0', '4', 'No', 'Yes', 'wojorize@mailinator.com', 'SM', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_family_members`
--

CREATE TABLE `user_family_members` (
  `UserFamilyMemberId` int(10) NOT NULL,
  `UserFMMainUserId` int(10) NOT NULL,
  `UserFamilyMemberName` varchar(50) NOT NULL,
  `UserFamilyMemberRelation` varchar(50) NOT NULL,
  `UserFamilyMemberPhoneNumber` varchar(15) NOT NULL,
  `UserFamilyMemberDateOfBirth` varchar(25) NOT NULL,
  `UserFamilyMemberCreatedAt` varchar(25) NOT NULL,
  `UserFamilyMemberUpdatedBy` int(10) NOT NULL,
  `UserFamilyUpdatedAt` varchar(25) NOT NULL,
  `UserFamilyMemberStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_in_out`
--

CREATE TABLE `user_in_out` (
  `user_in_out_id` int(100) NOT NULL,
  `user_main_id` int(10) NOT NULL,
  `user_in_out_date` varchar(100) NOT NULL,
  `user_in_time` varchar(50) NOT NULL,
  `user_out_time` varchar(50) NOT NULL,
  `user_in_out_status` varchar(10) NOT NULL,
  `user_in_out_approved_by` int(10) NOT NULL,
  `user_in_out_created_by` int(10) NOT NULL,
  `user_in_out_updated_by` int(10) NOT NULL,
  `user_in_out_created_at` varchar(100) NOT NULL,
  `user_in_out_updated_at` varchar(100) NOT NULL,
  `user_in_out_remarks` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_in_out`
--

INSERT INTO `user_in_out` (`user_in_out_id`, `user_main_id`, `user_in_out_date`, `user_in_time`, `user_out_time`, `user_in_out_status`, `user_in_out_approved_by`, `user_in_out_created_by`, `user_in_out_updated_by`, `user_in_out_created_at`, `user_in_out_updated_at`, `user_in_out_remarks`) VALUES
(17, 1, '2023-11-16', '03:37', '03:37', '1', 0, 1, 1, '2023-11-16 03:37:22 PM', '2023-11-16 03:37:22 PM', 'cmgxT3pGa2NxL1dzSnUxeXZZem5TZz09'),
(18, 1, '2023-11-16', '04:05', '04:05', '1', 0, 1, 1, '2023-11-16 04:05:31 PM', '2023-11-16 04:05:31 PM', 'RWIyRW4wSUp2RmdJcGpYYUovTWs4UT09'),
(19, 1, '2023-11-16', '04:52', '04:52', '1', 0, 1, 1, '2023-11-16 04:52:33 PM', '2023-11-16 04:52:33 PM', 'NGFFS1p1dXFWQ2JIaytrNkVaS0RaUT09'),
(20, 1, '2023-11-16', '04:54', '04:54', '0', 0, 1, 1, '2023-11-16 04:55:08 PM', '2023-11-17 03:43:52 PM', 'THRLUVFWOVgwTnpGSjlqMmlQOHdNQT09');

-- --------------------------------------------------------

--
-- Table structure for table `user_leaves`
--

CREATE TABLE `user_leaves` (
  `UserLeaveId` int(10) NOT NULL,
  `UserMainId` int(10) NOT NULL,
  `UserLeaveFromDate` varchar(40) NOT NULL,
  `UserLeaveToDate` varchar(40) NOT NULL,
  `UserLeaveReJoinDate` varchar(40) NOT NULL,
  `UserLeaveReason` varchar(1000) NOT NULL,
  `UserLeaveCreatedAt` varchar(40) NOT NULL,
  `UserLeaveCreatedBy` varchar(40) NOT NULL,
  `UserLeaveStatus` varchar(10) NOT NULL,
  `UserLeaveType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_attachments`
--

CREATE TABLE `user_leave_attachments` (
  `UserLeaveFileId` int(10) NOT NULL,
  `UserLeaveMainId` int(10) NOT NULL,
  `UserLeaveAttachedFile` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_leave_attachments`
--

INSERT INTO `user_leave_attachments` (`UserLeaveFileId`, `UserLeaveMainId`, `UserLeaveAttachedFile`) VALUES
(1, 10, 'Leave___16_Aug_2023_09_08_22_60611892040_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_contact_nos`
--

CREATE TABLE `user_leave_contact_nos` (
  `UserLeaveContactId` int(10) NOT NULL,
  `UserLeaveMainId` int(10) NOT NULL,
  `UserLeaveContactPersonName` varchar(50) NOT NULL,
  `UserLeaveContactPersonPhoneNumber` varchar(15) NOT NULL,
  `UserLeaveContactPersonAddress` varchar(255) NOT NULL,
  `UserLeaveContactPersonRelation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_status`
--

CREATE TABLE `user_leave_status` (
  `UserLeaveStatusId` int(10) NOT NULL,
  `UserLeaveMainId` int(10) NOT NULL,
  `UserLeaveStatus` varchar(30) NOT NULL,
  `UserLeaveStatusAddedBy` int(10) NOT NULL,
  `UserLeaveStatusAddedAt` varchar(40) NOT NULL,
  `UserLeaveStatusRemarks` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_meetings`
--

CREATE TABLE `user_meetings` (
  `user_meeting_id` int(10) NOT NULL,
  `user_main_user_id` int(10) NOT NULL,
  `user_meeting_check_in_id` int(10) NOT NULL,
  `user_meeting_person_name` varchar(1000) NOT NULL,
  `user_meeting_phone_number` varchar(20) NOT NULL,
  `user_meeting_remarks` longtext NOT NULL,
  `user_meeting_date` varchar(40) NOT NULL,
  `user_meeting_created_at` varchar(40) NOT NULL,
  `user_meeting_created_by` int(10) NOT NULL,
  `user_meeting_updated_at` varchar(40) NOT NULL,
  `user_meeting_updated_by` int(10) NOT NULL,
  `user_meeting_status` varchar(10) NOT NULL,
  `user_meeting_start_at` varchar(50) NOT NULL,
  `user_meeting_ended_at` varchar(50) NOT NULL,
  `user_meeting_email_id` varchar(400) NOT NULL,
  `user_meeting_response` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_password_change_requests`
--

CREATE TABLE `user_password_change_requests` (
  `PasswordChangeReqId` int(100) NOT NULL,
  `UserIdForPasswordChange` varchar(1000) NOT NULL,
  `PasswordChangeToken` varchar(1000) NOT NULL,
  `PasswordChangeTokenExpireTime` varchar(1000) NOT NULL,
  `PasswordChangeDeviceDetails` varchar(10000) NOT NULL,
  `PasswordChangeRequestStatus` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `UserPermissionsId` int(100) NOT NULL,
  `UserPermissionUserId` int(100) NOT NULL,
  `UserPermissionForAccess` varchar(500) NOT NULL,
  `UserPermissions` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_pips`
--

CREATE TABLE `user_pips` (
  `UserPipId` int(10) NOT NULL,
  `UserPIPRefNo` varchar(100) NOT NULL,
  `UserPIPMainUserId` varchar(10) NOT NULL,
  `UserPIPSubjectName` varchar(255) NOT NULL,
  `UserPIPMessage` longtext NOT NULL,
  `UserPIPCreatedAt` varchar(40) NOT NULL,
  `UserPIPUpdatedAt` varchar(40) NOT NULL,
  `UserPIPCreatedBy` varchar(10) NOT NULL,
  `UserPIPEmailStatus` varchar(10) NOT NULL,
  `UserPIPUpdatedBy` varchar(10) NOT NULL,
  `UserPipStatus` varchar(10) NOT NULL,
  `UserPIPReadAt` varchar(25) NOT NULL,
  `UserPipDocuments` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_rewards`
--

CREATE TABLE `user_rewards` (
  `RewardsId` int(10) NOT NULL,
  `RewardRefNo` varchar(100) NOT NULL,
  `RewardName` varchar(1000) NOT NULL,
  `RewardMainUserId` int(10) NOT NULL,
  `RewardAttachedCreative` varchar(1000) NOT NULL,
  `RewardCreatedAt` varchar(40) NOT NULL,
  `RewardReceiveDate` varchar(40) NOT NULL,
  `RewardCreatedBy` varchar(10) NOT NULL,
  `RewardStatus` varchar(10) NOT NULL,
  `RewardMessage` longtext NOT NULL,
  `RewardUpdatedAt` varchar(100) NOT NULL,
  `RewardUpdatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `VisitorId` int(100) NOT NULL,
  `VisitorPersonName` varchar(100) NOT NULL,
  `VisitorPersonPhone` varchar(100) NOT NULL,
  `VisitorPersonEmailId` varchar(100) NOT NULL,
  `VisitPurpose` varchar(100) NOT NULL,
  `VisitPesonMeetWith` varchar(100) NOT NULL,
  `VisitPersonType` varchar(100) NOT NULL,
  `VisitPeronsDescription` varchar(10000) NOT NULL,
  `VisitPersonCreatedAt` varchar(100) NOT NULL,
  `VisitPersonUpdatedAt` varchar(100) NOT NULL,
  `VisitEnquiryStatus` varchar(50) NOT NULL,
  `VisitEntryCreatedBy` varchar(50) NOT NULL,
  `VisitorOutTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`VisitorId`, `VisitorPersonName`, `VisitorPersonPhone`, `VisitorPersonEmailId`, `VisitPurpose`, `VisitPesonMeetWith`, `VisitPersonType`, `VisitPeronsDescription`, `VisitPersonCreatedAt`, `VisitPersonUpdatedAt`, `VisitEnquiryStatus`, `VisitEntryCreatedBy`, `VisitorOutTime`) VALUES
(46, 'Freya Kerr', '+1 (656) 693-8204', 'rosemibepi@mailinator.com', 'Culpa ut vel quia i', '1', '', 'VHhjYmNkVytoUzlkWU1ZNkp5c3hJY0lGdElxc2NTSzduRzA2WFB5STdRUT0=', '2023-11-16 02:50:57 PM', '2023-11-16 02:50:57 PM', 'NEW', '1', ''),
(47, 'Freya Kerr', '+1 (656) 693-8204', 'rosemibepi@mailinator.com', 'Culpa ut vel quia i', '1', '', 'VHhjYmNkVytoUzlkWU1ZNkp5c3hJY0lGdElxc2NTSzduRzA2WFB5STdRUT0=', '2023-11-16 02:51:01 PM', '2023-11-16 02:51:01 PM', 'NEW', '1', ''),
(48, 'Freya Kerr', '+1 (656) 693-8204', 'rosemibepi@mailinator.com', 'Culpa ut vel quia i', '1', 'General Enquiry', 'VHhjYmNkVytoUzlkWU1ZNkp5c3hJY0lGdElxc2NTSzduRzA2WFB5STdRUT0=', '2023-11-16 02:51:04 PM', '2023-11-18 01:03:09 PM', 'INTERVIEW', '1', '14:59'),
(49, 'Berk Collins', '+1 (942) 894-3782', 'tybi@mailinator.com', 'Commodo dolores face', '1', 'General Enquiry', 'TWt3Z1BxOW1oK0EwZEljTitlMURXQ1NyRkU3KytCSkM0NGZsdFlqME1COD0=', '2023-11-18 01:03:41 PM', '2023-11-18 01:04:17 PM', 'INTERVIEW', '1', ''),
(50, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:52:58 PM', '2023-11-24 12:52:58 PM', 'NEW', '1', ''),
(51, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:01 PM', '2023-11-24 12:53:01 PM', 'NEW', '1', ''),
(52, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:04 PM', '2023-11-24 12:53:04 PM', 'NEW', '1', ''),
(53, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:07 PM', '2023-11-24 12:53:07 PM', 'NEW', '1', ''),
(54, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:09 PM', '2023-11-24 12:53:09 PM', 'NEW', '1', ''),
(55, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:13 PM', '2023-11-24 12:53:13 PM', 'NEW', '1', ''),
(56, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:15 PM', '2023-11-24 12:53:15 PM', 'NEW', '1', ''),
(57, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:18 PM', '2023-11-24 12:53:18 PM', 'NEW', '1', ''),
(58, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:21 PM', '2023-11-24 12:53:21 PM', 'NEW', '1', ''),
(59, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:23 PM', '2023-11-24 12:53:23 PM', 'NEW', '1', ''),
(60, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:25 PM', '2023-11-24 12:53:25 PM', 'NEW', '1', ''),
(61, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:28 PM', '2023-11-24 12:53:28 PM', 'NEW', '1', ''),
(62, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:31 PM', '2023-11-24 12:53:31 PM', 'NEW', '1', ''),
(63, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:33 PM', '2023-11-24 12:53:33 PM', 'NEW', '1', ''),
(64, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:35 PM', '2023-11-24 12:53:35 PM', 'NEW', '1', ''),
(65, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:38 PM', '2023-11-24 12:53:38 PM', 'NEW', '1', ''),
(66, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:41 PM', '2023-11-24 12:53:41 PM', 'NEW', '1', ''),
(67, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:43 PM', '2023-11-24 12:53:43 PM', 'NEW', '1', ''),
(68, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:45 PM', '2023-11-24 12:53:45 PM', 'NEW', '1', ''),
(69, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:48 PM', '2023-11-24 12:53:48 PM', 'NEW', '1', ''),
(70, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:50 PM', '2023-11-24 12:53:50 PM', 'NEW', '1', ''),
(71, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:53 PM', '2023-11-24 12:53:53 PM', 'NEW', '1', ''),
(72, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:55 PM', '2023-11-24 12:53:55 PM', 'NEW', '1', ''),
(73, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:53:57 PM', '2023-11-24 12:53:57 PM', 'NEW', '1', ''),
(74, 'adu', '81028129292', 'aditi@gmail.com', 'Dhaiya dhanbad near raj academy high school', '1', '', 'OUJxdkloOEwvMkUveUVSVmlCRVlLQT09', '2023-11-24 12:54:00 PM', '2023-11-24 12:54:00 PM', 'NEW', '1', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_quotes`
--
ALTER TABLE `app_quotes`
  ADD PRIMARY KEY (`AppQuotesId`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`AssetsId`);

--
-- Indexes for table `assets_issued`
--
ALTER TABLE `assets_issued`
  ADD PRIMARY KEY (`AssetsMoveId`);

--
-- Indexes for table `assets_returned`
--
ALTER TABLE `assets_returned`
  ADD PRIMARY KEY (`AssetsReturnedId`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `booking_refunds`
--
ALTER TABLE `booking_refunds`
  ADD PRIMARY KEY (`BookingRefundId`);

--
-- Indexes for table `booking_refund_documents`
--
ALTER TABLE `booking_refund_documents`
  ADD PRIMARY KEY (`BookingRefundDocId`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`ChatId`);

--
-- Indexes for table `chat_attachements`
--
ALTER TABLE `chat_attachements`
  ADD PRIMARY KEY (`ChatAttachId`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`ChatMessageId`);

--
-- Indexes for table `circulars`
--
ALTER TABLE `circulars`
  ADD PRIMARY KEY (`CircularId`);

--
-- Indexes for table `circular_files`
--
ALTER TABLE `circular_files`
  ADD PRIMARY KEY (`CircularFileId`);

--
-- Indexes for table `circular_status`
--
ALTER TABLE `circular_status`
  ADD PRIMARY KEY (`CircularStatusId`);

--
-- Indexes for table `comaigns`
--
ALTER TABLE `comaigns`
  ADD PRIMARY KEY (`ComaignId`);

--
-- Indexes for table `company_policies`
--
ALTER TABLE `company_policies`
  ADD PRIMARY KEY (`PolicyId`);

--
-- Indexes for table `company_policy_applicable_on`
--
ALTER TABLE `company_policy_applicable_on`
  ADD PRIMARY KEY (`ApplicableId`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`ConfigsId`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`configurationsid`);

--
-- Indexes for table `config_holidays`
--
ALTER TABLE `config_holidays`
  ADD PRIMARY KEY (`ConfigHolidayid`);

--
-- Indexes for table `config_locations`
--
ALTER TABLE `config_locations`
  ADD PRIMARY KEY (`config_location_id`);

--
-- Indexes for table `config_mail_sender`
--
ALTER TABLE `config_mail_sender`
  ADD PRIMARY KEY (`config_mail_sender_id`);

--
-- Indexes for table `config_modules`
--
ALTER TABLE `config_modules`
  ADD PRIMARY KEY (`ConfigModuleId`);

--
-- Indexes for table `config_payroll_allowances`
--
ALTER TABLE `config_payroll_allowances`
  ADD PRIMARY KEY (`payroll_allowance_id`);

--
-- Indexes for table `config_payroll_allowance_for_users`
--
ALTER TABLE `config_payroll_allowance_for_users`
  ADD PRIMARY KEY (`payroll_allowance_for_emps_id`);

--
-- Indexes for table `config_payroll_deductions`
--
ALTER TABLE `config_payroll_deductions`
  ADD PRIMARY KEY (`payroll_deduction_id`);

--
-- Indexes for table `config_payroll_deductions_for_users`
--
ALTER TABLE `config_payroll_deductions_for_users`
  ADD PRIMARY KEY (`payroll_deductions_for_users_id`);

--
-- Indexes for table `config_pgs`
--
ALTER TABLE `config_pgs`
  ADD PRIMARY KEY (`ConfigPgId`);

--
-- Indexes for table `config_values`
--
ALTER TABLE `config_values`
  ADD PRIMARY KEY (`ConfigValueId`);

--
-- Indexes for table `creatives`
--
ALTER TABLE `creatives`
  ADD PRIMARY KEY (`CreativeId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`CustAddressId`);

--
-- Indexes for table `customer_co_address_details`
--
ALTER TABLE `customer_co_address_details`
  ADD PRIMARY KEY (`CustomerCoAddressId`);

--
-- Indexes for table `customer_co_details`
--
ALTER TABLE `customer_co_details`
  ADD PRIMARY KEY (`CustCoId`);

--
-- Indexes for table `customer_co_documents`
--
ALTER TABLE `customer_co_documents`
  ADD PRIMARY KEY (`CustomerCoDocId`);

--
-- Indexes for table `customer_documents`
--
ALTER TABLE `customer_documents`
  ADD PRIMARY KEY (`CustomerDocumentId`);

--
-- Indexes for table `customer_nominees`
--
ALTER TABLE `customer_nominees`
  ADD PRIMARY KEY (`CustNomineeId`);

--
-- Indexes for table `customer_notifications`
--
ALTER TABLE `customer_notifications`
  ADD PRIMARY KEY (`CustomerNotificationId`);

--
-- Indexes for table `expanses`
--
ALTER TABLE `expanses`
  ADD PRIMARY KEY (`ExpansesId`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`LeadsId`);

--
-- Indexes for table `lead_followups`
--
ALTER TABLE `lead_followups`
  ADD PRIMARY KEY (`LeadFollowUpId`);

--
-- Indexes for table `lead_followup_durations`
--
ALTER TABLE `lead_followup_durations`
  ADD PRIMARY KEY (`leadcallId`);

--
-- Indexes for table `lead_requirements`
--
ALTER TABLE `lead_requirements`
  ADD PRIMARY KEY (`LeadRequirementID`);

--
-- Indexes for table `lead_uploads`
--
ALTER TABLE `lead_uploads`
  ADD PRIMARY KEY (`leadsUploadId`);

--
-- Indexes for table `marketing_collaterals`
--
ALTER TABLE `marketing_collaterals`
  ADD PRIMARY KEY (`MarketingCoId`);

--
-- Indexes for table `newspapercompaigns`
--
ALTER TABLE `newspapercompaigns`
  ADD PRIMARY KEY (`NewCompaignId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`NotificationsId`);

--
-- Indexes for table `od_forms`
--
ALTER TABLE `od_forms`
  ADD PRIMARY KEY (`OdFormId`);

--
-- Indexes for table `od_form_attachements`
--
ALTER TABLE `od_form_attachements`
  ADD PRIMARY KEY (`OdFormAttachmentId`);

--
-- Indexes for table `od_form_status`
--
ALTER TABLE `od_form_status`
  ADD PRIMARY KEY (`OdFormStatuslId`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`payrolls_id`);

--
-- Indexes for table `payroll_allowances`
--
ALTER TABLE `payroll_allowances`
  ADD PRIMARY KEY (`pay_allowance_id`);

--
-- Indexes for table `payroll_deductions`
--
ALTER TABLE `payroll_deductions`
  ADD PRIMARY KEY (`pay_deduction_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectsId`);

--
-- Indexes for table `project_media_files`
--
ALTER TABLE `project_media_files`
  ADD PRIMARY KEY (`ProjectMediaFileId`);

--
-- Indexes for table `project_units`
--
ALTER TABLE `project_units`
  ADD PRIMARY KEY (`project_unit_id`);

--
-- Indexes for table `reception_activity`
--
ALTER TABLE `reception_activity`
  ADD PRIMARY KEY (`reception_activity_id`);

--
-- Indexes for table `reception_courier`
--
ALTER TABLE `reception_courier`
  ADD PRIMARY KEY (`reception_courier_id`);

--
-- Indexes for table `reception_meeting`
--
ALTER TABLE `reception_meeting`
  ADD PRIMARY KEY (`reception_meeting_id`);

--
-- Indexes for table `reception_sitevisit`
--
ALTER TABLE `reception_sitevisit`
  ADD PRIMARY KEY (`reception_sitevisit_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`RegistrationId`);

--
-- Indexes for table `registration_activities`
--
ALTER TABLE `registration_activities`
  ADD PRIMARY KEY (`RegActivityId`);

--
-- Indexes for table `registration_charges`
--
ALTER TABLE `registration_charges`
  ADD PRIMARY KEY (`RegChargeId`);

--
-- Indexes for table `registration_members`
--
ALTER TABLE `registration_members`
  ADD PRIMARY KEY (`RegMemberId`);

--
-- Indexes for table `registration_nominee_docs`
--
ALTER TABLE `registration_nominee_docs`
  ADD PRIMARY KEY (`RegNomDocId`);

--
-- Indexes for table `registration_nom_transfer`
--
ALTER TABLE `registration_nom_transfer`
  ADD PRIMARY KEY (`RegNomTransferId`);

--
-- Indexes for table `registration_nom_transfer_docs`
--
ALTER TABLE `registration_nom_transfer_docs`
  ADD PRIMARY KEY (`RegNomTranDocId`);

--
-- Indexes for table `registration_payments`
--
ALTER TABLE `registration_payments`
  ADD PRIMARY KEY (`RegPaymentId`);

--
-- Indexes for table `registration_payment_activities`
--
ALTER TABLE `registration_payment_activities`
  ADD PRIMARY KEY (`RegPayActivityId`);

--
-- Indexes for table `registration_refunds`
--
ALTER TABLE `registration_refunds`
  ADD PRIMARY KEY (`RegRefundId`);

--
-- Indexes for table `registration_refund_documents`
--
ALTER TABLE `registration_refund_documents`
  ADD PRIMARY KEY (`RegRefundDocId`);

--
-- Indexes for table `systemlogs`
--
ALTER TABLE `systemlogs`
  ADD PRIMARY KEY (`LogsId`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`TrainingId`);

--
-- Indexes for table `training_members`
--
ALTER TABLE `training_members`
  ADD PRIMARY KEY (`TrainingMemberId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`UserAccessId`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`UserAddressId`);

--
-- Indexes for table `user_allowed_leaves`
--
ALTER TABLE `user_allowed_leaves`
  ADD PRIMARY KEY (`UserAllowedLeaveId`);

--
-- Indexes for table `user_appraisals`
--
ALTER TABLE `user_appraisals`
  ADD PRIMARY KEY (`UserAppraisalId`);

--
-- Indexes for table `user_attandance_check_in`
--
ALTER TABLE `user_attandance_check_in`
  ADD PRIMARY KEY (`check_in_id`);

--
-- Indexes for table `user_attandance_check_out`
--
ALTER TABLE `user_attandance_check_out`
  ADD PRIMARY KEY (`check_out_id`);

--
-- Indexes for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  ADD PRIMARY KEY (`UserBankDetailsId`);

--
-- Indexes for table `user_day_breaks`
--
ALTER TABLE `user_day_breaks`
  ADD PRIMARY KEY (`day_break_id`);

--
-- Indexes for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD PRIMARY KEY (`UserDocsId`);

--
-- Indexes for table `user_employment_details`
--
ALTER TABLE `user_employment_details`
  ADD PRIMARY KEY (`UserEmpDetailsId`);

--
-- Indexes for table `user_family_members`
--
ALTER TABLE `user_family_members`
  ADD PRIMARY KEY (`UserFamilyMemberId`);

--
-- Indexes for table `user_in_out`
--
ALTER TABLE `user_in_out`
  ADD PRIMARY KEY (`user_in_out_id`);

--
-- Indexes for table `user_leaves`
--
ALTER TABLE `user_leaves`
  ADD PRIMARY KEY (`UserLeaveId`);

--
-- Indexes for table `user_leave_attachments`
--
ALTER TABLE `user_leave_attachments`
  ADD PRIMARY KEY (`UserLeaveFileId`);

--
-- Indexes for table `user_leave_contact_nos`
--
ALTER TABLE `user_leave_contact_nos`
  ADD PRIMARY KEY (`UserLeaveContactId`);

--
-- Indexes for table `user_leave_status`
--
ALTER TABLE `user_leave_status`
  ADD PRIMARY KEY (`UserLeaveStatusId`);

--
-- Indexes for table `user_meetings`
--
ALTER TABLE `user_meetings`
  ADD PRIMARY KEY (`user_meeting_id`);

--
-- Indexes for table `user_password_change_requests`
--
ALTER TABLE `user_password_change_requests`
  ADD PRIMARY KEY (`PasswordChangeReqId`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`UserPermissionsId`);

--
-- Indexes for table `user_pips`
--
ALTER TABLE `user_pips`
  ADD PRIMARY KEY (`UserPipId`);

--
-- Indexes for table `user_rewards`
--
ALTER TABLE `user_rewards`
  ADD PRIMARY KEY (`RewardsId`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`VisitorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_quotes`
--
ALTER TABLE `app_quotes`
  MODIFY `AppQuotesId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `AssetsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets_issued`
--
ALTER TABLE `assets_issued`
  MODIFY `AssetsMoveId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets_returned`
--
ALTER TABLE `assets_returned`
  MODIFY `AssetsReturnedId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookingId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_refunds`
--
ALTER TABLE `booking_refunds`
  MODIFY `BookingRefundId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_refund_documents`
--
ALTER TABLE `booking_refund_documents`
  MODIFY `BookingRefundDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `ChatId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_attachements`
--
ALTER TABLE `chat_attachements`
  MODIFY `ChatAttachId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `ChatMessageId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `circulars`
--
ALTER TABLE `circulars`
  MODIFY `CircularId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `circular_files`
--
ALTER TABLE `circular_files`
  MODIFY `CircularFileId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `circular_status`
--
ALTER TABLE `circular_status`
  MODIFY `CircularStatusId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `comaigns`
--
ALTER TABLE `comaigns`
  MODIFY `ComaignId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_policies`
--
ALTER TABLE `company_policies`
  MODIFY `PolicyId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `company_policy_applicable_on`
--
ALTER TABLE `company_policy_applicable_on`
  MODIFY `ApplicableId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `ConfigsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `configurationsid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `config_holidays`
--
ALTER TABLE `config_holidays`
  MODIFY `ConfigHolidayid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `config_locations`
--
ALTER TABLE `config_locations`
  MODIFY `config_location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_mail_sender`
--
ALTER TABLE `config_mail_sender`
  MODIFY `config_mail_sender_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `config_modules`
--
ALTER TABLE `config_modules`
  MODIFY `ConfigModuleId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_payroll_allowances`
--
ALTER TABLE `config_payroll_allowances`
  MODIFY `payroll_allowance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `config_payroll_allowance_for_users`
--
ALTER TABLE `config_payroll_allowance_for_users`
  MODIFY `payroll_allowance_for_emps_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `config_payroll_deductions`
--
ALTER TABLE `config_payroll_deductions`
  MODIFY `payroll_deduction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_payroll_deductions_for_users`
--
ALTER TABLE `config_payroll_deductions_for_users`
  MODIFY `payroll_deductions_for_users_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `config_pgs`
--
ALTER TABLE `config_pgs`
  MODIFY `ConfigPgId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_values`
--
ALTER TABLE `config_values`
  MODIFY `ConfigValueId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `creatives`
--
ALTER TABLE `creatives`
  MODIFY `CreativeId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `CustAddressId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_co_address_details`
--
ALTER TABLE `customer_co_address_details`
  MODIFY `CustomerCoAddressId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_co_details`
--
ALTER TABLE `customer_co_details`
  MODIFY `CustCoId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_co_documents`
--
ALTER TABLE `customer_co_documents`
  MODIFY `CustomerCoDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_documents`
--
ALTER TABLE `customer_documents`
  MODIFY `CustomerDocumentId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_nominees`
--
ALTER TABLE `customer_nominees`
  MODIFY `CustNomineeId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_notifications`
--
ALTER TABLE `customer_notifications`
  MODIFY `CustomerNotificationId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expanses`
--
ALTER TABLE `expanses`
  MODIFY `ExpansesId` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `LeadsId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lead_followups`
--
ALTER TABLE `lead_followups`
  MODIFY `LeadFollowUpId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lead_followup_durations`
--
ALTER TABLE `lead_followup_durations`
  MODIFY `leadcallId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lead_requirements`
--
ALTER TABLE `lead_requirements`
  MODIFY `LeadRequirementID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `lead_uploads`
--
ALTER TABLE `lead_uploads`
  MODIFY `leadsUploadId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_collaterals`
--
ALTER TABLE `marketing_collaterals`
  MODIFY `MarketingCoId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newspapercompaigns`
--
ALTER TABLE `newspapercompaigns`
  MODIFY `NewCompaignId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `NotificationsId` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `od_forms`
--
ALTER TABLE `od_forms`
  MODIFY `OdFormId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `od_form_attachements`
--
ALTER TABLE `od_form_attachements`
  MODIFY `OdFormAttachmentId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `od_form_status`
--
ALTER TABLE `od_form_status`
  MODIFY `OdFormStatuslId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `payrolls_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_allowances`
--
ALTER TABLE `payroll_allowances`
  MODIFY `pay_allowance_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_deductions`
--
ALTER TABLE `payroll_deductions`
  MODIFY `pay_deduction_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `project_media_files`
--
ALTER TABLE `project_media_files`
  MODIFY `ProjectMediaFileId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `project_units`
--
ALTER TABLE `project_units`
  MODIFY `project_unit_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reception_activity`
--
ALTER TABLE `reception_activity`
  MODIFY `reception_activity_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reception_courier`
--
ALTER TABLE `reception_courier`
  MODIFY `reception_courier_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reception_meeting`
--
ALTER TABLE `reception_meeting`
  MODIFY `reception_meeting_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reception_sitevisit`
--
ALTER TABLE `reception_sitevisit`
  MODIFY `reception_sitevisit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `RegistrationId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration_activities`
--
ALTER TABLE `registration_activities`
  MODIFY `RegActivityId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_charges`
--
ALTER TABLE `registration_charges`
  MODIFY `RegChargeId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration_members`
--
ALTER TABLE `registration_members`
  MODIFY `RegMemberId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `registration_nominee_docs`
--
ALTER TABLE `registration_nominee_docs`
  MODIFY `RegNomDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_nom_transfer`
--
ALTER TABLE `registration_nom_transfer`
  MODIFY `RegNomTransferId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_nom_transfer_docs`
--
ALTER TABLE `registration_nom_transfer_docs`
  MODIFY `RegNomTranDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_payments`
--
ALTER TABLE `registration_payments`
  MODIFY `RegPaymentId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration_payment_activities`
--
ALTER TABLE `registration_payment_activities`
  MODIFY `RegPayActivityId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration_refunds`
--
ALTER TABLE `registration_refunds`
  MODIFY `RegRefundId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_refund_documents`
--
ALTER TABLE `registration_refund_documents`
  MODIFY `RegRefundDocId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemlogs`
--
ALTER TABLE `systemlogs`
  MODIFY `LogsId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `TrainingId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_members`
--
ALTER TABLE `training_members`
  MODIFY `TrainingMemberId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `UserAccessId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `UserAddressId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_allowed_leaves`
--
ALTER TABLE `user_allowed_leaves`
  MODIFY `UserAllowedLeaveId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_appraisals`
--
ALTER TABLE `user_appraisals`
  MODIFY `UserAppraisalId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_attandance_check_in`
--
ALTER TABLE `user_attandance_check_in`
  MODIFY `check_in_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_attandance_check_out`
--
ALTER TABLE `user_attandance_check_out`
  MODIFY `check_out_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  MODIFY `UserBankDetailsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_day_breaks`
--
ALTER TABLE `user_day_breaks`
  MODIFY `day_break_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_documents`
--
ALTER TABLE `user_documents`
  MODIFY `UserDocsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_employment_details`
--
ALTER TABLE `user_employment_details`
  MODIFY `UserEmpDetailsId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_family_members`
--
ALTER TABLE `user_family_members`
  MODIFY `UserFamilyMemberId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_in_out`
--
ALTER TABLE `user_in_out`
  MODIFY `user_in_out_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_leaves`
--
ALTER TABLE `user_leaves`
  MODIFY `UserLeaveId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_leave_attachments`
--
ALTER TABLE `user_leave_attachments`
  MODIFY `UserLeaveFileId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_leave_contact_nos`
--
ALTER TABLE `user_leave_contact_nos`
  MODIFY `UserLeaveContactId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_leave_status`
--
ALTER TABLE `user_leave_status`
  MODIFY `UserLeaveStatusId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_meetings`
--
ALTER TABLE `user_meetings`
  MODIFY `user_meeting_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_password_change_requests`
--
ALTER TABLE `user_password_change_requests`
  MODIFY `PasswordChangeReqId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `UserPermissionsId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_pips`
--
ALTER TABLE `user_pips`
  MODIFY `UserPipId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_rewards`
--
ALTER TABLE `user_rewards`
  MODIFY `RewardsId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `VisitorId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
