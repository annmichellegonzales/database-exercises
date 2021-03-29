USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE table albums(
    id INT ,
    artist VARCHAR,
    name VARCHAR,
    release_date DATE,
    sales FLOAT,
    genre VARCHAR
);
