INSERT INTO films (title, year, genre, director, duration)
     VALUES ('Wayne''s World', 1992,	'comedy',	'Penelope Spheeris',	95),
            ('Bourne Identity',	2002,	'espionage',	'Doug Liman',	118);

SELECT DISTINCT genre FROM films;       

SELECT genre FROM films GROUP BY genre;

SELECT avg(duration)::integer FROM films;

SELECT genre, avg(duration)::integer AS avg_duration FROM films GROUP BY genre;

SELECT year / 10 * 10 AS decade, avg(duration)::integer AS avg_duration FROM films GROUP BY decade ORDER By decade;

SELECT * FROM films WHERE director LIKE 'John%';

SELECT genre, count(genre) FROM films GROUP BY genre;

SELECT year / 10 * 10 AS decade, genre, string_agg(title, ', ') AS films FROM films
GROUP BY decade, genre
ORDER BY decade, genre;

SELECT genre, sum(duration) AS total_duration FROM films GROUP BY genre ORDER BY total_duration, genre;
