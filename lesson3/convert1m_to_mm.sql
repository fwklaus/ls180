CREATE TABLE film_directors(
	id serial PRIMARY KEY,
	director_id integer  NOT NULL REFERENCES directors(id), 
	film_id integer NOT NULL REFERENCES films(id)
);

INSERT INTO directors_films(director_id, film_id)
     VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (3, 7), (7, 8), (8, 9), (4, 10);

ALTER TABLE films DROP COLUMN director_id;

SELECT films.title, directors.name
  FROM films
  JOIN directors_films
    ON films.id = directors_films.film_id
  JOIN directors	
    ON directors.id = directors_films.director_id
 ORDER BY films.title;


INSERT INTO films(title, year, genre, duration) 
     VALUES('Fargo', 1996, 'comedy', 98),
           ('No Country For Old Men', 2007, 'western', 122),
           ('Sin City', 2005, 'crime', 124),
           ('Spy Kids', 2001, 'scifi', 88);

INSERT INTO directors(name)
     VALUES('Joel Coen'),
	         ('Ethan Coen'),
           ('Frank Miller'),
	         ('Robert Rodriguez');

INSERT INTO directors_films(director_id, film_id)
     VALUES (9, 11), (9, 12), (10, 12), (11, 13), (12, 13), (12, 14);

SELECT directors.name AS director, count(films.id) AS films_directed
FROM films
JOIN directors_films
  ON films.id = directors_films.film_id
JOIN directors
  ON directors.id = directors_films.director_id;
  GROUP BY directors.name
  ORDER BY films_directed DESC, name;
