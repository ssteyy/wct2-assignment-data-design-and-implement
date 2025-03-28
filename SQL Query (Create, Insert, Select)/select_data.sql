-- 1. Retrieve all students who enrolled in a specific course.
-- If you want to find all faculty members in the 'Computer Science' department (let's assume the department ID is 1), use this query: 
SELECT s.student_id, s.first_name, s.last_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE c.course_code = 'CS101';
-- = > Explanation:
-- * This query uses JOIN to combine the students, enrollments, and courses tables.
-- * It filters the records where the course_code is 'CS101' and retrieves the student's student_id, first_name, and last_name. 


-- 2. Find all faculty members in a particular department.
-- If you want to find all faculty members in the 'Computer Science' department (let's assume the department ID is 1), use this query:
SELECT f.faculty_id, f.first_name, f.last_name
FROM faculty f
JOIN departments d ON f.department_id = d.department_id
WHERE d.department_name = 'Computer Science';
-- => Explanation:
-- * This query joins the faculty and departments tables based on the department_id.
-- * It filters the records where the department_name is 'Computer Science' and retrieves the faculty's faculty_id, first_name, and last_name.


-- 3. List all courses a particular student is enrolled in.
-- To list all courses that a student with student_id = 1 is enrolled in: 
SELECT c.course_code, c.course_name
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
WHERE e.student_id = 1;
-- =>  Explanation:
-- * This query joins the courses and enrollments tables to retrieve the course information.
-- * It filters the records for the student with student_id = 1 and lists the course course_code and course_name.

 

-- 4. Retrieve students who have not enrolled in any course.
-- To find students who are not enrolled in any courses, use the LEFT JOIN to include all students and check where there is no match in the enrollments table: 
SELECT s.student_id, s.first_name, s.last_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
WHERE e.course_id IS NULL;
-- => Explanation:
-- * This query performs a LEFT JOIN between the students and enrollments tables.
-- * It retrieves students whose student_id does not appear in the enrollments table (i.e., students who have not enrolled in any courses).

 
-- 5. Find the average grade of students in a specific course.
-- To find the average grade of students in the course 'CS101': 
SELECT AVG(e.grade) AS average_grade
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
WHERE c.course_code = 'CS101';
-- => Explanation:
-- * This query joins the enrollments and courses tables.
-- * It filters by course_code = 'CS101' and calculates the average of the grade column using the AVG() function. 