-- Function used to add vehicle to inventory
-- Seems Redundant to create functions to add to other tables
-- Would be similar function with table parameters, process, etc...
CREATE OR REPLACE FUNCTION add1_vehicle(
	_dealership_id INTEGER, 
	_vin VARCHAR, 
	_year INTEGER,
    _make VARCHAR,
    _model VARCHAR,
    _price NUMERIC(10,2)
)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO vehicle(dealership_id, vin, year, make, model, price)
	VALUES(_dealership_id, _vin, _year, _make, _model, _price);
END;
$MAIN$
LANGUAGE plpgsql;

-- Input parameter to add a new vehicle to the database.
SELECT add1_vehicle(2, '2HYUD38LWNSPXEJAV','1964', 'CHEVROLET', 'CHEVELLE SS', 119999.99);

-- Verify Function Worked
SELECT * FROM vehicle WHERE dealership_id = 2;

-- DROP/DELETE Function
DROP FUNCTION add1_vehicle;

-- Delete Vehicle from Inventory per ID
DELETE FROM vehicle
WHERE id = ?;
