select students.surname, students.name, lessons.lesson, teachers.surname, teachers.name
from (((student_lesson left join students on student_id = students.id) left join lessons on student_lesson.lesson_id = lessons.id)
    left join teachers on teacher_id = teachers.id)
order by students.surname