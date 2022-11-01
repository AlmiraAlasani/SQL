CREATE or alter PROCEDURE appendd

AS 
    INSERT INTO staging.buyers
    (ID, Marital_Status, Gender, Income, Children, Education, Occupation, Home_Owner, Cars, Commute_Distance, Region, Age, Purchased_Bike)
    SELECT ID, Marital_Status, Gender, Income, Children, Education, Occupation, Home_Owner, Cars, Commute_Distance, Region, Age, Purchased_Bike
    FROM landing.buyers;
GO

