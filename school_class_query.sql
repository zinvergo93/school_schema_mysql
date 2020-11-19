USE school_class_schema;

SELECT *
FROM student;

SELECT *
FROM professor;

SELECT * 
FROM course;

SELECT * 
FROM student_has_course;

-- 10 queries to see average grade given by each professor --
SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 1;

SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 2;

SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 3;

SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 4;

SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 5;

SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 6;

SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 7;

SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 8;

SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 9;

SELECT AVG (grade_total)
FROM student_has_course
WHERE course_professor_professor_id = 10;


-- Table illustrating All grades for each student, descending --
SELECT 'Student name: ', student_name, 'Course: ', course_name, 'Grade: ',  grade_total, 'Professor: ', professor_name
FROM student s
JOIN student_has_course shc
ON shc.student_student_id = s.student_id
JOIN course c
ON c.course_id = shc.course_course_id
JOIN professor p
ON p.professor_id = course_professor_professor_id
ORDER BY student_id ASC, grade_total DESC;

-- Students grouped by course name --
SELECT 'Student name: ', student_name, 'Course: ', course_name
FROM student s
JOIN student_has_course shc
ON shc.student_student_id = s.student_id
JOIN course c
ON c.course_id = shc.course_course_id
ORDER BY course_id;

-- Summary report, Sorted by most challenging to least challenging by AVG GRADE -- 
SELECT course_name, AVG(grade_total)
FROM student_has_course shc
JOIN course c
ON shc.course_course_id = c.course_id
GROUP BY course_course_id
ORDER BY AVG(grade_total) ASC;

--  Student and Professor with most courses in common --
SELECT professor_name, student_name, course_name
FROM student s
JOIN student_has_course shc
ON shc.student_student_id = s.student_id
JOIN course c
On c.course_id = shc.course_course_id
JOIN professor p
ON p.professor_id = c.professor_professor_id
