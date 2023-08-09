drop database ytdb;

create database ytdb;

use ytdb;


CREATE TABLE seq_test (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO seq_test (name)
VALUES ('Alice');

select * from seq_test;

SELECT LAST_INSERT_ID();

CREATE SEQUENCE seq_test_id START WITH 1 INCREMENT BY 3;


INSERT INTO seq_test (id, name)
VALUES (NEXT VALUE FOR seq_test_id,'Alice');

select * from seq_test;