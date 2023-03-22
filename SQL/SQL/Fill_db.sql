INSERT INTO db1.university (name) VALUES 
('National Technical University of Ukraine "Igor Sikorsky Kyiv Polytechnic Institute"'),
('Taras Shevchenko National University of Kyiv'),
('Lviv Polytechnic National University'),
('V.N. Karazin Kharkiv National University'),
('Odessa National Polytechnic University');

INSERT INTO db1.faculties (name, id_univer) VALUES 
('Faculty of Computer Science and Cybernetics', 1),
('Faculty of Physics', 2),
('Faculty of Architecture', 3),
('Faculty of Mathematics and Computer Science', 4),
('Faculty of Applied Mathematics and Informatics', 5);

INSERT INTO db1.teachers (name, second_name, id_facult) VALUES 
('Olga', 'Kovalenko', 1),
('Ivan', 'Petrov', 2),
('Maria', 'Zaytseva', 3),
('Viktor', 'Tkachenko', 4),
('Dmytro', 'Kovalchuk', 5);

INSERT INTO db1.groups (name, id_fucalt) VALUES 
('CS-101', 1),
('PHY-201', 2),
('ARCH-301', 3),
('MATH-401', 4),
('AMI-501', 5);

INSERT INTO db1.students (name, second_name, id_facult, id_group) VALUES 
('Andrii', 'Kozlov', 1, 1),
('Tetiana', 'Lysenko', 2, 2),
('Pavlo', 'Yatsenko', 3, 3),
('Kateryna', 'Khomenko', 4, 4),
('Oksana', 'Melnik', 5, 5);

