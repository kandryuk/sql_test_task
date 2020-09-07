select students.surname as students_surname, students.name as students_name, lessons.lesson, teachers.surname as teachers_surname, teachers.name as teachers_name
from (((student_lesson left join students on student_id = students.id) left join lessons on student_lesson.lesson_id = lessons.id)
    left join teachers on teacher_id = teachers.id)
order by students.surname
