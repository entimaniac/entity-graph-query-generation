INSERT INTO a1 (name)
VALUES ('a1 1'),
       ('a1 2'),
       ('a1 3');


INSERT INTO a2 (name)
VALUES ('a2 1'),
       ('a2 2'),
       ('a2 3');


INSERT INTO b1 (name)
VALUES ('b1 1'),
       ('b1 2'),
       ('b1 3');


INSERT INTO b2 (name)
VALUES ('b2 1'),
       ('b2 2'),
       ('b2 3');


-- DROP TABLE IF EXISTS a12;
-- CREATE TABLE a12
-- (
--     id1 INT NOT NULL,
--     id2 INT NOT NULL,
--     FOREIGN KEY (id1) REFERENCES a1 (id),
--     FOREIGN KEY (id2) REFERENCES a2 (id),
--     PRIMARY KEY (id1, id2)
-- );
-- INSERT INTO a12 (id1, id2)
-- VALUES (1, 1),
--        (1, 2),
--        (1, 3);
INSERT INTO a12 (a1_id, a2_id)
VALUES (1, 1),
       (1, 2),
       (1, 3);

-- DROP TABLE IF EXISTS b12;
-- CREATE TABLE b12
-- (
--     id1 INT NOT NULL,
--     id2 INT NOT NULL,
--     FOREIGN KEY (id1) REFERENCES b1 (id),
--     FOREIGN KEY (id2) REFERENCES b2 (id),
--     PRIMARY KEY (id1, id2)
-- );
INSERT INTO b12 (b1_id, b2_id)
VALUES (1, 1),
       (1, 2),
       (1, 3);

-- DROP TABLE IF EXISTS ab;
-- CREATE TABLE ab
-- (
--     ida INT NOT NULL,
--     idb INT NOT NULL,
--     FOREIGN KEY (ida) REFERENCES a1 (id),
--     FOREIGN KEY (idb) REFERENCES b1 (id),
--     PRIMARY KEY (ida, idb)
-- );
INSERT INTO ab (a1_id, b1_id)
VALUES (1, 1);