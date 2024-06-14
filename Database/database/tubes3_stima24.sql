-- MariaDB dump 10.19  Distrib 10.6.15-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tubes3_stima24
-- ------------------------------------------------------
-- Server version	10.6.15-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `biodata`
--

DROP TABLE IF EXISTS `biodata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biodata` (
  `NIK` varchar(16) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `golongan_darah` varchar(5) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `status_perkawinan` enum('Belum Menikah','Menikah','Cerai') DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NIK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata`
--

-- LOCK TABLES `biodata` WRITE;
/*!40000 ALTER TABLE `biodata` DISABLE KEYS */;
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303011125810774','b1nTN6 dw mrthen','Port Amanda','1949-09-20','Laki-Laki','B','6035 Kimberly Village Apt. 899\nNorth Lindsayport, DC 70968','Katolik','Belum Menikah','Perawat','Fiji');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303022304577991','hziq aBYYu MhdY','Brownport','2019-07-18','Laki-Laki','AB','Unit 2309 Box 6965\nDPO AA 23291','Konghucu','Cerai','Akuntan','Grenada');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303027429445897','B3rn4rdu5 w1ll50N','South Steven','1936-04-21','Laki-Laki','B','30710 Myers Avenue Apt. 213\nRyanland, NE 94224','Islam','Cerai','Dokter','Senegal');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303028343408496','alx sNdr','North Carlosborough','1998-06-13','Laki-Laki','O','5203 Kimberly Roads\nHortonborough, KY 76544','Katolik','Menikah','Chef','Vanuatu');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303038256625159','mOHaMmad rIfQi farhaNsyah','Shepherdborough','1975-04-05','Laki-Laki','O','8600 Lane Gardens\nWest Jennifer, UT 47682','Hindu','Belum Menikah','Ahli IT','Singapore');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303047128796042','fr5ka 2khraLTV4 r5KNd','New Jonathanville','2013-06-06','Perempuan','AB','8703 Johnson Pass Suite 000\nLaurabury, NM 96887','Islam','Cerai','Guru','South Georgia and the South Sandwich Islands');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303055847921779','slthn D2Ky 4LFr0','Lake Stephentown','2011-04-10','Laki-Laki','A','074 Michael Mews Suite 366\nWest Charlesbury, MN 89080','Kristen','Cerai','Arsitek','Chile');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303072755543498','Mchl Ln Ptr Widh','Brockton','1977-01-15','Laki-Laki','AB','86993 Taylor Creek Apt. 418\nRogersland, FL 99643','Katolik','Menikah','Insinyur','Libyan Arab Jamahiriya');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303079689599219','Judh S4nt5','Tammymouth','1984-04-23','Laki-Laki','AB','738 Booker Drive Apt. 037\nEast Vanessa, DC 66121','Kristen','Belum Menikah','Polisi','Philippines');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303092161641780','Nugrah4 Pr1y4 Utam4','South Christina','1948-10-17','Laki-Laki','A','964 Michelle Way Apt. 126\nSouth Sarah, KS 19385','Budha','Belum Menikah','Pengacara','Guam');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303058017706505','R0NLd1 mn1r', 'Morganside', '2002-04-16', 'Laki-Laki', 'A', 'Unit 3883 Box 9413\nDPO AA 54492', 'Katolik', 'Menikah', 'Insinyur', 'Afghanistan');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303036053258590','d4ftar 1rk 651h', 'South Nicole', '2023-02-24', 'Laki-Laki', 'AB', '1985 Andrew Estates Suite 737\nPort Melissaborough, WV 85000', 'Budha', 'Belum Menikah', 'Pilot Drone', 'Bouvet Island (Bouvetoya)');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303010188758202','n1g3L s4HL', 'Kevinview', '1969-12-01', 'Laki-Laki', 'O', '509 Patrick Radial Suite 840\nNew Donaldbury, WI 18058', 'Budha', 'Cerai', 'Perancang Busana', 'Guam');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('3303060312247709','Ayo Jin IRK', 'North Jamesside', '1948-04-23', 'Laki-Laki', 'A', 'USNV Turner\nFPO AE 92630', 'Katolik', 'Belum Menikah', 'Ahli Fisika', 'Cocos (Keeling) Islands');
/*!40000 ALTER TABLE `biodata` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `sidik_jari`
--

DROP TABLE IF EXISTS `sidik_jari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidik_jari` (
  `berkas_citra` text DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidik_jari`
--

-- LOCK TABLES `sidik_jari` WRITE;
/*!40000 ALTER TABLE `sidik_jari` DISABLE KEYS */;
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\55__M_Left_index_finger.bmp','Rila Mandala');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\55__M_Left_little_finger.bmp','Bintang Dwi Marthen');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\55__M_Left_middle_finger.bmp','Bintang Dwi Marthen');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\55__M_Left_ring_finger.bmp','Bintang Dwi Marthen');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\55__M_Left_thumb_finger.bmp','Bintang Dwi Marthen');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\55__M_Right_index_finger.bmp','Bintang Dwi Marthen');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\55__M_Right_middle_finger.bmp','Bintang Dwi Marthen');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\55__M_Right_ring_finger.bmp','Bintang Dwi Marthen');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\55__M_Right_thumb_finger.bmp','Bintang Dwi Marthen');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\81__F_Right_index_finger.bmp','Haziq Abiyyu Mahdy');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\81__F_Right_little_finger.bmp','Haziq Abiyyu Mahdy');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\81__F_Right_middle_finger.bmp','Haziq Abiyyu Mahdy');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\81__F_Right_thumb_finger.bmp','Haziq Abiyyu Mahdy');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\82__M_Left_index_finger.bmp','Bernardus Willson');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\82__M_Left_little_finger.bmp','Bernardus Willson');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\82__M_Left_middle_finger.bmp','Bernardus Willson');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\82__M_Left_ring_finger.bmp','Bernardus Willson');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\82__M_Left_thumb_finger.bmp','Bernardus Willson');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\82__M_Right_index_finger.bmp','Bernardus Willson');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\82__M_Right_little_finger.bmp','Bernardus Willson');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\82__M_Right_ring_finger.bmp','Bernardus Willson');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\82__M_Right_thumb_finger.bmp','Bernardus Willson');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\97__M_Left_little_finger.bmp','Alex Sander');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\97__M_Left_middle_finger.bmp','Alex Sander');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\97__M_Left_ring_finger.bmp','Alex Sander');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\97__M_Right_index_finger.bmp','Alex Sander');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\97__M_Right_little_finger.bmp','Alex Sander');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\97__M_Right_middle_finger.bmp','Alex Sander');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\97__M_Right_ring_finger.bmp','Alex Sander');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\97__M_Right_thumb_finger.bmp','Alex Sander');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\98__M_Left_index_finger.bmp','Mohammad Rifqi Farhansyah');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\98__M_Left_little_finger.bmp','Mohammad Rifqi Farhansyah');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\98__M_Left_middle_finger.bmp','Mohammad Rifqi Farhansyah');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\98__M_Left_thumb_finger.bmp','Mohammad Rifqi Farhansyah');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\98__M_Right_index_finger.bmp','Mohammad Rifqi Farhansyah');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\98__M_Right_little_finger.bmp','Mohammad Rifqi Farhansyah');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\98__M_Right_middle_finger.bmp','Mohammad Rifqi Farhansyah');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\98__M_Right_ring_finger.bmp','Mohammad Rifqi Farhansyah');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\98__M_Right_thumb_finger.bmp','Mohammad Rifqi Farhansyah');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Left_index_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Left_little_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Left_middle_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Left_ring_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Left_thumb_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Right_index_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Right_little_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Right_middle_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Right_ring_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\99__M_Right_thumb_finger.bmp','Fariska Zakhralativa Ruskanda');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\100__M_Right_ring_finger.bmp','Sulthan Dzaky Alfaro');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\100__M_Right_ring_finger_CR.bmp','Sulthan Dzaky Alfaro');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\100__M_Right_ring_finger_Obl.bmp','Sulthan Dzaky Alfaro');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\100__M_Right_ring_finger_Zcut.bmp','Sulthan Dzaky Alfaro');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\102__M_Left_little_finger.bmp','Michael Leon Putra Widhi');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\102__M_Left_little_finger_CR.bmp','Michael Leon Putra Widhi');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\102__M_Left_little_finger_Obl.bmp','Michael Leon Putra Widhi');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\102__M_Left_little_finger_Zcut.bmp','Michael Leon Putra Widhi');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\103__F_Left_ring_finger.bmp','Judhi Santoso');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\103__F_Left_thumb_finger.bmp','Judhi Santoso');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\103__F_Left_thumb_finger_Obl.bmp','Judhi Santoso');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\103__F_Right_index_finger.bmp','Judhi Santoso');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\103__F_Right_index_finger_CR.bmp','Judhi Santoso');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\103__F_Right_index_finger_Obl.bmp','Judhi Santoso');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\564__M_Right_ring_finger.bmp','Rinaldi Munir');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\564__M_Right_thumb_finger.bmp','Rinaldi Munir');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Left_index_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Left_little_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Left_middle_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Left_ring_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Left_thumb_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Right_index_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Right_little_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Right_middle_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Right_ring_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\565__M_Right_thumb_finger.bmp','Nugraha Priya Utama');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\566__M_Left_index_finger.bmp','Daftar IRK Gasih');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\566__M_Left_little_finger.bmp','Daftar IRK Gasih');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\566__M_Left_middle_finger.bmp','Daftar IRK Gasih');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\566__M_Left_ring_finger.bmp','Daftar IRK Gasih');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\566__M_Left_thumb_finger.bmp','Daftar IRK Gasih');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\566__M_Right_little_finger.bmp','Daftar IRK Gasih');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\568__M_Left_index_finger.bmp','Nigel Sahl');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\568__M_Left_little_finger.bmp','Nigel Sahl');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\568__M_Left_middle_finger.bmp','Nigel Sahl');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\568__M_Left_thumb_finger.bmp','Nigel Sahl');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\568__M_Right_index_finger.bmp','Nigel Sahl');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\568__M_Right_little_finger.bmp','Nigel Sahl');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\568__M_Right_middle_finger.bmp','Nigel Sahl');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\568__M_Right_ring_finger.bmp','Nigel Sahl');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\568__M_Right_thumb_finger.bmp','Nigel Sahl');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Left_index_finger.bmp','Ayo Join IRK');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Left_little_finger.bmp','Ayo Join IRK');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Left_middle_finger.bmp','Ayo Join IRK');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Left_ring_finger.bmp','Ayo Join IRK');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Left_thumb_finger.bmp','Ayo Join IRK');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Right_index_finger.bmp','Ayo Join IRK');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Right_little_finger.bmp','Ayo Join IRK');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Right_middle_finger.bmp','Ayo Join IRK');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Right_ring_finger.bmp','Ayo Join IRK');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Test\\569__M_Right_thumb_finger.bmp','Ayo Join IRK');
/*!40000 ALTER TABLE `sidik_jari` ENABLE KEYS */;
-- UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24 19:39:11
