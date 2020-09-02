DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    surname TEXT NOT NULL
);

DROP TABLE IF EXISTS students;
CREATE TABLE students
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    surname TEXT NOT NULL
);

DROP TABLE IF EXISTS lessons;
CREATE TABLE lessons
(
    id SERIAL PRIMARY KEY,
    lesson TEXT NOT NULL,
    teacher_id INT NOT NULL
);

DROP TABLE IF EXISTS student_lesson;
CREATE TABLE student_lesson
(
    student_id INT NOT NULL,
    lesson_id INT NOT NULL
);