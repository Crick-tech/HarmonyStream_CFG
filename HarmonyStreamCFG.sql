CREATE DATABASE HARMONYSTREAM_CFG

USE HARMONYSTREAM_CFG

CREATE TABLE Users (
user_id INT PRIMARY KEY,
username VARCHAR(50),
email VARCHAR(100),
password VARCHAR(100),
signup_date DATE
);

CREATE TABLE Artists (
artist_id INT PRIMARY KEY,
name VARCHAR(100),
genre VARCHAR(50),
country VARCHAR(50),
debut_year INT
);

CREATE TABLE Albums (
album_id INT PRIMARY KEY,
title VARCHAR(100),
artist_id INT,
release_date DATE,
FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

CREATE TABLE Songs (
song_id INT PRIMARY KEY,
title VARCHAR(100),
album_id INT,
duration INT,
genre VARCHAR(50),
FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE Playlists (
playlist_id INT PRIMARY KEY,
user_id INT,
name VARCHAR(100),
creation_date DATE,
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Playlist_Songs (
playlist_id INT,
song_id INT,
PRIMARY KEY (playlist_id, song_id),
FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

CREATE TABLE Listening_History (
history_id INT PRIMARY KEY,
user_id INT,
song_id INT,
listening_date DATE,
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

INSERT INTO Users (user_id, username, email, password, signup_date) VALUES
(1, 'Christine_Rick', 'crickard@example.com', 'welcome2025', '2024-07-09'),
(2, 'jane_smith', 'jane.smith@example.com', 'password123', '2022-02-15'),
(3, 'michael_jones', 'michael.jones@example.com', 'password123', '2022-03-10'),
(4, 'sarah_lee', 'sarah.lee@example.com', 'password123', '2022-04-22'),
(5, 'patrick_o\'connor', 'patrick.oconnor@example.com', 'password123', '2022-05-05'),
(6, 'emily_brown', 'emily.brown@example.com', 'password123', '2022-06-17'),
(7, 'brian_murphy', 'brian.murphy@example.com', 'password123', '2022-07-09'),
(8, 'megan_o\'neill', 'megan.oneill@example.com', 'password123', '2022-08-30'),
(9, 'daniel_wilson', 'daniel.wilson@example.com', 'password123', '2022-09-21'),
(10, 'claire_martin', 'claire.martin@example.com', 'password123', '2022-10-12'),
(11, 'karen_kelly', 'karen.kelly@example.com', 'password123', '2022-11-03');


INSERT INTO Artists (artist_id, name, genre, country, debut_year) VALUES
(1, 'Taylor Swift', 'Pop', 'USA', 2006),
(2, 'Billie Eilish', 'Alternative/Indie', 'USA', 2015),
(3, 'Ed Sheeran', 'Pop', 'UK', 2011),
(4, 'BTS', 'K-Pop', 'South Korea', 2013),
(5, 'Dua Lipa', 'Pop', 'UK', 2015),
(6, 'Drake', 'Hip-Hop/Rap', 'Canada', 2006),
(7, 'The Weeknd', 'R&B/Soul', 'Canada', 2010),
(8, 'Ariana Grande', 'Pop', 'USA', 2008),
(9, 'Olivia Rodrigo', 'Pop', 'USA', 2020),
(10, 'Harry Styles', 'Pop/Rock', 'UK', 2010),
(11, 'Bad Bunny', 'Reggaeton/Latin Trap', 'Puerto Rico', 2016);

INSERT INTO Albums (album_id, title, artist_id, release_date) VALUES
(1, 'Folklore', 1, '2020-07-24'),
(2, 'Evermore', 1, '2020-12-11'),
(3, 'Lover', 1, '2019-08-23'),
(4, 'Reputation', 1, '2017-11-10'),
(5, 'Happier Than Ever', 2, '2021-07-30'),
(6, 'Divide', 3, '2017-03-03'),
(7, 'BE', 4, '2020-11-20'),
(8, 'Future Nostalgia', 2, '2020-03-27'),
(9, 'Certified Lover Boy', 1, '2021-09-03'),
(10, 'After Hours', 3, '2020-03-20'),
(11, 'Positions', 3, '2020-10-30'),
(12, 'SOUR', 4, '2021-05-21'),
(13, 'Fine Line', 4, '2019-12-13'),
(14, 'YHLQMDLG', 3, '2020-02-29'),
(15, 'Here And Now', 1, '2021-09-03'),
(16, 'Happy Hour', 2, '2020-03-20'),
(17, 'Cold Case', 2, '2020-10-30'),
(18, 'Sugar', 2, '2021-05-21'),
(19, 'Midnight Train', 1, '2019-12-13');

INSERT INTO Songs (song_id, title, album_id, duration, genre) VALUES
(1, 'Cardigan', 1, 240, 'Pop'),
(2, 'Willow', 2, 215, 'Pop'),
(3, 'Lover', 3, 221, 'Pop'),
(4, 'Look What You Made Me Do', 4, 211, 'Pop'),
(5, 'Therefore I Am', 5, 174, 'Alternative/Indie'),
(6, 'Shape of You', 5, 233, 'Pop'),
(7, 'Dynamite', 7, 199, 'K-Pop'),
(8, 'Don\'t Start Now', 7, 183, 'Pop'),
(9, 'Way 2 Sexy', 3, 258, 'Hip-Hop/Rap'),
(10, 'Blinding Lights', 7, 200, 'R&B/Soul'),
(11, '34+35', 3, 173, 'Pop'),
(12, 'Drivers License', 5, 242, 'Pop'),
(13, 'Adore You', 3, 207, 'Pop/Rock'),
(14, 'Vete', 3, 192, 'Reggaeton/Latin Trap');

INSERT INTO Playlists (playlist_id, user_id, name, creation_date) VALUES
(1, 1, 'Top Hits 2023', '2023-01-10'),
(2, 2, 'Chill Vibes', '2023-02-14'),
(3, 3, 'Workout Playlist', '2023-03-01'),
(4, 4, 'Road Trip', '2023-03-22'),
(5, 5, 'Party Mix', '2023-04-15'),
(6, 6, 'Focus Music', '2023-05-05'),
(7, 7, 'Relaxing Tunes', '2023-06-10'),
(8, 8, 'Love Songs', '2023-07-01'),
(9, 9, 'Summer Hits', '2023-07-20'),
(10, 10, 'Throwback Jams', '2023-08-15'),
(11, 11, 'Dance Party', '2023-09-01');

INSERT INTO Playlist_Songs (playlist_id, song_id) VALUES
(1, 1),
(1, 2),
(2, 7),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 5),
(6, 7),
(6, 12),
(7, 1),
(8, 2),
(9, 5),
(10, 4),
(11, 5);


INSERT Listening_History (history_id, user_id, song_id, listening_date) VALUES
(1, 1, 1, '2023-01-11'),
(2, 2, 7, '2023-02-15'),
(3, 3, 1, '2023-03-02'),
(4, 4, 5, '2023-03-23'),
(5, 1, 1, '2023-04-16'),
(6, 6, 1, '2023-05-06'),
(7, 7, 1, '2023-06-11'),
(8, 8, 4, '2023-07-02'),
(9, 9, 1, '2023-07-21'),
(10, 10, 1, '2023-08-16'),
(11, 11, 3, '2023-09-02'),
(12, 2, 2, '2023-01-20'),
(13, 1, 5, '2023-02-18'),
(14, 4, 4, '2023-03-05'),
(15, 5, 5, '2023-04-02'),
(16, 6, 7, '2023-05-11'),
(17, 1, 7, '2023-06-14'),
(18, 8, 8, '2023-07-05'),
(19, 1, 9, '2023-07-25'),
(20, 10, 7, '2023-08-20'),
(21, 11, 5, '2023-09-05'),
(22, 1, 1, '2023-01-22'),
(23, 2, 7, '2023-01-25'),
(24, 3, 14, '2023-02-01');


-- find the top 3 most popular song based on listening history 

SELECT 
s.title AS song_title, -- select the name of the song
COUNT(Lh.song_id) AS play_count -- select the number of times the song has been played
FROM Songs s
JOIN Listening_History Lh ON s.song_id = Lh.song_id -- join wtih listening history to see what songs to the listening history
GROUP BY 
song_title -- group by song name 
ORDER BY 
play_count DESC -- order from high to low 
 LIMIT 3;


-- find the top 3 most popular album based on listening history 

SELECT 
a.title AS album_title,                            -- select the name of album 
COUNT(Lh.song_id) AS play_count                    -- select the number of times the album has been played
FROM 
Albums a
JOIN 
Songs s ON a.album_id = s.album_id                   -- join with songs to see what songs relate to what album
JOIN 
Listening_History Lh ON s.song_id = Lh.song_id        -- join wtih listening history to see what songs to the listening history
GROUP BY 
album_title                                          -- order by album name
ORDER BY 
play_count DESC
 -- LIMIT 3;



-- Create a view that finds the most popular playlist based on listening history 

CREATE VIEW popular_playlists AS
SELECT 
p.name AS playlist_name,          -- Select the name of the playlist
COUNT(Lh.song_id) AS play_count   -- Count how many times songs in the playlist were played
FROM 
Playlist_Songs ps                 -- From the Playlist_Songs table
RIGHT JOIN 
Playlists p                       -- Right join with Playlists table to include all playlists
ON ps.playlist_id = p.playlist_id
LEFT JOIN 
Listening_History Lh              -- Left join with Listening_History to count song plays
ON ps.song_id = Lh.song_id
GROUP BY 
playlist_name                            -- Group by playlist name to aggregate play counts
ORDER BY 
play_count DESC;                  -- Order the results by play count in descending order                   -- Order the results by play count in descending order


-- Let's find what playlist is trending based on listening history today 
Select * from popular_playlists 


-- find the top 3 trending songs 

-- Create the stored function -- This helps me get real time data every time i then run the query
DELIMITER //

CREATE FUNCTION GetSongCount(songID INT)
RETURNS INT
DETERMINISTIC
BEGIN
RETURN (SELECT COUNT(history_id)
FROM LISTENING_HISTORY
WHERE song_id = songID);  -- Return the count of listening history entries for a given song
END //

DELIMITER ;

-- Use the stored function in the query to show me the count of songs from listening history against the song name in song table 
SELECT 
s.title AS song_name, 
GetSongCount(LH.song_id) AS song_count 
FROM LISTENING_HISTORY LH
JOIN songs s ON S.SONG_ID = LH.SONG_ID
GROUP BY 
song_count, song_name
ORDER BY 
song_count DESC
 Limit 3

-- Get the top 4 artists based on who has the the most albums

SELECT 
a.name AS artist_name, 
COUNT(al.album_id) AS album_count
FROM 
Artists a
JOIN 
Albums al ON a.artist_id = al.artist_id
GROUP BY 
a.artist_id, a.name
ORDER BY 
album_count DESC
 LIMIT 4;

-- update table on username
UPDATE Users
SET username = 'CFG_Christine'
WHERE user_id = 1;

-- Show the top Genre of music user CFG_Christine likes best 

-- Using a stored procedures because this has multiple joins and is more complex query a procedure is best here as well as it's not a single value 
DELIMITER //  
CREATE PROCEDURE GetMostPopularGenre(IN userName VARCHAR(50))
BEGIN
    -- Select the most popular genre for the given user
SELECT  s.genre,                    -- Select the genre name
COUNT(lh.song_id) AS play_count  -- Count how many times songs in this genre were played
FROM 
Users u
JOIN Listening_History lh ON u.user_id = lh.user_id
JOIN Songs s ON lh.song_id = s.song_id
JOIN Albums a ON s.album_id = a.album_id
WHERE u.username = userName            -- Filter for the specified user
GROUP BY 
s.genre                    -- Group by genre name to aggregate play counts
ORDER BY 
play_count DESC
Limit 3 ;                  -- Order by play count in descending order                         -- Limit to the top 1 genre
END //

DELIMITER ;


-- Call the stored procedure for user CFG_Christine
CALL GetMostPopularGenre('CFG_Christine');

-- update table on username
UPDATE Users
SET signup_date = '2022-07-09'
WHERE user_id = 1;


-- Report history for user CFG_Christine

SELECT 
u.username,                                -- User's username
s.title AS song_title,                     -- Name of song listened to
a.title AS album_title,                    -- Name of the album containing the song
lh.listening_date                            -- Date and time when the song was listened to
FROM 
Users u                                    -- From the Users table
JOIN 
Listening_History lh ON u.user_id = lh.user_id  -- Join with Listening_History on user_id
JOIN 
Songs s ON lh.song_id = s.song_id          -- Join with Songs on song_id
JOIN 
Albums a ON s.album_id = a.album_id        -- Join with Albums on album_id
WHERE 
u.username = 'CFG_Christine'               -- Look for the user with username 'CFG_Christine'
ORDER BY 
lh.listening_date DESC;                       -- Order by the date and time when the song was listened to


-- All tables -- 
-- SELECT * FROM USERS
-- SELECT * FROM Artists
-- SELECT * FROM ALBUMS
-- SELECT * FROM SONGS
-- SELECT * FROM PLAYLISTS
-- SELECT * FROM PLAYLIST_SONGS
-- SELECT * FROM LISTENING_HISTORY
