INSERT INTO teachers
    (surname, name)
VALUES
    ('Kocyubinskij', 'Kirill'),
    ('Haritonov', 'Semyon'),
    ('Bondarenko', 'Bogdan'),
    ('Aksyonov', 'Erik');

INSERT INTO students
    (surname, name)
VALUES
    ('Alekseev', 'Gleb'),
    ('Serdyuk', 'Andrej'),
    ('Merkushev', 'Erik'),
    ('Fadeev', 'Andrej'),
    ('Vlasov', 'YUlian'),
    ('Gerasimov', 'Daniil'),
    ('Kolesnikov', 'Andrej'),
    ('Konstantinov', 'Andrej'),
    ('YAkovlev', 'Gleb'),
    ('Belyakov', 'YAroslav'),
    ('Hovanskij', 'Garri'),
    ('Turov', 'Avgust'),
    ('Predybajlo', 'Gleb'),
    ('Andrusejko', 'Cefas'),
    ('Kravchuk', 'CHarlz'),
    ('Dmitriev', 'Aleksej'),
    ('SHCHerbakov', 'ZHiger'),
    ('Blohin', 'Oleg'),
    ('Savenko', 'Oskar'),
    ('Egorov', 'Miroslav'),
    ('Komarov', 'Orest'),
    ('Dyachkov', 'Boris'),
    ('Konovalov', 'Lavrentij'),
    ('Gurev', 'YAroslav'),
    ('Tkachenko', 'Timofej'),
    ('Borisov', 'Rafail'),
    ('Kondratev', 'Hariton'),
    ('Zinovev', 'Fyodor'),
    ('Kulibaba', 'Stefan'),
    ('Gamula', 'Zinovij'),
    ('Kabanov', 'Gennadij'),
    ('Turov', 'Prohor'),
    ('Terentev', 'Oliver'),
    ('Orlov', 'Ustin'),
    ('Kononov', 'Cefas'),
    ('Gorodeckij', 'Dominik'),
    ('Muravyov', 'Rafail'),
    ('Antonov', 'Karim'),
    ('Medvedev', 'Stepan'),
    ('Panov', 'Pavel'),
    ('Kirillov', 'Konstantin'),
    ('Konstantinov', 'Ilya'),
    ('Peredrij', 'Artyom'),
    ('Voronov', 'Ustin'),
    ('Kotovskij', 'Igor'),
    ('Andrusejko', 'Zahar'),
    ('Doronin', 'Erik'),
    ('Zinovev', 'Joshka'),
    ('Ustinov', 'Cezar'),
    ('Kulikov', 'Eduard'),
    ('Titov', 'Ostap'),
    ('Eryomenko', 'SHerlok'),
    ('Savelev', 'Klaus'),
    ('Ponomaryov', 'Hariton'),
    ('Grishin', 'Antonin'),
    ('ZHitar', 'Spartak'),
    ('Savenko', 'Ruslan'),
    ('Stepanov', 'Prohor'),
    ('Baranov', 'Joshka'),
    ('Kolomoec', 'Timofej'),
    ('Bobrov', 'ZHiger'),
    ('Gamula', 'ZHerar'),
    ('Evdokimov', 'Eremej'),
    ('Evdokimov', 'Maksim'),
    ('Semochko', 'Arkadij'),
    ('Hitruk', 'Semyon'),
    ('Ignatev', 'Nikita'),
    ('Kolesnikov', 'Lev'),
    ('Panov', 'Vasilij'),
    ('Panov', 'Erik'),
    ('Evseev', 'SHamil'),
    ('Gavrilov', 'Miroslav'),
    ('Kobzar', 'Hariton'),
    ('Burov', 'CHeslav'),
    ('Nesterov', 'Stefan'),
    ('Dementev', 'Mark'),
    ('Ivanenko', 'Timofej'),
    ('Burov', 'Radislav'),
    ('Sasko', 'Leonard'),
    ('Andrusejko', 'David'),
    ('Strelkov', 'Nazar'),
    ('Petrov', 'Eremej'),
    ('Hudobyak', 'Jonas'),
    ('Maslov', 'YUlian'),
    ('Fyodorov', 'Innokentij'),
    ('Kotov', 'SHarl'),
    ('Butko', 'Hariton'),
    ('Tokar', 'Viktor'),
    ('Tereshchenko', 'Makar'),
    ('Tarasov', 'Ignatij'),
    ('Fedunkiv', 'Lukyan'),
    ('Vlasov', 'Pavel'),
    ('ZHdanov', 'Vladimir'),
    ('Gurev', 'Feliks'),
    ('SHarapov', 'Evsej'),
    ('Nikiforov', 'Pyotr'),
    ('Cvetkov', 'Bogdan'),
    ('Vishnyakov', 'ZHerar'),
    ('Zabuzhko', 'Kuzma');

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
DECLARE @i INT = 2

WHILE (@i < 100)
BEGIN
   INSERT INTO student_lesson
        (student_id, lesson_id)
    VALUES
        (@i, floor(rand() * (7-1+1) + 1))
   SET @i = @i + 1
END;

INSERT INTO student_lesson
    (student_id, lesson_id)
VALUES

    ('1', '2'),
    ('1', '5'),
    ('12', '1'),
    ('22', '3'),
    ('43', '4'),
    ('89', '5'),
    ('75', '6'),
    ('34', '7');