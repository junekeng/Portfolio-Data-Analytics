-- DAT 102 Midterm test 
-- June Tan
-- Part 2 Q7 DELETE Statements 

-- Question 7a:
DELETE FROM customer WHERE Fax IS NULL;

-- Question 7b:
DELETE FROM customer WHERE Region IS NULL AND Country IN ('France', 'Germany');
