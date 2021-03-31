USE codeup_test_db;

SELECT * FROM album;

SELECT * FROM albums WHEN released_date < 1980;

--     All albums released before 1980
--     All albums by Michael Jackson

SELECT * FROM albums WHEN artist = 'Michael Jackson';

--     After each SELECT add an UPDATE statement to:


--     Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET
--     Move all the albums before 1980 back to the 1800s.
--     Change 'Michael Jackson' to 'Peter Jackson'
--     Add SELECT statements after each UPDATE so you can see the results of your handiwork.