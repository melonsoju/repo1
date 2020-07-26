# Creates a table with required fields
CREATE TABLE Customer_Registry(Customer_id INT, Customer_Name VARCHAR(20), Customer_Phone_Number INT, Member_Type VARCHAR(20), Trip_id INT, Duration_of_Trip INT, Bike_Serial_Number INT);
# Inserts values into fields
INSERT INTO Customer_Registry(Customer_id , Customer_Name, Customer_Phone_Number, Member_Type, Trip_id, Duration_of_Trip, Bike_Serial_Number) 
VALUES (001, 'Dominique', 5553458797, 'Active', 0105200001, 30, 45897),
		(001, 'Dominique', 5553458797, 'Active', 0108200001, 10, 45879),
		(543, 'Melissa' , 7318795454, 'Active' , 0105200002, 60, 35001),
		(003, 'John', 5554856879, 'Active', Null, 0, 45897);
# Creates a table with required fields
CREATE TABLE Bike_Registry(Bike_Serial_Number INT, Trip_id INT, Mileage INT, Customer_id INT, Station_id INT);
# Inserts values into fields
INSERT INTO Bike_Registry(Bike_Serial_Number, Trip_id, Mileage, Customer_id, Station_id)
VALUES (45897, 010520001, 30, 001, 002),
		(45879, 010820001, 10, 001, 050),
		(35001, 0105200002, 60, 543, 030)
		(27500, Null, 0, 003, 050)
		(45877, Null, 0, 543, 050);
# Creates a table with required fields
CREATE TABLE Station_Registry(Station_id INT, Station_Name VARCHAR(20), Station_Location VARCHAR(50), Bike_Serial_Number INT, Available Boolean);
# Inserts values into fields
INSERT INTO Station_Registry(Station_id, Station_Name, Station_Location, Bike_Serial_Number, Available)
VALUES (002, 'Central', '1051 West Covington', 45897, 0),
		(050, 'Aqua', '111 North Bell', 45879, 1),
		(030, 'Azul', '1054 West Bank', 35001, 1),
		(050, 'Aqua', '111 North Bell', 27500, 0),
		(050, 'Aqua', '111 North Bell', 45877, 0);
# Creates a table with required fields
CREATE TABLE Checkout(Transaction_id INT, Bike_Serial_Number INT, Customer_id INT, Check_Out_Date datetime, Check_In_Date datetime);
# Inserts values into fields
INSERT INTO Checkout(Transaction_id, Bike_Serial_Number, Customer_id, Check_Out_Date, Check_In_Date)
VALUES (0105200001, 45897, 001, 2020-01-05, 2020-01-05),
		(0108200001, 45879, 001, 2020-01-08, 2020-01-08),
		(0105200002, 35001, 543, 2020-01-05, 2020-01-05),
		(0719200001, 45877, 543, 2020-07-19, Null),
		(0719200002, 27500, 001, 2020-07-19, Null),
		(0719200003; 45897, 003, 2020-07-19, Null);
# Computes the average ride duration for a given user
SELECT Customer_id, AVG(Duration_of_Trip)
FROM Customer_Registry
WHERE Customer_id = 001;
# Computes the number of bikes checked out at the given bike station
SELECT Count(Bike_Serial_Number)
FROM Station_Registry
WHERE Available = 0
And Station_id = 050;
# Retrieves the list of all currently active user
SELECT Customer_id
FROM Customer_Registry
WHERE Member_Type = 'Active'
Group By Customer_id;
