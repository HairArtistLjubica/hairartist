CREATE DATABASE hair_artist;
USE hair_artist;

-- EMPLOYEES
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    slug VARCHAR(100) UNIQUE,
    color VARCHAR(20),
    is_active BOOLEAN DEFAULT TRUE
);

-- SERVICES
CREATE TABLE services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    duration_minutes INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE
);

-- EMPLOYEE SERVICES (ko šta radi)
CREATE TABLE employee_services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    service_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE,
    FOREIGN KEY (service_id) REFERENCES services(id) ON DELETE CASCADE
);

-- WORKING HOURS
CREATE TABLE working_hours (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    day_of_week INT, -- 0 = Nedelja, 6 = Subota
    start_time TIME,
    end_time TIME,
    FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE
);

-- APPOINTMENTS
CREATE TABLE appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    service_id INT,
    client_name VARCHAR(150),
    client_phone VARCHAR(50),
    client_email VARCHAR(150),
    date DATE,
    start_time TIME,
    end_time TIME,
    status ENUM('booked','cancelled','done') DEFAULT 'booked',
    note TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (employee_id) REFERENCES employees(id),
    FOREIGN KEY (service_id) REFERENCES services(id)
);
