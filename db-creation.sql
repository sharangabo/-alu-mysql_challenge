-- Create database
CREATE DATABASE alu_project;

USE alu_project;

-- Create clients table
CREATE TABLE clients (
    client_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    client_name VARCHAR(255) NOT NULL COMMENT 'Client Name',
    contact_name VARCHAR(255) NOT NULL COMMENT 'Email'
);

-- Create projects table
CREATE TABLE projects (
    project_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(255) NOT NULL COMMENT 'Project Name',
    requirements TEXT,
    deadline DATE NOT NULL COMMENT 'Deadline',
    client_id INT,
    FOREIGN KEY (client_id) REFERENCES clients (client_id)
);

-- Create employees table
CREATE TABLE employees (
    employee_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(255) NOT NULL COMMENT 'Employee Name'
);

-- Create team_members table
CREATE TABLE team_members (
    team_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT,
    employee_id INT,
    is_lead BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'is_lead',
    FOREIGN KEY (project_id) REFERENCES projects (project_id),
    FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);

-- INSERT Client Data
INSERT INTO
    clients (client_name, contact_name)
VALUES (
        'Big Retail Inc.',
        'Peter Parker'
    ),
    (
        'EduTech Solutions',
        'Walter White'
    ),
    (
        'Trendsetters Inc.',
        'Sandra Bullock'
    ),
    (
        'Gearhead Supply Co.',
        'Daniel Craig'
    ),
    (
        'Fine Dine Group',
        'Olivia Rodriguez'
    ),
    (
        'Green Thumb Gardens',
        'Mark Robinson'
    ),
    (
        'Busy Bees Daycare',
        'Emily Blunt'
    ),
    (
        'Acme Pharmaceuticals',
        'David Kim'
    ),
    (
        'Knowledge Stream Inc.',
        'Matthew McConaughey'
    ),
    (
        'Software Craft LLC',
        'Jennifer Lopez'
    );

-- INSERT Project Data
INSERT INTO
    `projects` (
        `project_name`,
        `requirements`,
        `deadline`,
        `client_id`
    )
VALUES (
        'E-commerce Platform',
        'Extensive documentation',
        '2024-12-01',
        1
    ),
    (
        'Mobile App for Learning',
        'Gamified learning modules',
        '2024-08-15',
        2
    ),
    (
        'Social Media Management Tool',
        'User-friendly interface with analytics',
        '2024-10-31',
        3
    ),
    (
        'Inventory Management System',
        'Barcode integration and real-time stock tracking',
        '2024-11-01',
        4
    ),
    (
        'Restaurant Reservation System',
        'Online booking with table management',
        '2024-09-01',
        5
    ),
    (
        'Content Management System (CMS)',
        'Drag-and-drop interface for easy content updates',
        '2024-12-15',
        6
    ),
    (
        'Customer Relationship Management (CRM)',
        'Secure parent portal and communication tools',
        '2024-10-01',
        7
    ),
    (
        'Data Analytics Dashboard',
        'Real-time visualization of key performance indicators (KPIs)',
        '2024-11-30',
        8
    ),
    (
        'E-learning Platform Development',
        'Interactive course creation and delivery tools',
        '2024-09-15',
        9
    ),
    (
        'Bug Tracking and Issue Management System',
        'Prioritization and collaboration features for bug reporting',
        '2024-12-31',
        10
    );

-- INSERT Employee Data
INSERT INTO
    `employees` (`employee_name`)
VALUES ('Alice Brown'),
    ('David Lee'),
    ('Jane Doe'),
    ('Micheal Young'),
    ('Emily Chen'),
    ('William Green'),
    ('Sarah Jones');

-- INSERT Team Members Data
INSERT INTO
    team_members (
        project_id,
        employee_id,
        is_lead
    )
VALUES (1, 1, 1),
    (1, 2, 0),
    (1, 3, 0),
    (2, 2, 1),
    (2, 4, 0),
    (2, 5, 0),
    (3, 1, 1),
    (3, 3, 0),
    (3, 6, 0),
    (4, 2, 1),
    (4, 4, 0),
    (4, 5, 0),
    (5, 1, 1),
    (5, 6, 0),
    (5, 7, 0),
    (6, 2, 1),
    (6, 3, 0),
    (6, 4, 0),
    (7, 1, 1),
    (7, 6, 0),
    (7, 7, 0),
    (8, 2, 1),
    (8, 4, 0),
    (8, 5, 0),
    (9, 1, 1),
    (9, 3, 0),
    (9, 6, 0),
    (10, 2, 1),
    (10, 4, 0),
    (10, 7, 0);