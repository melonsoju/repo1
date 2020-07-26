# Creates a table with required fields
CREATE TABLE User(User_id INT , Name VARCHAR(20), Place VARCHAR(20), Rating INT);
# Inserts values into fields
INSERT INTO User(User_id , Name , Place , Rating) 
VALUES (001, 'Dominique', 'O Charles', 5),
		(342, 'Melissa', 'Spy Museum',3);
# Retrieves the list of places in the given category
SELECT Place FROM user;
# Finds the ratings from the given user
SELECT Rating FROM user WHERE User_id =342;
# Deletes preferences submitted by user
DELETE FROM user WHERE User_id = 342;