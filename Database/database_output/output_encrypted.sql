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
  `NIK` varchar(100) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  `golongan_darah` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `status_perkawinan` varchar(100) DEFAULT NULL,
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
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('i89qQW19sxg+GgY2BG4jjHwEbriTfWhEVVtu3bgFWXQ=', 'br4HwyWTYtIu008UO0Spk3wEbriTfWhEVVtu3bgFWXQ=', 'Q2DTWKztGk2YeflIog9i0w==', 'UUlYZqw6U5g9kWshn/4mqQ==', '1fGROo8ng4FUPKVIN6oBFw==', 'ujJHiRgZNyhZ9FzbvFgWfA==', 'uhkzT8zp8+AD0LrdI5su5X8CMkY7V3PGqUFYXDRja6aDT2MRJi8l2k+xx3nEb1ryu3u48nXUfTq2zLIipNXOAQ==', 'yYnKpkaE4N5ewCltudpGiA==', '6SxRYxq+Ob9W6/GaSGTZ9A==', 'uTg83tF0fzXAXNPUt1gW3A==', 'u2s2pva/mnTjh0bzAAWOOw==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('VSQJsRIbyBidKmnskM4dN3wEbriTfWhEVVtu3bgFWXQ=', 'PgL0SKJnzxWCgrk2XuCklA==', '5XQG9MTSy2r2TcnBE9ptOw==', 'IfUqZlyfjZjqoUohGyr+qQ==', '1fGROo8ng4FUPKVIN6oBFw==', 'KjNbIOIvk8p95ubg4gS5fQ==', 'ujJ34eOqYX441GpsXy39lx14h9ruoJnSkbiQJ/GNhx58BG64k31oRFVbbt24BVl0', 'CWSbGdi6pWb/cVG1m+pFOQ==', 'iZ14qvYX8lfs6ZK+XulUYA==', 'QgqEXLjiy+cFPdtU8/Aa3g==', '6lodXMWBzudgvSBUqjLX3g==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('6PPaBhphi6qgjP/8WLhs7XwEbriTfWhEVVtu3bgFWXQ=', 'esqGz14/kaoJVHDzCu6CHIoyR4kfGTco9/Rc27lYFnw=', 'xO27eR4OGqVWqeSRpzRczg==', 'URde+Kx2FTM9qa4in/APbw==', '1fGROo8ng4FUPKVIN6oBFw==', 'ujJHiRgZNyhZ9FzbvFgWfA==', 'NckZ7cxql+7cJePynMOERqJ+BztjBx6j5xgtFSrlOx0xEZa+komdqH8FGKpA79sR', 'tQdgqqpZQVdv9de+76X6YA==', 'iZ14qvYX8lfs6ZK+XulUYA==', 'Og1KsUSW73pPer8D/C8Y7A==', 'LThGPT50R7u3XF+cRFj7Ig==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('tA7YYmsWqPwe5HjtgBrp6nwEbriTfWhEVVtu3bgFWXQ=', 'GG3otiAjluDuIwymrnqdrQ==', 'DMX3j0ZSfJrakcl/D9a3DjobD4Yeaz3uDcseDl2gMDY=', '3PoFa9Y+MOsxDVDcRByEOA==', '1fGROo8ng4FUPKVIN6oBFw==', '9zJHiZMZNyhu9FzbIFgWfA==', 'qAlEGSMgLxTqV30bTJU4yNsfLw8LNR3ZiJjXRwWzfO+jDmbtnNuhn0jnoeRw9hWL', 'yYnKpkaE4N5ewCltudpGiA==', 'tTgqiaN0fxLoXPjaxliLSQ==', 'izXFMGitGVIjwOCWubkHvg==', 'f7LroXqNZcV1V+LReZ5p/A==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('vY+1rKmxDVR6ZRkVGw2hJnwEbriTfWhEVVtu3bgFWXQ=', 'ZHuP/SZr+UbnGQDOIqVrXFMQsKAtK+ZP2nGkBZ6JjNw=', 'p0V1PeVjzjqHPvUxDmucOA==', 'm/HZ6pKj4p14M2NoQnEtDg==', '1fGROo8ng4FUPKVIN6oBFw==', '9zJHiZMZNyhu9FzbIFgWfA==', 'zUbgChpe5R1E5+vcrxubap055cYldADB5LrRtiEDzrusY6zqzVsJOMpxsNENp6m5', 'sfjP3WZcn3hB3fn2k910DQ==', '6SxRYxq+Ob9W6/GaSGTZ9A==', '0MUoiS81pxIX4eravZ+hSQ==', 'iY1q31J9piaxf0gQnlETZw==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('MKclVMtHNpdPzjIoggu8GHwEbriTfWhEVVtu3bgFWXQ=', '/ftbYiN8QDJK71zYNonFgVT7MFPSekh+ok3N+5KQ4bw=', 'oKor1Kqx4K4U+2w4tYxgtgYyR4mFGTcoYfRc21RYFnw=', '+fM1N6H/8zZh6PiYu1OG3w==', '6OSPCDuK3oFXCBDWFlkFDw==', 'KjNbIOIvk8p95ubg4gS5fQ==', 'wE4cb4xykaaR3NYPRWgwKe52XcHiQ5KXq6EBhFDOZlDKN0cyKpsziWSOKrccay+RfARuuJN9aERVW27duAVZdA==', 'tQdgqqpZQVdv9de+76X6YA==', 'iZ14qvYX8lfs6ZK+XulUYA==', 'ELOrgpa7Rp8sVjPEfdD7SA==', 'rGWFqIDy05Kxfcss1FS4ddYNs8e097W0jb+cXN5vvdgMirLh674dXwIVChHCjJzV');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('2HG36ARCQRLsk74j5OF9iHwEbriTfWhEVVtu3bgFWXQ=', 'pdWHXmu6nFkF9yiC6mC54HwEbriTfWhEVVtu3bgFWXQ=', 'DZzD/pHHFtU6nYeJtoFwcnwEbriTfWhEVVtu3bgFWXQ=', 'IXGoNlwR9hbqD1EsG7ITDg==', '1fGROo8ng4FUPKVIN6oBFw==', 'qDJHiZEZNyiA9FzbRFgWfA==', 'ZyIjeYHpI4PurOWEnCMgIaQq7K4d57yL9fdHlOx2A0A3eX41SPcsrIUhmH6W0YcpDQS1fTx1rVLhM195FZq+RQ==', 'nJkeN2XA8Q5B5K/D+VypIQ==', 'iZ14qvYX8lfs6ZK+XulUYA==', 'QplCibjAMRIF5OPa81yXSQ==', 'bSB0OHMcfxX+GsZ4qPUJuw==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('P1YJ/fknyBQJzWknl4Idb3wEbriTfWhEVVtu3bgFWXQ=', 'B4oVd+/OKsRfLTWRI1FgeHwEbriTfWhEVVtu3bgFWXQ=', 'hpaMujGMGwoo3XSTnk1jLA==', '3PHOqtajJhAxM8FbRHGo3w==', '1fGROo8ng4FUPKVIN6oBFw==', 'KjNbIOIvk8p95ubg4gS5fQ==', 'PZJzr9EuVIqoBwCWAUoHNXJlHWCEQhGkHiM5LZAdNL8VK9wUllkvdWm2wD2mwjzmwjJHieUZNyhB9Fzbl1gWfA==', 'yYnKpkaE4N5ewCltudpGiA==', 'tTgqiaN0fxLoXPjaxliLSQ==', 'hxGKszArtoHs2xq2T+rr6Q==', 'Zp2KC3Qk3J9RJrcP9yAhJlA8AK60VZXJef6JEsj2X5M=');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('UjA9CEKByG6vEAZ6KtCBAnwEbriTfWhEVVtu3bgFWXQ=', 'x/LVtV4kKwu81mq2prLxQA==', 'o3f/YutM3Ws4D8XulxMxGw==', 'UfoeU6w+dOU9DTa4nxxlQQ==', '1fGROo8ng4FUPKVIN6oBFw==', 'KjNbIOIvk8p95ubg4gS5fQ==', 'yGmF/xLR57yvjqNyrDnsAwM3HCJVDKuwgCvzCZjEVLLGdjCFXapuTdvSe3702f2nhTJHifsZNyhE9FzbVlgWfA==', 'nJkeN2XA8Q5B5K/D+VypIQ==', '6SxRYxq+Ob9W6/GaSGTZ9A==', 'O7mZrkOqkcnQaQESnf8Gkw==', 'IFd20w1z+POc81H4TFtp+g==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('60ySSdISt1RLLos0W6DbzXwEbriTfWhEVVtu3bgFWXQ=', '+4ZZhRiolS9ewdT3ITY1WuXYeoYR8JPui6jLDhT0UTY=', '7he+Pk2ikf2KmuXlHreZHA==', '3MRGa9aXJ+sxzxfcRFafOA==', '1fGROo8ng4FUPKVIN6oBFw==', 'qDJHiZEZNyiA9FzbRFgWfA==', 'ZM25DCLQJ/gmJU+Sbch2ZfNFxqOKWlpMtAr8UAfQcl8OKRPmZ3XczpNqBJzOkNbZfARuuJN9aERVW27duAVZdA==', 'MxkgSZTSmrKFQ6eWps6BTg==', '6SxRYxq+Ob9W6/GaSGTZ9A==', 'ZAtX3+hCpyZXSlwQ4uGpZw==', 'ELO00Za7CPEsVlStfdD0hg==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('NunSH9cVJ8y0Hzp+ODuS7nwEbriTfWhEVVtu3bgFWXQ=', 'Yi18SzFCtnCLsRbpNwSFXg==', '35LXvxOMPGceX5QNCFYalQ==', 'IfNd7Fz/qI3q6CQmG1OaIA==', '1fGROo8ng4FUPKVIN6oBFw==', 'qDJHiZEZNyiA9FzbRFgWfA==', 'kePItoftiVjKhjHG/xN5Mj2ohyEK+5ki7t6Qftfchx18BG64k31oRFVbbt24BVl0', 'yYnKpkaE4N5ewCltudpGiA==', 'tTgqiaN0fxLoXPjaxliLSQ==', 'hxGKszArtoHs2xq2T+rr6Q==', '3KSQHO90lUn/vb03AvmKhQ==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('f4J+jbxzCsbhQ5cN6lh0OHwEbriTfWhEVVtu3bgFWXQ=', 'iPxgapy8LtXYj+kmpGGKjA==', 'VHFmjydj8atW0DriTFMQHw==', 'rYTXN4wa/DZ4oqaYPRg33w==', '1fGROo8ng4FUPKVIN6oBFw==', 'KjNbIOIvk8p95ubg4gS5fQ==', 'KkiYFvKbG6iiNQWUcX3Ja9GCvFx7EdUecEXsqoqlNv+FfKvB53JZi0jdXqu8sgL7IbQrsvpcMu8CoXsAXt5p7A==', 'MxkgSZTSmrKFQ6eWps6BTg==', '6SxRYxq+Ob9W6/GaSGTZ9A==', 'u9sXTQHQjASv4GuvUTBZzQ==', 'kzkGSzf73IFUj2XoAKWhbYoVQAgCglGBBn4c1unplQ8=');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('Np2eg2ea95btKuYy6bBzL3wEbriTfWhEVVtu3bgFWXQ=', '2aHgJeOIeuCDZeBBkXAriA==', 'dztzEEw9nUmY542g9NewmA==', 'm43hZpKc8ph4mlAhQno1qQ==', '1fGROo8ng4FUPKVIN6oBFw==', '9zJHiZMZNyhu9FzbIFgWfA==', 'VEfHl+y3oNN5j8Pa1PdjrmTSLFSi+mhD2mEnHh7+mYFCM7wImdMnwESB1ibfcWJUp/XNfZrsyFKcmhh552wMRQ==', 'MxkgSZTSmrKFQ6eWps6BTg==', 'iZ14qvYX8lfs6ZK+XulUYA==', 'UPL9dIJ+gZCnSSmU/u8w+XwEbriTfWhEVVtu3bgFWXQ=', 'ELO00Za7CPEsVlStfdD0hg==');
INSERT INTO biodata (NIK, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, golongan_darah, alamat, agama, status_perkawinan, pekerjaan, kewarganegaraan) VALUES ('WjWolql9wC+xfSouVbDEm3wEbriTfWhEVVtu3bgFWXQ=', 'iNbRpyFw4ygZLd917Wh86Q==', '2D0owVGAEae5VDjMCMsivQ==', 'Ufpja6w+p+s9DbrcnxzeOA==', '1fGROo8ng4FUPKVIN6oBFw==', 'qDJHiZEZNyiA9FzbRFgWfA==', '8d74t8fXGKur2EB9IzZxaeWu0kidXlStqHWK2xT9Hs4=', 'yYnKpkaE4N5ewCltudpGiA==', '6SxRYxq+Ob9W6/GaSGTZ9A==', 'Dkn/m/IFGkjX64a+VHVr8A==', 'pmoxS4AOO2cCBjZV3eQcUlc39972Ycc1TsBK1ADSwtw=');
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
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkinhb28oNqplc5LlVlNsR2m7gSD8XbZANyJECsqE/ViMkeJFhk3KCj0XNtaWBZ8', '6DVbct6DT0XO2zi365apYw==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkinhb28oNqplc5LlVlNsSYYngBZ7dT/+KbCXI6+Y8Y9qVsghF+Tyi4r5uA1cLl9', 'glW6tb/HvxDb12ePCJ1B+zVmc4Z0Si7u4T6ODqeGsTY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkinhb28oNqplc5LlVlNsb14nhZ9s9QuuJ/Co9qFY7M9qVsghF+Tyi4r5uA1cLl9', 'glW6tb/HvxDb12ePCJ1B+zVmc4Z0Si7u4T6ODqeGsTY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkinhb28oNqplc5LlVlNsSgDtgTNbtHhbjt9N2fqqaZ8BG64k31oRFVbbt24BVl0', 'glW6tb/HvxDb12ePCJ1B+zVmc4Z0Si7u4T6ODqeGsTY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkinhb28oNqplc5LlVlNsYVa9Jh6hUZszVT7nbH2RxdiMkeJFhk3KCj0XNtaWBZ8', 'glW6tb/HvxDb12ePCJ1B+zVmc4Z0Si7u4T6ODqeGsTY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdh2irMZRWbknMves+Scjjl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', 'glW6tb/HvxDb12ePCJ1B+zVmc4Z0Si7u4T6ODqeGsTY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdh2irMZRWbknMves+ScjrT0ppT+HRfqWHJZU91fxrpW2PeGl/B37n+oyw499Mc2', 'glW6tb/HvxDb12ePCJ1B+zVmc4Z0Si7u4T6ODqeGsTY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdh2irMZRWbknMves+ScjhbfbYKQvSLYUB1PV/nt+0NiMkeJFhk3KCj0XNtaWBZ8', 'glW6tb/HvxDb12ePCJ1B+zVmc4Z0Si7u4T6ODqeGsTY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdh2irMZRWbknMves+ScjurrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'glW6tb/HvxDb12ePCJ1B+zVmc4Z0Si7u4T6ODqeGsTY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdh8dLMZo1fknHLIs+Qyejl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', 'NEWwKQZ3pGebDcdC4cJleP4KWyBUdZPK5ZXm4BHMuX0=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdh8dLMZo1fknHLIs+QyeoPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', 'NEWwKQZ3pGebDcdC4cJleP4KWyBUdZPK5ZXm4BHMuX0=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdh8dLMZo1fknHLIs+QyerT0ppT+HRfqWHJZU91fxrpW2PeGl/B37n+oyw499Mc2', 'NEWwKQZ3pGebDcdC4cJleP4KWyBUdZPK5ZXm4BHMuX0=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdh8dLMZo1fknHLIs+QyeurrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'NEWwKQZ3pGebDcdC4cJleP4KWyBUdZPK5ZXm4BHMuX0=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkgOJr28KyKplf8ylVnh1h2m7gSD8XbZANyJECsqE/ViMkeJFhk3KCj0XNtaWBZ8', 'IRaGhaY19zkUmfSwerYio1syR4nbGTcoEfRc20BYFnw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkgOJr28KyKplf8ylVnh1iYYngBZ7dT/+KbCXI6+Y8Y9qVsghF+Tyi4r5uA1cLl9', 'IRaGhaY19zkUmfSwerYio1syR4nbGTcoEfRc20BYFnw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkgOJr28KyKplf8ylVnh1r14nhZ9s9QuuJ/Co9qFY7M9qVsghF+Tyi4r5uA1cLl9', 'IRaGhaY19zkUmfSwerYio1syR4nbGTcoEfRc20BYFnw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkgOJr28KyKplf8ylVnh1igDtgTNbtHhbjt9N2fqqaZ8BG64k31oRFVbbt24BVl0', 'IRaGhaY19zkUmfSwerYio1syR4nbGTcoEfRc20BYFnw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkgOJr28KyKplf8ylVnh1oVa9Jh6hUZszVT7nbH2RxdiMkeJFhk3KCj0XNtaWBZ8', 'IRaGhaY19zkUmfSwerYio1syR4nbGTcoEfRc20BYFnw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdj3YbMZlJ7knATBs+Sw7Tl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', 'IRaGhaY19zkUmfSwerYio1syR4nbGTcoEfRc20BYFnw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdj3YbMZlJ7knATBs+Sw7YPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', 'IRaGhaY19zkUmfSwerYio1syR4nbGTcoEfRc20BYFnw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdj3YbMZlJ7knATBs+Sw7RbfbYKQvSLYUB1PV/nt+0NiMkeJFhk3KCj0XNtaWBZ8', 'IRaGhaY19zkUmfSwerYio1syR4nbGTcoEfRc20BYFnw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Hdj3YbMZlJ7knATBs+Sw7errjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'IRaGhaY19zkUmfSwerYio1syR4nbGTcoEfRc20BYFnw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmFr28FoyplQrrlVkFbSYYngBZ7dT/+KbCXI6+Y8Y9qVsghF+Tyi4r5uA1cLl9', '8T6YqPZWJSppBfZzB4jXHA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmFr28FoyplQrrlVkFbb14nhZ9s9QuuJ/Co9qFY7M9qVsghF+Tyi4r5uA1cLl9', '8T6YqPZWJSppBfZzB4jXHA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmFr28FoyplQrrlVkFbSgDtgTNbtHhbjt9N2fqqaZ8BG64k31oRFVbbt24BVl0', '8T6YqPZWJSppBfZzB4jXHA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWEbMZhI/knG1Qs+QkeDl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', '8T6YqPZWJSppBfZzB4jXHA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWEbMZhI/knG1Qs+QkeIPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', '8T6YqPZWJSppBfZzB4jXHA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWEbMZhI/knG1Qs+QkeLT0ppT+HRfqWHJZU91fxrpW2PeGl/B37n+oyw499Mc2', '8T6YqPZWJSppBfZzB4jXHA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWEbMZhI/knG1Qs+QkeBbfbYKQvSLYUB1PV/nt+0NiMkeJFhk3KCj0XNtaWBZ8', '8T6YqPZWJSppBfZzB4jXHA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWEbMZhI/knG1Qs+QkeOrrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', '8T6YqPZWJSppBfZzB4jXHA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmZ728FnCplQoBlVkFYB2m7gSD8XbZANyJECsqE/ViMkeJFhk3KCj0XNtaWBZ8', 'klV2J/8sTIbNLSmrBitSOEsQsKBWK+ZPkXGkBZqJjNw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmZ728FnCplQoBlVkFYCYYngBZ7dT/+KbCXI6+Y8Y9qVsghF+Tyi4r5uA1cLl9', 'klV2J/8sTIbNLSmrBitSOEsQsKBWK+ZPkXGkBZqJjNw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmZ728FnCplQoBlVkFYL14nhZ9s9QuuJ/Co9qFY7M9qVsghF+Tyi4r5uA1cLl9', 'klV2J/8sTIbNLSmrBitSOEsQsKBWK+ZPkXGkBZqJjNw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmZ728FnCplQoBlVkFYIVa9Jh6hUZszVT7nbH2RxdiMkeJFhk3KCj0XNtaWBZ8', 'klV2J/8sTIbNLSmrBitSOEsQsKBWK+ZPkXGkBZqJjNw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWfbMZhPfknG3Zs+QkITl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', 'klV2J/8sTIbNLSmrBitSOEsQsKBWK+ZPkXGkBZqJjNw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWfbMZhPfknG3Zs+QkIYPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', 'klV2J/8sTIbNLSmrBitSOEsQsKBWK+ZPkXGkBZqJjNw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWfbMZhPfknG3Zs+QkIbT0ppT+HRfqWHJZU91fxrpW2PeGl/B37n+oyw499Mc2', 'klV2J/8sTIbNLSmrBitSOEsQsKBWK+ZPkXGkBZqJjNw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWfbMZhPfknG3Zs+QkIRbfbYKQvSLYUB1PV/nt+0NiMkeJFhk3KCj0XNtaWBZ8', 'klV2J/8sTIbNLSmrBitSOEsQsKBWK+ZPkXGkBZqJjNw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWfbMZhPfknG3Zs+QkIerrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'klV2J/8sTIbNLSmrBitSOEsQsKBWK+ZPkXGkBZqJjNw=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmh728Fs2plQohlVkFSx2m7gSD8XbZANyJECsqE/ViMkeJFhk3KCj0XNtaWBZ8', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmh728Fs2plQohlVkFSyYYngBZ7dT/+KbCXI6+Y8Y9qVsghF+Tyi4r5uA1cLl9', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmh728Fs2plQohlVkFS714nhZ9s9QuuJ/Co9qFY7M9qVsghF+Tyi4r5uA1cLl9', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmh728Fs2plQohlVkFSygDtgTNbtHhbjt9N2fqqaZ8BG64k31oRFVbbt24BVl0', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qkjmh728Fs2plQohlVkFS4Va9Jh6hUZszVT7nbH2RxdiMkeJFhk3KCj0XNtaWBZ8', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWtLMZhLnknG0ls+QkbDl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWtLMZhLnknG0ls+QkbIPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWtLMZhLnknG0ls+QkbLT0ppT+HRfqWHJZU91fxrpW2PeGl/B37n+oyw499Mc2', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWtLMZhLnknG0ls+QkbBbfbYKQvSLYUB1PV/nt+0NiMkeJFhk3KCj0XNtaWBZ8', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('HdiWtLMZhLnknG0ls+QkbOrrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'jdLLFz288gJ7PclihqQ5h3GhwhagkuL9UrpYxuArA+Y=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('8CgxQ8KYi0JaEnsqOXIVuPb4bYNp5hzh4pshBlF9AF49qVsghF+Tyi4r5uA1cLl9', 'S+yb4ZlIobQN+zOa7eKzd17Vqzn7FUZV0DEz3/E6+8Q=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('8CgxQ8KYi0JaEnsqOXIVuPb4mWRp5iwC4pt4pVF9fuC5R5NGlwh4kHDwGFD1Xn8H', 'S+yb4ZlIobQN+zOa7eKzd17Vqzn7FUZV0DEz3/E6+8Q=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('8CgxQ8KYi0JaEnsqOXIVuPb4mf9p5iyv4pt4v1F9fgQLPruyLZbce4StmlEJf0Lv', 'S+yb4ZlIobQN+zOa7eKzd17Vqzn7FUZV0DEz3/E6+8Q=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('8CgxQ8KYi0JaEnsqOXIVuPb4mTZp5iwn4pt4lFF9fi38KAvrox6F8fAn/mvCydMK', 'S+yb4ZlIobQN+zOa7eKzd17Vqzn7FUZV0DEz3/E6+8Q=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('pDXKZlFTYUuqZV2pF1u6nYPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', 'QmN5w0XHdYqQYFzS4pQnJkldZvZ1qUPfGTPb0poFbQ8=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('pDXKZlFTYUuqZV2pF1u6nYPgYTivOt5xSYLc9UNxLwvfQLuycdvce5TmmlE9P0Lv', 'QmN5w0XHdYqQYFzS4pQnJkldZvZ1qUPfGTPb0poFbQ8=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('pDXKZlFTYUuqZV2pF1u6nYPgYTivOt5xSYLc9UNxLwtT/mrrvv+u8TkbDGvmmVsK', 'QmN5w0XHdYqQYFzS4pQnJkldZvZ1qUPfGTPb0poFbQ8=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('pDXKZlFTYUuqZV2pF1u6nYPgYTivOt5xSYLc9UNxLwucsqItbwUdN8nWlY21+ND8', 'QmN5w0XHdYqQYFzS4pQnJkldZvZ1qUPfGTPb0poFbQ8=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('AjXKyCNTYUZpZV1+5Fu6XBbfbYKQvSLYUB1PV/nt+0NiMkeJFhk3KCj0XNtaWBZ8', 'IrwbnC0znglrrOohiwfelA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('AjXKyCNTYUZpZV1+5Fu6XOrrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'IrwbnC0znglrrOohiwfelA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('AjXKyCNTYUZpZV1+5Fu6XOrrbrBGf0bYt0sj2pKitaQLPruyLZbce4StmlEJf0Lv', 'IrwbnC0znglrrOohiwfelA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Aigx7COYi/ZpEnvA5HIVr5rsmHrUo3SfGxQ67HKJgTxW2PeGl/B37n+oyw499Mc2', 'IrwbnC0znglrrOohiwfelA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Aigx7COYi/ZpEnvA5HIVr5rsmDjUo3RuGxQ69nKJgU/fQLuycdvce5TmmlE9P0Lv', 'IrwbnC0znglrrOohiwfelA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('Aigx7COYi/ZpEnvA5HIVr5rsmDjUo3RuGxQ69nKJgU9T/mrrvv+u8TkbDGvmmVsK', 'IrwbnC0znglrrOohiwfelA==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('2yiLtw+YmZMpEii/DHLfYvb4bYNp5hzh4pshBlF9AF49qVsghF+Tyi4r5uA1cLl9', 'EbtbUMJDfQv0iE/izZVQYw==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('2yiLtw+YmZMpEii/DHLfYkr5NyMOVPOkkTLoKlzglRpW2PeGl/B37n+oyw499Mc2', 'EbtbUMJDfQv0iE/izZVQYw==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+TVRIj5TOcflZTvjxlueUDl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+TVRIj5TOcflZTvjxlueUIPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+TVRIj5TOcflZTvjxlueULT0ppT+HRfqWHJZU91fxrpW2PeGl/B37n+oyw499Mc2', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+TVRIj5TOcflZTvjxlueUBbfbYKQvSLYUB1PV/nt+0NiMkeJFhk3KCj0XNtaWBZ8', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+TVRIj5TOcflZTvjxlueUOrrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+SiLtz6YmZPlEii/xnLfYprsmHrUo3SfGxQ67HKJgTxW2PeGl/B37n+oyw499Mc2', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+SiLtz6YmZPlEii/xnLfYlQNVcnweyh1JH3vTQJcZh4mC8i5z/on7l6UugJEKac2', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+SiLtz6YmZPlEii/xnLfYlTQjSjwiLg+JKuP5gIxt0AmC8i5z/on7l6UugJEKac2', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+SiLtz6YmZPlEii/xnLfYvb4bYNp5hzh4pshBlF9AF49qVsghF+Tyi4r5uA1cLl9', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('+SiLtz6YmZPlEii/xnLfYkr5NyMOVPOkkTLoKlzglRpW2PeGl/B37n+oyw499Mc2', 'noa9hRSoXi+/wSj30zYzWuXY+YYR8Ffui6iPDhT03zY=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('sDVRIhZTOceHZTvjRlueUDl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', 'W4pp9cJCo1XbDwZnsx7maXwEbriTfWhEVVtu3bgFWXQ=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('sDVRIhZTOceHZTvjRlueUIPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', 'W4pp9cJCo1XbDwZnsx7maXwEbriTfWhEVVtu3bgFWXQ=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('sDVRIhZTOceHZTvjRlueULT0ppT+HRfqWHJZU91fxrpW2PeGl/B37n+oyw499Mc2', 'W4pp9cJCo1XbDwZnsx7maXwEbriTfWhEVVtu3bgFWXQ=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('sDVRIhZTOceHZTvjRlueUBbfbYKQvSLYUB1PV/nt+0NiMkeJFhk3KCj0XNtaWBZ8', 'W4pp9cJCo1XbDwZnsx7maXwEbriTfWhEVVtu3bgFWXQ=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('sDVRIhZTOceHZTvjRlueUOrrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'W4pp9cJCo1XbDwZnsx7maXwEbriTfWhEVVtu3bgFWXQ=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('sCiLtxaYmZOHEii/RnLfYlQNVcnweyh1JH3vTQJcZh4mC8i5z/on7l6UugJEKac2', 'W4pp9cJCo1XbDwZnsx7maXwEbriTfWhEVVtu3bgFWXQ=');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qzVRIvxTOcf6ZTvjEVueUDl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', 'ehumrBYxZMvLJX0plt4v0Q==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qzVRIvxTOcf6ZTvjEVueUIPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', 'ehumrBYxZMvLJX0plt4v0Q==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qzVRIvxTOcf6ZTvjEVueULT0ppT+HRfqWHJZU91fxrpW2PeGl/B37n+oyw499Mc2', 'ehumrBYxZMvLJX0plt4v0Q==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qzVRIvxTOcf6ZTvjEVueUOrrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'ehumrBYxZMvLJX0plt4v0Q==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qyiLt/yYmZP6Eii/EXLfYprsmHrUo3SfGxQ67HKJgTxW2PeGl/B37n+oyw499Mc2', 'ehumrBYxZMvLJX0plt4v0Q==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qyiLt/yYmZP6Eii/EXLfYlQNVcnweyh1JH3vTQJcZh4mC8i5z/on7l6UugJEKac2', 'ehumrBYxZMvLJX0plt4v0Q==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qyiLt/yYmZP6Eii/EXLfYlTQjSjwiLg+JKuP5gIxt0AmC8i5z/on7l6UugJEKac2', 'ehumrBYxZMvLJX0plt4v0Q==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qyiLt/yYmZP6Eii/EXLfYvb4bYNp5hzh4pshBlF9AF49qVsghF+Tyi4r5uA1cLl9', 'ehumrBYxZMvLJX0plt4v0Q==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('qyiLt/yYmZP6Eii/EXLfYkr5NyMOVPOkkTLoKlzglRpW2PeGl/B37n+oyw499Mc2', 'ehumrBYxZMvLJX0plt4v0Q==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ETVRIvJTOceIZTvjylueUDl9IK2dpO32IAtLATvarho9qVsghF+Tyi4r5uA1cLl9', 'UfPJDWRxkEV9l+s0UA/MhQ==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ETVRIvJTOceIZTvjylueUIPgYZSvOt7qSYLcU0NxL7pW2PeGl/B37n+oyw499Mc2', 'UfPJDWRxkEV9l+s0UA/MhQ==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ETVRIvJTOceIZTvjylueULT0ppT+HRfqWHJZU91fxrpW2PeGl/B37n+oyw499Mc2', 'UfPJDWRxkEV9l+s0UA/MhQ==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ETVRIvJTOceIZTvjylueUBbfbYKQvSLYUB1PV/nt+0NiMkeJFhk3KCj0XNtaWBZ8', 'UfPJDWRxkEV9l+s0UA/MhQ==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ETVRIvJTOceIZTvjylueUOrrjcdGf/Plt0umhZKiH3Q9qVsghF+Tyi4r5uA1cLl9', 'UfPJDWRxkEV9l+s0UA/MhQ==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ESiLt/KYmZOIEii/ynLfYprsmHrUo3SfGxQ67HKJgTxW2PeGl/B37n+oyw499Mc2', 'UfPJDWRxkEV9l+s0UA/MhQ==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ESiLt/KYmZOIEii/ynLfYlQNVcnweyh1JH3vTQJcZh4mC8i5z/on7l6UugJEKac2', 'UfPJDWRxkEV9l+s0UA/MhQ==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ESiLt/KYmZOIEii/ynLfYlTQjSjwiLg+JKuP5gIxt0AmC8i5z/on7l6UugJEKac2', 'UfPJDWRxkEV9l+s0UA/MhQ==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ESiLt/KYmZOIEii/ynLfYvb4bYNp5hzh4pshBlF9AF49qVsghF+Tyi4r5uA1cLl9', 'UfPJDWRxkEV9l+s0UA/MhQ==');
INSERT INTO sidik_jari (berkas_citra, nama) VALUES ('ESiLt/KYmZOIEii/ynLfYkr5NyMOVPOkkTLoKlzglRpW2PeGl/B37n+oyw499Mc2', 'UfPJDWRxkEV9l+s0UA/MhQ==');
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
