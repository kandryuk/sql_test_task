select students.surname, students.name, count(lessons.id) as number_of_lessons, count(distinct teachers.id) as number_of_teachers,  string_agg(distinct concat(teachers.surname, ' ', teachers.name), ', ') as teachers
from (((student_lesson left join students on student_id = students.id) left join lessons on student_lesson.lesson_id = lessons.id)
    left join teachers on teacher_id = teachers.id)
group by students.surname, students.name
order by students.surname