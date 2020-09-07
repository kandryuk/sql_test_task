select students_surname, students_name, sum(count_of_lessons) as number_of_lessons, sum(count_of_teachers) as number_of_teachers, string_agg(teachers, ', ') as teacher_fullname
from (
select distinct students_surname, students_name, count(unique_lessons) as count_of_lessons, count(distinct unique_teachers) as count_of_teachers, teachers
    from (
select students.surname as students_surname, students.name as students_name, lessons.id as unique_lessons, teachers.id as unique_teachers, concat(teachers.surname, ' ', teachers.name) as teachers
        from (((student_lesson left join students on student_id = students.id) left join lessons on student_lesson.lesson_id = lessons.id)
            left join teachers on teacher_id = teachers.id)
) as foo
    group by students_surname, students_name, teachers
) as goo
group by students_surname, students_name
order by students_surname
