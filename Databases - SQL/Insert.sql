-- DAT102 Midterm Test
-- June Tan
-- Part1 Q4: INSERT STATEMENTS

-- Add sample data into tables 
INSERT INTO Director 
(DirectorID, FirstName, LastName)
VALUES
(1001, 'Ivan', 'Reitman'),
(1002, 'Paul', 'Feig'),
(1003, 'Ben', 'Falcone'),
(1004, 'Jaume', 'Collet-Serra');

INSERT INTO Actor
(ActorID, FirstName, LastName)
VALUES
(2001, 'Bill', 'Murray'),
(2002, 'Melissa', 'McCarthy'),
(2003, 'George', 'Clooney'),
(2004, 'Vera', 'Farmiga'),
(2005, 'Dan', 'Aykroyd'),
(2006, 'Kristen', 'Wig'),
(2007, 'Octavia', 'Spencer'),
(2008, 'Peter', 'Sarsgaard');

INSERT INTO Movie
(MovieID, Title, YearProduced, DirectorID)
VALUES
(5001, 'Ghostbusters', 1984, 1001),
(5002, 'Ghostbusters', 2016, 1002),
(5003, 'Thunder Force', 2021, 1003),
(5004, 'Up In The Air', 2009, 1001),
(5005, 'Orphan', 2009, 1004);


INSERT INTO LeadActor
(MovieID, ActorID)
VALUES
(5001, 2001),
(5002, 2002),
(5003, 2002),
(5004, 2003),
(5005, 2008);

INSERT INTO SupportingActor
(MovieID, ActorID)
VALUES
(5001, 2005),
(5002, 2006),
(5003, 2007),
(5004, 2004),
(5005, 2004);

