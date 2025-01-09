CREATE DATABASE IF NOT EXISTS compagnie_creole;

USE compagnie_creole;

CREATE TABLE services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    office_number VARCHAR(20) DEFAULT NULL
);

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    service_id INT,
    FOREIGN KEY (service_id) REFERENCES services(id) ON DELETE SET NULL
);

CREATE TABLE manage (
    service_id INT NOT NULL,
    employee_id INT NOT NULL,
    start_date DATE NOT NULL,
    PRIMARY KEY (service_id, employee_id),
    FOREIGN KEY (service_id) REFERENCES services(id) ON DELETE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE
);

INSERT INTO services (name, office_number) VALUES
('Cuisine Centrale', 'CC101'),
('Département Fromage', 'DF202'),
('Boulangerie Pâtisserie', 'BP303'),
('Pôle Charcuterie', 'PC404'),
('Équipe Sauce Secrète', 'ESS505');

INSERT INTO employees (first_name, last_name, email, salary, service_id) VALUES
('Brie', 'DeMeaux', 'brie.demeaux@compagniegourmande.com', 45000.00, 2),
('Camille', 'Embert', 'camille.embert@compagniegourmande.com', 50000.00, 1),
('Jean', 'Bon', 'jean.bon@compagniegourmande.com', 55000.00, 3),
('Tom', 'Ato', 'tom.ato@compagniegourmande.com', 52000.00, 5),
('Pat', 'Échou', 'pat.echou@compagniegourmande.com', 48000.00, 4),
('Alain', 'Proviste', 'alain.proviste@compagniegourmande.com', 53000.00, 1),
('Charlotte', 'Auxfraises', 'charlotte.aux@compagniegourmande.com', 57000.00, 3),
('Léa', 'Roux', 'lea.roux@compagniegourmande.com', 62000.00, 4),
('Micha', 'Croute', 'micha.croute@compagniegourmande.com', 52000.00, 5),
('Max', 'Lamasse', 'max.lamasse@compagniegourmande.com', 67000.00, 2);

INSERT INTO manage (service_id, employee_id, start_date) VALUES
(1, 2, '2021-01-25'),
(2, 1, '2021-04-10'),
(3, 3, '2022-06-01'),
(4, 8, '2022-06-04'),
(5, 4, '2022-12-25');
