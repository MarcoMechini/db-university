SELECT deg.name, st.name, st.surname
FROM degrees as deg
inner join students as st 
on st.degree_id = deg.id
where deg.name = 'Corso di Laurea in Economia'

SELECT deg.name
FROM degrees as deg
inner join departments as dep
on deg.department_id = dep.id
where dep.name = 'Dipartimento di Neuroscienze'

SELECT t.name, t.surname, c.name
FROM teachers as t
inner join course_teacher as c_t
on t.id = c_t.teacher_id
inner join courses as c
on c.id = c_t.course_id
where t.id = 44

SELECT st.surname, st.name, deg.name, dep.name
FROM students as st
inner join degrees as deg
on st.degree_id = deg.id
inner join departments as dep
on dep.id = deg.department_id
order by st.surname, st.name 

SELECT deg.name, c.name, t.surname
FROM degrees as deg
inner join courses as c
on deg.id = c.degree_id
inner join course_teacher as ct
on c.id = ct.course_id
inner join teachers as t
on ct.teacher_id = t.id

SELECT DISTINCT t.*, dep.name
FROM teachers t
JOIN courses c ON t.id = c.degree_id
JOIN degrees d ON c.degree_id = d.id
JOIN departments dep ON d.department_id = dep.id
WHERE dep.id = 5;
