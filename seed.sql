INSERT INTO departments (department_name)
VALUES
('Human Resources'),
('IT'),
('Finance'),
('Sales');

INSERT INTO employees (first_name, last_name, hire_date, department_id)
SELECT
    'Employee_' || gs,
    'Lastname_' || gs,
    DATE '2020-01-01' + (gs * 30),
    (gs % 4) + 1
FROM generate_series(1,80) AS gs;

INSERT INTO absences (employee_id, start_date, end_date, absence_type)
SELECT
    (floor(random() * 80) + 1)::int,
    DATE '2024-01-01' + (random() * 300)::int,
    DATE '2024-01-01' + (random() * 300)::int + 2,
    (ARRAY[
        'arrêt maladie',
        'RTT',
        'congé payé',
        'congé sans solde'
    ])[floor(random() * 4 + 1)]
FROM generate_series(1,25);

INSERT INTO absences (employee_id, start_date, end_date, absence_type)
SELECT
    (floor(random() * 80) + 1)::int,
    start_date,
    start_date + (floor(random() * 5) + 1)::int,
    (ARRAY[
        'arrêt maladie',
        'RTT',
        'congé payé',
        'congé sans solde'
    ])[floor(random() * 4 + 1)]
FROM (
    SELECT
        DATE '2024-01-01' + (random() * 300)::int AS start_date,
        generate_series(1,25)
) s;
