-- init.sql

-- Create the employees table
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

-- Insert sample data
INSERT INTO employees (name, position, salary) VALUES
    ('John Doe', 'Software Engineer', 90000.00),
    ('Jane Smith', 'Product Manager', 110000.00),
    ('Alice Johnson', 'Data Scientist', 95000.00),
    ('Bob Williams', 'Marketing Specialist', 80000.00),
    ('Eva Davis', 'UI/UX Designer', 85000.00),
    ('Chris Miller', 'Financial Analyst', 100000.00),
    ('Olivia Brown', 'HR Manager', 105000.00),
    ('David Wilson', 'Network Administrator', 92000.00),
    ('Sophia Jones', 'Sales Representative', 88000.00),
    ('Michael Taylor', 'Customer Support Specialist', 85000.00);