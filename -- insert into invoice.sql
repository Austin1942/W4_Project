-- insert into invoice

INSERT INTO invoice(
   salescost,
    servicecost,
    salesmen_id,
    customer_id,
    mechanic_id,
    inventory_id,
    service_id
) VALUES
(   
    119000.62,
    00.00,
    2,
    4,
    NULL,
    1,
    NULL
),
(   
    990000.74,
    00.00,
    1,
    5,
    NULL,
    6,
    NULL
),
(   58000.68,
    00.00,
    3,
    6,
    NULL,
    5,
    NULL
),
(   00.00,
    95.35,
    NULL,
    1,
    2,
    NULL,
    5
),
(   00.00,
    16.00,
    NULL,
    7,
    5,
    NULL,
    8
),
(   00.00,
    999999.99,
    NULL,
    4,
    1,
    NULL,
    6
),
(   00.00,
    185000.25,
    NULL,
    3,
    3,
    NULL,
    7
);

SELECT *
FROM invoice