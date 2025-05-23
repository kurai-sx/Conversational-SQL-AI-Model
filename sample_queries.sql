SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Planning Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'C';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Mrs. Breanna Phillips DVM';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Strong 101';
SELECT * FROM courses WHERE semester = 'Summer';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Public Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'D';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Joel Wood';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Whatever 101';
SELECT * FROM courses WHERE semester = 'Spring';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Lexicographer Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'B';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Tanya Rogers';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Fall 101';
SELECT * FROM courses WHERE semester = 'Fall';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Planning Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'A';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Tanya Rogers';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Relate 101';
SELECT * FROM courses WHERE semester = 'Fall';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Public Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'B';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Brandy Summers';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Boy 101';
SELECT * FROM courses WHERE semester = 'Summer';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Lexicographer Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'F';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Brandy Summers';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Medical 101';
SELECT * FROM courses WHERE semester = 'Spring';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Planning Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'F';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Taylor Garza';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Half 101';
SELECT * FROM courses WHERE semester = 'Summer';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Building Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'A';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Taylor Garza';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Relate 101';
SELECT * FROM courses WHERE semester = 'Summer';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Lexicographer Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'D';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Mrs. Breanna Phillips DVM';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Room 101';
SELECT * FROM courses WHERE semester = 'Spring';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Building Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'A';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Amber Alvarado';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Tough 101';
SELECT * FROM courses WHERE semester = 'Fall';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Engineer, Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'C';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Amber Alvarado';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Plant 101';
SELECT * FROM courses WHERE semester = 'Spring';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Public Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'F';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Ms. Jennifer Gilbert';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Agency 101';
SELECT * FROM courses WHERE semester = 'Spring';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Engineer, Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'C';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Mrs. Breanna Phillips DVM';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Plant 101';
SELECT * FROM courses WHERE semester = 'Fall';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Engineer, Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'A';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Taylor Garza';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Half 101';
SELECT * FROM courses WHERE semester = 'Fall';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Planning Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'B';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Elizabeth Murphy';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Fall 101';
SELECT * FROM courses WHERE semester = 'Summer';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Lexicographer Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'B';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'John Phillips';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Term 101';
SELECT * FROM courses WHERE semester = 'Fall';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Engineer, Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'A';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Mrs. Breanna Phillips DVM';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Strong 101';
SELECT * FROM courses WHERE semester = 'Fall';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Public Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'A';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Mrs. Breanna Phillips DVM';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Room 101';
SELECT * FROM courses WHERE semester = 'Fall';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Lexicographer Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'B';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Ms. Jennifer Gilbert';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Strong 101';
SELECT * FROM courses WHERE semester = 'Spring';
SELECT s.name FROM students s JOIN departments d ON s.department_id = d.department_id WHERE d.name = 'Building Department';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN grades g ON e.enrollment_id = g.enrollment_id WHERE g.grade = 'B';
SELECT c.title FROM courses c JOIN course_assignments ca ON ca.course_id = c.course_id JOIN professors p ON p.professor_id = ca.professor_id WHERE p.name = 'Joel Wood';
SELECT s.name FROM students s JOIN enrollments e ON s.student_id = e.student_id JOIN courses c ON e.course_id = c.course_id WHERE c.title = 'Half 101';
SELECT * FROM courses WHERE semester = 'Spring';
