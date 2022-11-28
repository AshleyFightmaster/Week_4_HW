INSERT INTO employees(
    first_name,
    last_name
)
VALUES(
    'Dave',
    'Doofenshmerts'
),
(
    'Vlad',
    'Dragul'
);

INSERT INTO customers(
    first_name,
    last_name
)
VALUES(
    'Richard',
    'Nixson'
),
(
    'Lindon',
    'Johnson'
),
(
    'John',
    'Kennedy'
),
(
    'Jimmy',
    'Carter'
);

INSERT INTO cars(
    year,
    make,
    model,
    price,
    sales_id,
    customer_id
)
VALUES(
    '1995',
    'yugo',
    'molotov',
    '3000',
    '2',
    '1'
),
(
    '1986',
    'mercedes benz',
    'lx 360',
    '100000',
    '1',
    '4'
);

INSERT INTO mechanics(
    first_name,
    last_name
)
VALUES(
    'mikhail',
    'gorbachev'
),
(
    'leonid',
    'brezhnev'
);

INSERT INTO garage(
    services,
    price,
    customer_id,
    mechanic_id,
    serial_number
)
VALUES(
    'oil change',
    '50',
    '3',
    '1',
    '1989196919'
),
(
    'brake replacement',
    '200',
    '2',
    '2',
    '00000000002'
);

INSERT INTO invoices(
    customer_id,
    service_ticket,
    sales_id,
    mechanic_id,
    total
)
VALUES(
    '3',
    '1',
    NULL,
    '1',
    '50'
),
(
    '2',
    '2',
    NULL,
    '2',
    '200'
),
(
    '1',
    NULL,
    '2',
    NULL,
    '3000'
),
(
    '4',
    NULL,
    '1',
    NULL,
    '100000'
);
