INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    email
) VALUES (
    100,
    'Lebron',
    'James',
    'ljames@gmail.com'
),(
    101,
    'Halle',
    'Berry',
    'halleberry@gmail.com'
),(
    102,
    'Beyonce',
    'Knowles-Carter',
    'beyonce@beyonce.com'
)
SELECT * FROM customer
INSERT INTO car(
    car_id,
    make,
    model,
    c_year,
    condition,
    price
) VALUES (
    11111,
    'Mercedes',
    'C-Class',
    2022,
    'Used',
    44879
),(
    22222,
    'Chevrolet',
    'Corvette Stingray',
    2023,
    'New',
    96000
),(
    33333,
    'Ford',
    'Mustang Shelby',
    2022,
    'Used',
    74879
)
SELECT * FROM car
INSERT INTO invoice(
    invoice_id,
    car_id,
    customer_id
)VALUES(
    12345,
    11111,
    101
),(
    12346,
    22222,
    100
)
SELECT * FROM invoice
INSERT INTO salesperson(
    salesperson_id,
    first_name,
    last_name
) VALUES (
    67890,
    'Ben',
    'Sanders'
),(
    34567,
    'Herschel',
    'Walker'
),(
    45678,
    'Barack',
    'Obama'
)
SELECT * FROM salesperson
INSERT INTO mechanic(
    mechanic_id,
    first_name,
    last_name
)VALUES(
    22223,
    'Richard',
    'Roberts'
),(
    33334,
    'Roger',
    'Williams'
),(
    44445,
    'Gregory',
    'Jackson'
),(
    66665,
    'George',
    'Washington'
),(
    55556,
    'Kelly',
    'Price'
)
SELECT * FROM mechanic
INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    email
)VALUES(
    103,
    'Kelly',
    'Clarkson',
    'kellyc@gmail.com'
),(
    104,
    'Summer',
    'Walker',
    'summerwalker@gmail.com'
),(
    105,
    'Eric',
    'Mays',
    'ericmays@gmail.com'
),(
    106,
    'Brendan',
    'Carlson',
    'thegoat@gmail.com'
)
INSERT INTO serviceticket(
    service_id,
    customer_id,
    service_type,
    mechanic_id,
    cost
)VALUES (
    1800,
    103,
    'Oil Change',
    44445,
    80.00
),(
    1200,
    104,
    'Alignment',
    33334,
    54.00
),(
    1300,
    105,
    'Tire Rotation and New Brake Pads',
    33334,
    95.00
)
INSERT INTO serviceticket(
    service_id,
    customer_id,
    car_id,
    service_type,
    mechanic_id,
    cost
)VALUES(
    1400,
    100,
    22222,
    'Tire Rotation',
    66665,
    45.00
),(
    1500,
    101,
    11111,
    'Oil Change',
    55556,
    86.00
)
SELECT * FROM serviceticket
INSERT INTO invoice(
    invoice_id,
    car_id,
    customer_id
)VALUES(
    123457,
    33333,
    106
)
UPDATE invoice
SET salesperson_id=67890
WHERE invoice_id = 123457

UPDATE invoice
SET salesperson_id=45678
WHERE invoice_id = 12345

UPDATE invoice
SET salesperson_id=67890
WHERE invoice_id = 12346

SELECT * FROM invoice
SELECT * FROM customer
SELECT * FROM car
SELECT * FROM salesperson
SELECT * FROM serviceticket
SELECT * FROM mechanic