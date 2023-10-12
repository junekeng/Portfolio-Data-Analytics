-- DAT102 Midterm Test
-- June Tan
-- Part1 Q5: UPDATE Statement 

-- Change first and last name of a director 
UPDATE Director
SET LastName='Reitman', FirstName='Ivanov'
WHERE DirectorID=1001 AND LastName='Reitman' AND FirstName='Ivan';

