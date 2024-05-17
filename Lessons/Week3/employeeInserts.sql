use employeedb;

insert into employee (employeeId, firstName, lastName, department, salary)
values (4, 'Amanda', 'Jones', 'transportation', 3000);

insert into employee (employeeId, firstName, lastName, salary)
values (5, 'Arthut', 'Harris', 2500);

insert into employee (employeeId, firstName, lastName, department)
values (6, 'Vera', 'Smith', 'marketing');

insert into employee (employeeId, firstName, lastName, salary)
values (7, 'Vera', 'Smith', 'marketing');

insert into employee (employeeId, firstName, lastName, salary)
values (8, 'Vera', 'Smith', 'marketing');

insert into employee values (9, 'Luke', 'Walker', null, null)

insert into employee (department, lastName, employeeId, salary, firstName)
values ('ict', 'Brown', 10, 4000, 'Olivia')

-- "insert into employee (department, lastName, employeeId, salary, firstName)
-- values (?, ?, ?, ?, ?)"

-- "insert into employee values (?, ?, ?, ?, ?)"