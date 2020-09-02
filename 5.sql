select name, quantity
from (select name, count(name) as quantity
from students
group by name) as foo
where quantity>=3