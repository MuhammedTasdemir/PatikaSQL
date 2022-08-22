--1
CREATE TABLE employee (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  birthday DATE,
  email VARCHAR(100)
);

--3
UPDATE employee
SET name = 'Test', 
    email = 'test@test.com', 
    birthday = '1994-12-21' 
    WHERE id = 1 RETURNING *

--4
DELETE FROM employee 
WHERE id=3 RETURNING *;