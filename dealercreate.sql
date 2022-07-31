DROP TABLE IF EXISTS dealership CASCADE;
CREATE TABLE dealership(
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    "address" VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS vehicle CASCADE;
CREATE TABLE vehicle(
    id SERIAL PRIMARY KEY,
    dealership_id INTEGER NOT NULL,
    vin VARCHAR(20) NOT NULL,
    year INTEGER NOT NULL,
    make VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    FOREIGN KEY (dealership_id) REFERENCES dealership(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
id SERIAL PRIMARY KEY,
"name" VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    id SERIAL PRIMARY KEY,
    vehicle_id INTEGER,
    customer_id INTEGER,
    serv_code VARCHAR(20) NOT NULL,
    serv_desc VARCHAR(100) NOT NULL,
    cost decimal(10,2) NOT NULL,
    serv_date DATE NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES vehicle(id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS sales CASCADE;
CREATE TABLE sales(
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS invoice CASCADE;
CREATE TABLE invoice(
    id SERIAL PRIMARY KEY,
    sales_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    descrip VARCHAR(100) NOT NULL,
    amount decimal(10,2) NOT NULL,
    inv_date DATE NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES vehicle(id) ON DELETE CASCADE,
    FOREIGN KEY (sales_id) REFERENCES sales(id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS inventory CASCADE;
CREATE TABLE inventory(
   id SERIAL PRIMARY KEY,
   item VARCHAR(50) NOT NULL,
   descrip VARCHAR(100) NOT NULL,
   aoh INTEGER NOT NULL,
   price DECIMAL(6,2)
);

DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic(
    id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS parts CASCADE;
CREATE TABLE parts(
    id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    inventory_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES ticket(id) ON DELETE CASCADE,
    FOREIGN KEY (inventory_id) REFERENCES inventory(id) ON DELETE CASCADE
);

