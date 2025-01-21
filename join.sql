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