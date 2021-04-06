CREATE DATABASE IF NOT EXISTS design_test_db;

USE design_test_db;

DROP TABLE IF EXISTS quote_topic;
DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS authors;


CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        author_first_name VARCHAR(50) DEFAULT 'NONE',
                        author_last_name  VARCHAR(100) NOT NULL,
                        content TEXT NOT NULL,
                        PRIMARY KEY (id)
);

CREATE TABLE authors (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(50),
                         last_name  VARCHAR(100) NOT NULL,
                         PRIMARY KEY (id)
);

ALTER TABLE quotes DROP COLUMN author_first_name;
ALTER TABLE quotes DROP COLUMN author_last_name;
ALTER TABLE quotes ADD COLUMN author_id INT UNSIGNED NOT NULL;
ALTER TABLE quotes ADD FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE NO ACTION ON UPDATE CASCADE;


SELECT * FROM quotes;
SELECT * FROM authors;

INSERT INTO authors (first_name, last_name)
VALUE ('Stephen', 'Hawking'),
    ('Maya', 'Angelou'),
    ('Sandra', 'Cisneros'),
    ('Gloria', 'Anzaldua'),
    ('Johann', 'Goethe');

INSERT INTO quotes (content, author_id)
VALUES ('Science is not only a discipline of reason but, also, one of romance and passion.', 1),
  ( 'If you don''t like it, change it. If you can''t change it, change your attitude.', 2),
  ('The most powerful speaking you can do is the speaking that comes from your heart and your love.', 3),
  ('Write with your eyes like painters,
with your ears like musicians, with your feet like dancers. You are
the truthsayer with quill and torch.
Write with your tongues on fire.', 4),
  ('Trust yourself, then you will know how to live.', 5);

SELECT q.content FROM quotes as q JOIN authors as a ON q.author_id = a.id
WHERE a.last_name = 'Anzaldua';

CREATE TABLE topics (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        name VARCHAR(255),
                        PRIMARY KEY (id)
);

INSERT INTO topics (name)
VALUE ('purpose'), ('creativity'), ('passion'), ('self'), ('empowerment'), ('truth');

CREATE TABLE quote_topic (
                             quote_id INTEGER UNSIGNED NOT NULL,
                             topic_id INTEGER UNSIGNED NOT NULL,
                             FOREIGN KEY (quote_id) REFERENCES quotes(id),
                             FOREIGN KEY (topic_id) REFERENCES topics(id)
);


INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 1), (1, 3), (2, 1), (2, 4), (2, 5), (3, 1), (3, 4), (3,5), (3, 6), (4, 1), (4,2),
       (4, 3), (4, 5), (4, 6), (5, 1), (5, 4), (5, 5), (5, 6);


SELECT * FROM quote_topic;


SELECT q.content AS 'Quote',
       CONCAT(a.first_name, ' ', a.last_name) AS 'Full Name',
       t.name AS 'Topic'
FROM quotes q
         INNER JOIN quote_topic qt ON q.id = qt.quote_id
         INNER JOIN topics t ON qt.topic_id = t.id
         INNER JOIN authors a ON q.author_id = a.id
WHERE qt.topic_id IN
      (
          SELECT t.id
          FROM topics t
          WHERE t.name = 'purpose'
      );



