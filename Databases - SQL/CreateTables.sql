-- DAT102 Midterm test
-- Created by June Tan on May 20,2023 
-- Part1 Q3: Creating Database and tables 

-- Create database 
CREATE DATABASE JT_midterm;
USE JT_midterm;

-- Create table with Primary and Foreign Keys
CREATE TABLE Director (
	DirectorID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PRIMARY KEY (DirectorID)
);
    
CREATE TABLE Actor (
	ActorID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PRIMARY KEY (ActorID)
);

CREATE TABLE LeadActor (
	MovieID INT NOT NULL,
    ActorID INT NOT NULL,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movie (MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actor (ActorID)
);
CREATE TABLE SupportingActor (
	MovieID INT NOT NULL,
    ActorID INT NOT NULL,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movie (MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actor (ActorID)
);
    
CREATE TABLE Movie (
	MovieID INT NOT NULL,
    Title VARCHAR(100),
    YearProduced YEAR,
    DirectorID INT,
    PRIMARY KEY (MovieID),
    FOREIGN KEY (DirectorID) REFERENCES Director (DirectorID)
);
    
    
