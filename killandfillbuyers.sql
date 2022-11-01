/*CREATE PROCEDURE killandfillBuyers
AS 
DELETE FROM staging.buyers;

INSERT INTO staging.buyers
SELECT * FROM landing.buyers;

GO */

EXEC killandfillBuyers;