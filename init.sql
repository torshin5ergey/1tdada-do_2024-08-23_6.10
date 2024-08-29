CREATE TABLE test_table (
	id SERIAL PRIMARY KEY,
	name VARCHAR(10) CHECK (CHAR_LENGTH(name) BETWEEN 4 AND 10) NOT NULL,
	surname VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL,
	age INT CHECK (age >= 0 AND age < 150) NOT NULL
);

INSERT INTO test_table (name, surname, city, age) VALUES
('Alexandra', 'Smith', 'New York', 30),
('Benjamin', 'Johnson', 'Los Angeles', 25),
('Charlotte', 'Williams', 'Chicago', 40),
('Dominic', 'Jones', 'Houston', 35),
('Elizabeth', 'Brown', 'Phoenix', 28),
('Leon', 'Thomas', 'Jacksonville', 27),
('Mika', 'Jackson', 'San Francisco', 38),
('Nate', 'White', 'Indianapolis', 41),
('Olivia', 'Harris', 'Columbus', 26),
('Paul', 'Martin', 'Fort Worth', 33),
('Quinn', 'Thompson', 'Charlotte', 37),
('Rita', 'Garcia', 'Detroit', 30),
('Samuel', 'Martinez', 'El Paso', 23),
('Tina', 'Rodriguez', 'Seattle', 49),
('Umah', 'Lee', 'Denver', 24),
('Patrick', 'Martin', 'Fort Worth', 33),
('Quinton', 'Thompson', 'Charlotte', 37),
('Rebecca', 'Garcia', 'Detroit', 30),
('Sophia', 'Martinez', 'El Paso', 23),
('Theodore', 'Lee', 'Denver', 24);
