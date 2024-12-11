CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (name, position, salary) 
VALUES ('John Doe', 'Software Engineer', 75000.00);

INSERT INTO employees (name, position, salary) 
VALUES ('Kil dong', 'Software Developer', 95000.00);

select * from employees 
where id = 2; 

delete from employees 
where id = 2; 
