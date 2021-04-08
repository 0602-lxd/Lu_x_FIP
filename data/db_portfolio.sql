-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2021 at 10:00 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio_categories`
--

DROP TABLE IF EXISTS `tbl_portfolio_categories`;
CREATE TABLE IF NOT EXISTS `tbl_portfolio_categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(60) NOT NULL,
  `Subtitle` varchar(60) NOT NULL,
  `Description` text NOT NULL,
  `Category` varchar(60) NOT NULL,
  `Team` varchar(60) NOT NULL,
  `Year` varchar(50) NOT NULL,
  `Deliverables` varchar(150) NOT NULL,
  `Images` text NOT NULL,
  `VideoUrl` varchar(30) NOT NULL,
  `Cover` varchar(30) NOT NULL,
  `ProcessTitle` varchar(60) NOT NULL,
  `ProcessDescription` text NOT NULL,
  `ProcessImg` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_portfolio_categories`
--

INSERT INTO `tbl_portfolio_categories` (`ID`, `Title`, `Subtitle`, `Description`, `Category`, `Team`, `Year`, `Deliverables`, `Images`, `VideoUrl`, `Cover`, `ProcessTitle`, `ProcessDescription`, `ProcessImg`) VALUES
(1, 'Kids Channel Bumper', 'A cute video for Happykids.TV channel', 'This video contains a few interesting animations. I have worked on for happy kids channel tv. I am using the Adobe software (After Effects, Media Encoder, etc.) for this video. I am also using a few 3D animations in Cinema4D. This is a cute Project for 4-12 years children. You can see more detail in the rest of my portfolio!', 'Animation ', 'Xindi Lu', '2020', 'Video(Mp4)', 'kids_1.jpg,kids_2.jpg,kids_3.jpg', 'kids_mp4', 'kids_cover.jpg', '', '', ''),
(2, 'Ceci Makeup', 'Branding for Ceci cosmestics', 'CECI is a cosmetic brand that wants to help women know that they should have the courage to try, in the process of enjoying makeup fun, learn how to show the natural beauty and personal style. The charm of CECI lies in its irresistible real qualities: charming, confident and natural. I designed a logo and poster for this cosmetics brand to promote the product, It is a completed branding project for me. It is very interesting!', 'Branding', 'Xindi Lu', '2020', 'Logo, Poster', 'ceci_1.jpg,ceci_2.jpg,ceci_3.jpg,ceci_4.jpg,ceci_5.jpg', '', 'ceci_cover.jpg', '', '', ''),
(3, 'Tilex Beer', 'Branding for new Tilex Beer', 'This is a new mixed brand project Tilex, It started with a group of mates. All hailing from the beer scene, these guys wanted to brew an awesome, hop-driven American Pale Ale with a distinctive aroma and delicious flavour.\r\nI designed a logo and website for this beer brand to promote the product, You can browse different types of beer on this website and learn about the history of this brand. You can also buy beer on this website, but you must make sure you are an adult :D If you are interested in this beer brand design, please let me know!', 'Branding', 'Xindi Lu', '2020', 'UX, Branding, Website', 'beer_1.jpg,beer_2.jpg,beer_3.jpg,beer_4.jpg,beer_5.jpg', '', 'beer_cover.jpg', '', '', ''),
(4, 'Cartoon Hand Painted', 'Several Hand Painted for part-time job', 'I have been learning to paint since I was in elementary school, and it has been more than ten years now. I think painting is really a very interesting thing, which makes me more creative.\r\nIn addition to school, I also do some part-time jobs to make money. Because I like drawing very much, I often draw cartoons and hand-painted to make money. I think I am drawing while doing what I like.', 'Cartoon/Painting', 'Xindi Lu', '2018', 'Pictures, Poster', 'cartoon_1.jpg,cartoon_2.jpg,cartoon_3.jpg,cartoon_4.jpg,cartoon_5.jpg', '', 'cartoon_cover.jpg', '', '', ''),
(5, 'Beauty Diary', 'Branding for a  Cosmetic brand', 'Beauty Diary is a new cosmetics brand, it mainly sells a variety of makeup, here you can find any brand you want to find,\r\nThis is the brand design of a beauty brand and the establishment of a website. Customers can buy favourite products on the website and browse the product pages. This is the first website I designed.', 'Branding', 'Xindi Lu', '2019', 'Website', 'diary_1.jpg,diary_2.jpg,diary_3.jpg,diary_4.jpg,diary_5.jpg', '', 'diary_cover.jpg', '', '', ''),
(6, 'Sportsnet', 'A video intro for a sports network.', 'As an end of term project, we were asked to create a video intro that could be used for a sports network. All the modelling, texturing, and animation was done by myself in Cinema4D. I edited the video in After Effects and Media Encoder. This is a very big project and a big challenge for me!', 'Animation ', 'Xindi Lu', '2020', 'Creative Direction, Video Editing', 'sportsnet_1.jpg,sportsnet_2.jpg,sportsnet_3.jpg,', 'sportsnet.mp4', 'sportsnet_cover.jpg', '', '', ''),
(7, 'London Referees Group', 'This is a  Interactive Media Design program', 'A revamp of London Referees Group\'s official website. It includes updating content, layout, and improving user experience and navigation for better conversions and site performance. The main goal is to improve the usability of the website for its members, provides information for future officials, and encourage users to apply for their existing/upcoming programs.', 'Branding', 'Xindi Lu', '2021', 'Webpage', 'lrg_1.jpg,lrg_2.jpg,lrg_3.jpg', 'lrg.mp4', 'lrg_cover.jpg', 'Design Logo,Branding Guidelines, and Pantones', 'This is the cooperation of the recent graduates of the Interactive Media Design Program. In my project, I worked as a graphic designer. Firstly, I designed the logo draft, determined the overall color and layout of the website and the logo, and wrote the brand guide. Search for pictures, make illustrations, etc.', 'process_r_1.jpg,process_r_2.jpg,process_r_3.jpg,process_r_4.jpg,process_r_5.jpg,\r\nprocess_r_6.jpg'),
(8, 'Hyatt Bedroom', 'A design for a bedroom', 'This is a C4d design assignment, we need to design a bedroom and create all the furniture in the bedroom, set the lighting layout.', 'Design', 'Xindi Lu', '2020', 'Design Files, Pic', 'hyatt_1.jpg,hyatt_2.jpg,hyatt_3.jpg', '', 'hyatt_cover.jpg', '', '', ''),
(9, 'Couples Resort', 'A web design for Couples Resort in Muskoka', 'Couples Resort is a cozy resort located in Muskoka, Ontario surrounded by wild nature. The goal was to reorganize the existing website, make it user friendly and fill it with the necessary information and images. As the clients mostly access the resort’s booking system through the website the main issue was to build an excellent customer experience in all possible aspects.', 'Web design', 'Xindi Lu', '2019', 'Webpage', 'couples_1.jpg,couples_2.jpg,couples_3.jpg', '', 'couples_cover.jpg', 'Rebuild Couples Resort', 'Find out the shortcomings of the original website, brainstorming, adjust the color according to the characteristics of the website, make a reasonable wireframe, determine the color, and then make the wireframe of the website. Finally, make a high-fidelity website prototype.', 'process_c_1.jpg,process_c_2.jpg,process_c_3.jpg,process_c_4.jpg'),
(10, 'Makeup Styleframes', 'Product Scene Texturing & Styleframes', 'This is a demo reel job, we need to design the material of the product and make the demo reel of this project by changing the angle of the camera. In this homework, I used Cinema4D to texturing it, and then I used Photoshop to process the rendered image again.', 'Animation ', 'Xindi Lu', '2020', 'Demo Reel pic', 'product_1.jpg,product_2.jpg,product_3.jpg', '', 'product_cover.jpg', '', '', ''),
(11, '2020 Demo Reel', 'A compilation of some of my past works.', 'Some of videos and animations I have worked on in the past year. I work primarily using the Adobe Creative Suite (After Effects, Premiere Pro, Illustrator, Photoshop, Indesign, XD, etc.) But you\'ll also see a few 3D animations in Cinema4D. Most of the projects are covered in more detail in the rest of my portfolio!', 'Animation ', 'Xindi Lu', '2020', 'Video, Styleframes', 'reel_1.jpg,reel_2.jpg,reel_3.jpg', 'fip.mp4', 'reel_cover.jpg', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
