-- Inert Student
INSERT INTO students (first_name, last_name, date_of_birth, email) 
VALUES ('Alice', 'Johnson', '2001-06-15', 'alice@example.com'),
('Bob', 'Williams', '2000-04-20', 'bob.williams@university.com'),
('Charlie', 'Brown', '2002-02-10', 'charlie.brown@university.com');

-- Insert Departments
INSERT INTO departments (department_name) 
VALUES ('Computer Science'),
('Information Technology Engineering'),
('Mechanical Engineering');

-- Insert Faculty
INSERT INTO faculty (first_name, last_name, department_id, email) 
VALUES 
('John', 'Doe', 1, 'john.doe@university.com'),
('Jane', 'Smith', 2, 'jane.smith@university.com'),
('Mark', 'Johnson', 3, 'mark.johnson@university.com');

-- Insert Courses
INSERT INTO courses (course_code, course_name, department_id, faculty_id) 
VALUES 
('CS101', 'Introduction to Computer Science', 1, 1),
('ITE202', 'Web Deverlopment', 2, 2),
('ME303', 'Thermodynamics', 3, 3);

select * from courses;

-- Insert Enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
VALUES 
(1, 1, '2025-01-15', 90.5),
(3, 3, '2025-01-20', 85.0);


