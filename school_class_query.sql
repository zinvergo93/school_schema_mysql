USE school_class_schema;

SELECT *
FROM student;

SELECT *
FROM professor;

SELECT * 
FROM course;

SELECT * 
FROM student_has_course;

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


SELECT 'Student name: ', student_name, 'Course: ', course_name, 'Grade: ',  grade_total, 'Professor: ', professor_name
FROM student s
JOIN student_has_course shc
ON shc.student_student_id = s.student_id
JOIN course c
ON c.course_id = shc.course_course_id
JOIN professor p
ON p.professor_id = course_professor_professor_id
ORDER BY student_id ASC, grade_total DESC
