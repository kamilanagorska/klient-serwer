CREATE DATABASE my_db;
USE my_db;

CREATE TABLE `images` (
`artist_id` INT NOT NULL,
`artwork_id` INT NOT NULL,
`artwork_url` VARCHAR(255) NOT NULL
);

INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (1, 1, 'https://cdna.artstation.com/p/assets/images/images/017/540/440/large/sebastien-riant-3-yaeyama.jpg?1556397525');
INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (2, 2, 'https://cdnb.artstation.com/p/assets/images/images/006/740/569/large/maxx-burman-2016-x-003.jpg?1500922432');
INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (3, 3, 'https://cdnb.artstation.com/p/assets/images/images/023/369/105/large/nikolay-ivanov-newsanctuary01.jpg?1578988003');
INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (4, 4, 'https://cdnb.artstation.com/p/assets/images/images/018/950/681/4k/julian-calle-castle002.jpg?1561389438');
INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (5, 5, 'https://cdnb.artstation.com/p/assets/images/images/017/260/703/large/mateusz-piaskiewicz-01-monastery-warehouse.jpg?1555271579');
INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (6, 6, 'https://cdnb.artstation.com/p/assets/images/images/038/097/391/large/dylan-garner-1.jpg?1622150487');
INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (7, 7, 'https://cdnb.artstation.com/p/assets/images/images/036/050/711/4k/jakub-bazyluk-garden-of-possessive-desires-jb-final.jpg?1616600000');
INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (8, 8, 'https://cdnb.artstation.com/p/assets/images/images/033/178/227/4k/florent-lebrun-tower.jpg?1608660266');
INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (9, 9, 'https://cdna.artstation.com/p/assets/images/images/030/720/448/large/nicolas-souclier-finalder40.jpg?1601454040');
INSERT INTO images (artist_id, artwork_id, artwork_url) VALUES (9, 10, 'https://cdnb.artstation.com/p/assets/images/images/023/071/957/large/nicolas-souclier-lacive-combi-ps.jpg?1577982200');

CREATE TABLE `artists` (
`artist_id` INT NOT NULL,
`artist_name` VARCHAR(255) NOT NULL
);
INSERT INTO artists (artist_id, artist_name) VALUES (1, 'Sebastien Riant');
INSERT INTO artists (artist_id, artist_name) VALUES (2, 'Maxx Burman');
INSERT INTO artists (artist_id, artist_name) VALUES (3, 'Nikolay Ivanov');
INSERT INTO artists (artist_id, artist_name) VALUES (4, 'Julian Calle');
INSERT INTO artists (artist_id, artist_name) VALUES (5, 'Mateusz Piaskiewicz');
INSERT INTO artists (artist_id, artist_name) VALUES (6, 'Dylan Garner');
INSERT INTO artists (artist_id, artist_name) VALUES (7, 'Jakub Bazyluk');
INSERT INTO artists (artist_id, artist_name) VALUES (8, 'Florent Lebrun');
INSERT INTO artists (artist_id, artist_name) VALUES (9, 'Nicolas Souclier');

CREATE TABLE `ratings` (
`user_id` INT NOT NULL,
`artwork_id` INT NOT NULL,
`rating` INT NOT NULL
);

INSERT INTO ratings (user_id, artwork_id, rating) VALUES (1, 1, 7);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (2, 1, 8);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (3, 1, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (4, 2, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (5, 2, 9);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (6, 2, 4);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (1, 3, 7);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (7, 3, 8);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (8, 3, 8);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (2, 4, 8);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (9, 4, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (10, 4, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (3, 5, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (11, 5, 3);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (12, 5, 9);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (3, 6, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (13, 6, 7);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (4, 6, 9);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (7, 7, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (9, 7, 9);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (14, 7, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (2, 8, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (13, 8, 6);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (9, 8, 1);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (14, 9, 10);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (15, 9, 8);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (16, 9, 7);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (16, 10, 5);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (17, 10, 8);
INSERT INTO ratings (user_id, artwork_id, rating) VALUES (1, 10, 9);

CREATE TABLE `comments` (
`user_id` INT NOT NULL,
`artwork_id` INT NOT NULL,
`comment_id` INT NOT NULL,
`comment_date` DATE NOT NULL,
`comment_txt` VARCHAR(255) NOT NULL
);

INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (1, 1, 1, '2022-01-12', 'Great work');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (2, 1, 2, '2022-01-10', 'Amazing!!');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (3, 2, 3, '2021-12-12', 'I Wish I could do that');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (4, 3, 4, '2021-04-12', 'Good job');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (5, 3, 5, '2021-10-14', 'Great');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (6, 4, 6, '2022-01-02', 'WOW');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (7, 5, 7, '2021-12-10', 'You are so talented!');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (8, 6, 8, '2021-12-02', '10/10');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (9, 6, 9, '2021-12-04', 'So pretty');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (10, 7, 10, '2021-12-22', 'Beautiful');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (11, 8, 11, '2021-01-04', 'Nice work');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (12, 8, 12, '2022-01-12', 'GJ :)');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (13, 9, 13, '2021-11-12', 'Niiice!!!!');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (14, 10, 14, '2021-11-10', 'OMG!!! 10/10');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (15, 10, 15, '2021-12-22', 'Wooow!!');
INSERT INTO comments (user_id, artwork_id, comment_id, comment_date, comment_txt) VALUES (16, 2, 16, '2021-12-25', 'Nice!');


