select teachers.surname, teachers.name, count(students.id)
from (((student_lesson left join students on student_id = students.id) left join lessons on student_lesson.lesson_id = lessons.id)
    left join teachers on teacher_id = teachers.id)
group by teachers.surname, teachers.name
order by teachers.surname