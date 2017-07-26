--
-- Database: `mydatabase`
--


-- --------------------------------------------------------


--
-- TABLES
--

SET NAMES 'utf8mb4';

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `song_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  -- `song_type_id` TINYINT UNSIGNED NOT NULL,
  `song_title` VARCHAR(45) NOT NULL,
  `song_description` VARCHAR(500) DEFAULT NULL,
  `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;



--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `artist_id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `artist_name` VARCHAR(45) NOT NULL,
  `artist_description` VARCHAR(1500) DEFAULT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;



--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `album_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `album_title` VARCHAR(255) NOT NULL,
  `album_cover` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;



--
-- Table structure for table `artist_albums`
--

DROP TABLE IF EXISTS `artist_albums`;
CREATE TABLE IF NOT EXISTS `artist_albums` (
  `artist_album_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `artist_id` MEDIUMINT(8) UNSIGNED NOT NULL,
  `album_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`artist_album_id`),
  KEY `fk_artists_artist_albums` (`artist_id`),
  KEY `fk_albums_artist_albums` (`album_id`),
  CONSTRAINT `fk_artists_artist_albums` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_albums_artist_albums` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`) ON UPDATE CASCADE
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;



--
-- Table structure for table `artist_songs`
--

DROP TABLE IF EXISTS `artist_songs`;
CREATE TABLE IF NOT EXISTS `artist_songs` (
  `artist_song_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `song_id` INT(10) UNSIGNED NOT NULL,
  `artist_id` MEDIUMINT(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`artist_song_id`),
  KEY `fk_songs_artist_songs` (`song_id`),
  KEY `fk_artists_artist_songs` (`artist_id`),
  CONSTRAINT `fk_songs_artist_songs` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_artists_artist_songs` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`) ON UPDATE CASCADE
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;



--
-- Table structure for table `album_songs`
--

DROP TABLE IF EXISTS `album_songs`;
CREATE TABLE IF NOT EXISTS `album_songs` (
  `album_song_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `song_id`INT(10) UNSIGNED NOT NULL,
  `album_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`album_song_id`),
  KEY `fk_songs_album_songs` (`song_id`),
  KEY `fk_albums_album_songs` (`album_id`),
  CONSTRAINT `fk_songs_album_songs` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_albums_album_songs` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`) ON UPDATE CASCADE
) ENGINE=InnoDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;




--
-- DATA
--

INSERT INTO songs (song_title)
VALUES ('Someone Like You'),
       ('Eurydice Ter'),
       ('Gymnopédie No. 1'),
       ('Feel It'),
       ('Dearly Beloved'),
       ('Wasting My Young Years'),
       ('Perfect Day'),
       ('Tout C\'qu\'est Dégueulasse Porte Un Joli Nom'),
       ('Mistral Gagnant'),
       ('The Entertainer'),
       ('I\'m so Excited'),
       ('The Most Beautiful Girl In The World'),
       ('I\'ll Be Missing You');

INSERT INTO artists (artist_name)
VALUES ('Adele'),
       ('Elise Caron'),
       ('Erik Satie'),
       ('Kate Bush'),
       ('Yoko Shimomura'),
       ('London Grammar'),
       ('Lou Reed'),
       ('Olivia Ruiz'),
       ('Renaud'),
       ('Scott Joplin'),
       ('The Pointer Sisters'),
       ('Prince'),
       ('Puff Daddy');

INSERT INTO albums (album_title, album_cover)
VALUES ('21', 'http://plouf.com'),
       ('Eurydice Bis', 'http://plouf.com'),
       ('The Best Of Erik Satie', 'http://plouf.com'),
       ('The Kick Inside', 'http://plouf.com'),
       ('Kingdom Hearts - BOF', 'http://plouf.com'),
       ('If You Wait', 'http://plouf.com'),
       ('Transformer', 'http://plouf.com'),
       ('Chez Leprest /Vol.1', 'http://plouf.com'),
       ('Mistral Gagnant', 'http://plouf.com'),
       ('The Best Of Scott Joplin', 'http://plouf.com'),
       ('So Excited!', 'http://plouf.com'),
       ('The Gold Experience', 'http://plouf.com'),
       ('No Way Out', 'http://plouf.com');


INSERT INTO artist_songs (song_id, artist_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13);

INSERT INTO album_songs (song_id, album_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13);

INSERT INTO artist_albums (artist_id, album_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13);