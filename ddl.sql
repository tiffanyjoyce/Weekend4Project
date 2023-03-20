CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(200)
)

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    c_year INTEGER,
    condition VARCHAR(10),
    price NUMERIC(10,2)
    -- salesperson_id INTEGER
)
CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
)
ALTER TABLE car
ADD COLUMN salesperson_id INTEGER;

ALTER TABLE car
ADD FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    i_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    customer_id INTEGER
)

ALTER TABLE invoice
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE invoice
ADD FOREIGN KEY (car_id) REFERENCES car(car_id);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
)

CREATE TABLE serviceticket(
    service_id SERIAL PRIMARY KEY,
    t_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    customer_id INTEGER,
    car_id INTEGER,
    service_type VARCHAR(100),
    mechanic_id INTEGER,
    cost NUMERIC(10,2)
)

ALTER TABLE serviceticket
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE serviceticket
ADD FOREIGN KEY (car_id) REFERENCES car(car_id);


ALTER TABLE serviceticket
ADD FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id);

ALTER TABLE invoice
ADD COLUMN salesperson_id INTEGER;

ALTER table invoice
ADD FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id);

ALTER TABLE car
DROP COLUMN salesperson_id;
