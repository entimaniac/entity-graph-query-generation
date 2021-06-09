-- DROP TABLE IF EXISTS a_1;
CREATE TABLE a_1
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250)
);
INSERT INTO a_1 (name)
VALUES ('a11'),
       ('a12'),
       ('a13');


-- DROP TABLE IF EXISTS a_2;
CREATE TABLE a_2
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250)
);
INSERT INTO a_2 (name)
VALUES ('a21'),
       ('a22'),
       ('a23');


-- DROP TABLE IF EXISTS b_1;
CREATE TABLE b_1
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250)
);
INSERT INTO b_1 (name)
VALUES ('b11'),
       ('b12'),
       ('b13');


-- DROP TABLE IF EXISTS b_2;
CREATE TABLE b_2
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250)
);
INSERT INTO b_2 (name)
VALUES ('b21'),
       ('b22'),
       ('b23');


-- DROP TABLE IF EXISTS a_1_2;
CREATE TABLE a_1_2
(
    id_1 INT NOT NULL,
    id_2 INT NOT NULL,
    FOREIGN KEY (id_1) REFERENCES a_1 (id),
    FOREIGN KEY (id_2) REFERENCES a_2 (id),
    PRIMARY KEY (id_1, id_2)
);
INSERT INTO a_1_2 (id_1, id_2)
VALUES (1, 1),
       (1, 2),
       (1, 3);

-- DROP TABLE IF EXISTS b_1_2;
CREATE TABLE b_1_2
(
    id_1 INT NOT NULL,
    id_2 INT NOT NULL,
    FOREIGN KEY (id_1) REFERENCES b_1 (id),
    FOREIGN KEY (id_2) REFERENCES b_2 (id),
    PRIMARY KEY (id_1, id_2)
);
INSERT INTO b_1_2 (id_1, id_2)
VALUES (1, 1),
       (1, 2),
       (1, 3);

-- DROP TABLE IF EXISTS a_b;
CREATE TABLE a_b
(
    id_a INT NOT NULL,
    id_b INT NOT NULL,
    FOREIGN KEY (id_a) REFERENCES a_1 (id),
    FOREIGN KEY (id_b) REFERENCES b_1 (id),
    PRIMARY KEY (id_a, id_b)
);
INSERT INTO a_b (id_a, id_b)
VALUES (1, 1);