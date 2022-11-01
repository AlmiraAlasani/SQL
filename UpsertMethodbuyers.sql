 CREATE PROCEDURE InsertOrUpdateBuyers

 AS
 MERGE staging.buyers AS Target
    USING landing.buyers AS Source
    ON Source.ID = Target.ID
    
    -- For Inserts
    WHEN NOT MATCHED BY Target THEN
        INSERT (ID, Marital_Status, Gender, Income, Children, Education, Occupation, Home_Owner, Cars, Commute_Distance, Region, Age, Purchased_Bike) 
        VALUES (Source.ID, Source.Marital_Status, Source.Gender, Source.Income, Source.Children, Source.Education, Source.Occupation, Source.Home_Owner, Source.Cars, Source.Commute_Distance, Source.Region, Source.Age, Source.Purchased_Bike)
    
    -- For Updates
    WHEN MATCHED THEN UPDATE SET
        Target.Marital_Status= Source.Marital_Status, 
		Target.Gender=Source.Gender,
		Target.Income=Source.Income, 
		Target.Children=Source.Children, 
		Target.Education=Source.Education,
		Target.Occupation=Source.Occupation, 
		Target.Home_Owner=Source.Home_Owner,
		Target.Cars=Source.Cars,
		Target.Commute_Distance=Source.Commute_Distance, 
		Target.Region=Source.Region, 
		Target.Age=Source.Age, 
		Target.Purchased_Bike=Source.Purchased_Bike;	
		
GO