INSERT INTO customer("name", email) 
VALUES
('Steve Davis', 'steve@gmail.com'), 
('John J Skagnasty', 'john@hotmail.com'),
('Bill Henderson', 'billh@earthlink.com'),  
('Bill Parker', 'billp@aol.com'),    
('Jack Roundtree', 'always@jillshouse.com'); 

INSERT INTO dealership("name", "address") 
VALUES
('Dewey Cheatem Motors', '3218 Davis St. Stephenville, TX'),
('OhNo Autos', '1227 Miracle Dr. Ft. Worth, TX'),
('TSFO Car Sales & Service', '1823 BLue Moon Ln. Graham, TX'),
('Primo Motors', '542 JEfferson Blvd. Dallas, TX'),
('FYPM Autos', '12 Money Ln. Cash, TX'); 

INSERT INTO vehicle(dealership_id, vin, year, make, model, price) 
VALUES
(1,'1QSO37D2HUMDS','1961', 'CHEVROLET', 'IMPALA', 69999.99),
(1,'2HLO27JIDEMDS','1972', 'CHEVROLET', 'CAMARO Z28/RS', 39999.99), 
(1,'1PSDWI8IID99V','1966', 'CHEVROLET', 'CHEVELLE', 89999.99), 
(1,'2HSO37D2HUMDS','1968', 'PONTIAC', 'FIREBIRD 400 RAGTOP', 139999.99), 
(1,'1KNF37G4KDNUD','1968', 'PONTIAC', 'FIREBIRD 400 HT', 79999.99);

INSERT INTO sales("name", email) 
VALUES
('Dick Dale', 'dick@deweycheatem.com'), 
('Dave Lombardo', 'dave@deweycheatem.com'), 
('Kerry King', 'kerry@deweycheatem.com'), 
('Darrell Abbott', 'darell@deweycheatem.com'), 
('Zakk Wylde', 'zakk@deweycheatem.com');


INSERT INTO invoice(sales_id, vehicle_id, customer_id, descrip, amount, inv_date) 
VALUES
(1, 5, 3,'Cash', 79999.99, '2022-03-18'), 
(2, 4, 4,'Financing', 139999.99, '2022-01-23'), 
(3, 2, 5,'Lease', 39999.99, '2022-02-08'), 
(4, 3, 1,'Bitcoin', 89999.99, '2022-04-21'), 
(5, 1, 2,'Trade', 69999.99, '2022-05-15');


INSERT INTO ticket(vehicle_id, customer_id, serv_code, serv_desc, cost, serv_date) 
VALUES
(1, 5, 'Repair', 'Fix/Replace Flux Capacitor, Brakes', 99.99, '2022-06-20'), 
(2, 4, 'Repair', 'Replace Fitzer Valves with Ball Bearings', 199.99, '2022-07-12'), 
(3, 2, 'Maintenance', 'Oil Change', 89.99, '2022-05-25'),
(4, 3, 'Maintenance', 'Rotate Tires', 49.99, '2022-07-28'), 
(5, 1, 'Repair', 'Fix/Replace Transmission, Brakes', 3999.99, '2022-04-20');

INSERT INTO inventory(item, descrip, aoh, price) 
VALUES
('Brake Kit', 'Brake rotars, pads, fluid, calipers', '12', 299.99), 
('Brake Pads', 'Brake Pads', '19', 99.99), 
('FB Bearings', 'Fitzer Valve Ball bearings', '127', 29.99), 
('Flux Fluid', 'Flux Capacitor Lube', '23', 49.99), 
('700R4', 'Transmission', '4', 1999.99);

INSERT INTO parts(ticket_id, inventory_id) VALUES
(1, 4),
(1, 1),
(5, 2),
(2, 3),
(5, 5);

INSERT INTO mechanic(ticket_id, "name", email) VALUES
(1, 'Alice Cooper', 'alice@deweycheatem.com'),
(2, 'Boby Bouche', 'bobby@deweycheatem.com'),
(3, 'Killer Mike', 'killer@deweycheatem.com'),
(4, 'Rex Brown', 'rex@deweycheatem.com'),
(5, 'Phil Anselmo', 'phil@deweycheatem.com');

SELECT * FROM invoice;