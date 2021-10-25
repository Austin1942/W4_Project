CREATE TABLE salesmen(
    salesmen_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(200)
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE inventoy(
    inventory_id SERIAL PRIMARY KEY,
    make VARCHAR(100),
    model VARCHAR(100),
    year VARCHAR(100),
    color VARCHAR(100)    
);

CREATE TABLE inshop(
    service_id SERIAL PRIMARY KEY,
    make VARCHAR(100),
    model VARCHAR(100),
    year VARCHAR(100),
    color VARCHAR(100),
    servicetype VARCHAR(500),
    partsneeded VARCHAR(500),
    customer_id INTEGER NOT NULL,
    mechanic_id INTEGER NOT NULL,

    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salescost NUMERIC(1000,2),
    servicecost NUMERIC(1000,2),
    salesmen_id INTEGER,
    customer_id INTEGER,
    mechanic_id INTEGER,
    inventory_id INTEGER,
    service_id INTEGER,

    FOREIGN KEY(salesmen_id) REFERENCES salesmen(salesmen_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY(inventory_id) REFERENCES inventoy(inventory_id),
    FOREIGN KEY(service_id) REFERENCES inshop(service_id)
);


