use employees;

select *
from employees;

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name desc, first_name desc;

select *
from employees
where last_name like ('E%')
order by emp_no desc;
