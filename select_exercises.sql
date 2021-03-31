USE codeup_test_db;
SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE name LIKE 'Sgt. Pepper%';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT name FROM albums WHERE release_date >= 1990 AND release_date < 2000;
SELECT name FROM albums WHERE sales < 20.0;
SELECT name FROM albums WHERE genre LIKE '%Rock%';