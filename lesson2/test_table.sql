 DROP TABLE IF EXISTS test;
 
 CREATE TABLE test (
   id serial CHECK (id > 5),
   name text
 );

 INSERT INTO test (name) 
 VALUES ('hello_world');

 -- It is possible for collisions between constraints and default values