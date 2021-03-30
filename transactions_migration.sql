USE bank_db;

DROP TABLE IF EXISTS transcations;

CREATE table transactions(

    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    date DATE,
    description VARCHAR(15) NULL,
    memo TEXT,
    amount DECIMAL(6, 2) NOT NULL,
    transaction_successful BOOLEAN,
    PRIMARY KEY (id)
);
