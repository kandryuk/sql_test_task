DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(16) NOT NULL,
    surname VARCHAR(16) NOT NULL
);

DROP TABLE IF EXISTS students;
CREATE TABLE students
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(16) NOT NULL,
    surname VARCHAR(16) NOT NULL
);

DROP TABLE IF EXISTS lessons;
CREATE TABLE lessons
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    lesson VARCHAR(16) NOT NULL,
    teacher_id INT NOT NULL REFERENCES teachers(id)
);

DROP TABLE IF EXISTS student_lesson;
CREATE TABLE student_lesson
(
    student_id INT NOT NULL REFERENCES students(id),
    lesson_id INT NOT NULL REFERENCES lessons(id)
);