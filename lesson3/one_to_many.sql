INSERT INTO calls ("when", duration, contact_id)
     VALUES ('2016-01-18 14:47:00', 632, 6);

SELECT calls.when, calls.duration, contacts.first_name
  FROM calls
  JOIN contacts
    ON calls.contact_id = contacts.id
	WHERE contacts.id != 6;

  
INSERT INTO contacts(first_name, last_name, number)
     VALUES ('Merve', 'Elk', 6343511126),
	    ('Sawa', 'Fydorov', 6125594874);


INSERT INTO calls("when", duration, contact_id)
     VALUES ('2016-01-17 11:52:00', 175, 26),
	    ('2016-01-18 21:22:00', 79, 27);

ALTER TABLE contacts 
  ADD CONSTRAINT unique_phone_num UNIQUE (number);

INSERT INTO contacts(first_name, last_name, number) 
     VALUES ('Lewis', 'Dodgson', 7204890809);

-- ERROR:  duplicate key value violates unique constraint "unique_phone_num"
-- DETAIL:  Key (number)=(7204890809) already exists.

-- when is a reserved keyword, and we need to wrap the column name in double quotes so psql knows it isn't referencing the keyword
