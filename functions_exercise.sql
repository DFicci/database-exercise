use employees;

select *
from employees;

select concat(last_name, ', ', first_name)
           as full_name
from employees
where first_name like 'E%'
  and last_name like '%E';