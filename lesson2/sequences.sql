CREATE SEQUENCE counter;

SELECT nextval('counter');

DROP SEQUENCE counter;

CREATE SEQUENCE counter INCREMENT BY 2 MINVALUE 2;

DROP SEQUENCE counter;

SELECT nextval('counter');
SELECT nextval('counter');
SELECT nextval('counter');
SELECT nextval('counter');

ALTER TABLE films
ADD COLUMN id serial PRIMARY KEY;

SELECT * FROM films;

UPDATE films SET id = 3 WHERE title ='Casablanca';

-- ERROR:  duplicate key value violates unique constraint "films_pkey"
-- DETAIL:  Key (id)=(3) already exists.

ALTER TABLE films
ADD COLUMN director_id serial PRIMARY KEY;

-- ERROR:  multiple primary keys for table "films" are not allowed

ALTER TABLE films
DROP CONSTRAINT films_pkey;