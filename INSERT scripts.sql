INSERT INTO teachers
    (surname, name)
VALUES
    ('Коцюбинский', 'Кирилл'),
    ('Харитонов', 'Семён'),
    ('Бондаренко', 'Богдан'),
    ('Аксёнов', 'Эрик');

INSERT INTO students
    (surname, name)
VALUES
    ('Сердюк', 'Андрей'),
    ('Меркушев', 'Эрик'),
    ('Фадеев', 'Андрей'),
    ('Власов', 'Юлиан'),
    ('Герасимов', 'Даниил'),
    ('Колесников', 'Андрей'),
    ('Константинов', 'Андрей'),
    ('Яковлев', 'Глеб'),
    ('Беляков', 'Ярослав'),
    ('Хованский', 'Гарри'),
    ('Туров', 'Август'),
    ('Алексеев', 'Глеб'),
    ('Предыбайло', 'Глеб'),
    ('Андрусейко', 'Цефас'),
    ('Кравчук', 'Чарльз'),
    ('Дмитриев', 'Алексей'),
    ('Щербаков', 'Жигер'),
    ('Блохин', 'Олег'),
    ('Савенко', 'Оскар'),
    ('Егоров', 'Мирослав'),
    ('Комаров', 'Орест'),
    ('Дьячков', 'Борис'),
    ('Коновалов', 'Лаврентий'),
    ('Гурьев', 'Ярослав'),
    ('Ткаченко', 'Тимофей'),
    ('Борисов', 'Рафаил'),
    ('Кондратьев', 'Харитон'),
    ('Зиновьев', 'Фёдор'),
    ('Кулибаба', 'Стефан'),
    ('Гамула', 'Зиновий'),
    ('Кабанов', 'Геннадий'),
    ('Туров', 'Прохор'),
    ('Терентьев', 'Оливер'),
    ('Орлов', 'Устин'),
    ('Кононов', 'Цефас'),
    ('Городецкий', 'Доминик'),
    ('Муравьёв', 'Рафаил'),
    ('Антонов', 'Карим'),
    ('Медведев', 'Степан'),
    ('Панов', 'Павел'),
    ('Кириллов', 'Константин'),
    ('Константинов', 'Илья'),
    ('Передрий', 'Артём'),
    ('Воронов', 'Устин'),
    ('Котовский', 'Игорь'),
    ('Андрусейко', 'Захар'),
    ('Доронин', 'Эрик'),
    ('Зиновьев', 'Йошка'),
    ('Устинов', 'Цезарь'),
    ('Куликов', 'Эдуард'),
    ('Титов', 'Остап'),
    ('Ерёменко', 'Шерлок'),
    ('Савельев', 'Клаус'),
    ('Пономарёв', 'Харитон'),
    ('Гришин', 'Антонин'),
    ('Житар', 'Спартак'),
    ('Савенко', 'Руслан'),
    ('Степанов', 'Прохор'),
    ('Баранов', 'Йошка'),
    ('Коломоец', 'Тимофей'),
    ('Бобров', 'Жигер'),
    ('Гамула', 'Жерар'),
    ('Евдокимов', 'Еремей'),
    ('Евдокимов', 'Максим'),
    ('Семочко', 'Аркадий'),
    ('Хитрук', 'Семён'),
    ('Игнатьев', 'Никита'),
    ('Колесников', 'Лев'),
    ('Панов', 'Василий'),
    ('Панов', 'Эрик'),
    ('Евсеев', 'Шамиль'),
    ('Гаврилов', 'Мирослав'),
    ('Кобзар', 'Харитон'),
    ('Буров', 'Чеслав'),
    ('Нестеров', 'Стефан'),
    ('Дементьев', 'Марк'),
    ('Иваненко', 'Тимофей'),
    ('Буров', 'Радислав'),
    ('Сасько', 'Леонард'),
    ('Андрусейко', 'Давид'),
    ('Стрелков', 'Назар'),
    ('Петров', 'Еремей'),
    ('Худобяк', 'Йонас'),
    ('Маслов', 'Юлиан'),
    ('Фёдоров', 'Иннокентий'),
    ('Котов', 'Шарль'),
    ('Бутко', 'Харитон'),
    ('Токар', 'Виктор'),
    ('Терещенко', 'Макар'),
    ('Тарасов', 'Игнатий'),
    ('Федункив', 'Лукьян'),
    ('Власов', 'Павел'),
    ('Жданов', 'Владимир'),
    ('Гурьев', 'Феликс'),
    ('Шарапов', 'Евсей'),
    ('Никифоров', 'Пётр'),
    ('Цветков', 'Богдан'),
    ('Вишняков', 'Жерар'),
    ('Забужко', 'Кузьма');

INSERT INTO lessons
    (lesson, teacher_id)
VALUES
    ('high maths', '1'),
    ('english', '2'),
    ('physics', '3'),
    ('chemistry', '4'),
    ('belorusian', '2'),
    ('singing', '2'),
    ('PE', '4');

--next part use random filling for student's lessons
DO
$do$
BEGIN
    FOR i IN 1..99 LOOP
    INSERT INTO student_lesson
        (student_id, lesson_id)
    VALUES
        (i, floor(random() * (7-1+1) + 1)
    ::int);
END
LOOP;
END
$do$;

INSERT INTO student_lesson
    (student_id, lesson_id)
VALUES

    ('1', '1'),
    ('12', '2'),
    ('22', '3'),
    ('43', '4'),
    ('89', '5'),
    ('75', '6'),
    ('34', '7');