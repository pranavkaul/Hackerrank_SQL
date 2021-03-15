select if(grade < 8, null, name),grades.grade,students.marks from students inner join grades on students.marks between grades.min_mark and 
grades.max_mark order by grades.grade desc,name;

Oracle Solution

select case when grade < 8 then null else name end as e,grades.grade,students.marks from students
join grades on students.marks between grades.min_mark and grades.max_mark order by grades.grade desc,students.name;
