CREATE DATABASE IF NOT EXISTS ad_lister_db;

USE ad_lister_db;

DROP TABLE IF EXISTS ad_category;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;

CREATE TABLE ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_name  VARCHAR(100) NOT NULL,
                     content TEXT NOT NULL,
                     PRIMARY KEY (id)

);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                       email VARCHAR(50),
                       password  VARCHAR(100) NOT NULL
);


CREATE TABLE categories (
                            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                            name VARCHAR(255),
                            PRIMARY KEY (id)
);

CREATE TABLE ad_category (
                             ad_id INTEGER UNSIGNED NOT NULL,
                             categories_id INTEGER UNSIGNED NOT NULL,
                             FOREIGN KEY (ad_id) REFERENCES ads(id),
                             FOREIGN KEY (categories_id) REFERENCES categories(id)
);


ALTER TABLE ads DROP COLUMN user_name;
ALTER TABLE ads DROP COLUMN content;
ALTER TABLE ads ADD COLUMN user_id INT UNSIGNED NOT NULL;
ALTER TABLE ads ADD FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE CASCADE;

SELECT email FROM users
JOIN ads a on users.id = a.user_id;
