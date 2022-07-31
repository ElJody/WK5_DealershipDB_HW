# Dewey Cheatem Motors

Dealership DB in SQL - J. Sheffield
## Tables Created & Reasoning
Dealership/Vehicle/Invoice/Sales/Customer/Ticket/Mechanic/Inventory/Parts(Join Inv/Ticket)

Dealership <-> vehicle 1:Many (1 Dealership can sell many cars)

Vehicle <-> Invoice 1:1 (1 Vehicle per 1 Invoice and Vice/Versa)

Sales <-> Invoice 1:Many (1 Sales Person can have many Invoices)

Ticket <-> Mechanic 1:Many (One ticket can have many Mechanics)

Ticket <-> Inventory Many:Many (Many Tickets can have many parts from Inventory (joined by Parts Table))

Customer <-> Invoice/Tickets 1:Many (1 customer can have many Invoices and Tickets)

Parts <--> Ticket/Inventory Many:Many (Parts Joins ticket and inventory, many tickets can have many inventory)

# Elephant SQL DB
https://api.elephantsql.com/console/0b335867-bc14-4703-b71e-2f83d2d5f64f/browser?