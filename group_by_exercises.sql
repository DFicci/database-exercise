USE employees;

select distinct title from titles;

select last_name
from employees
where last_name like 'E%E'
group by last_name
order by last_name;

select last_name, first_name
from employees
where last_name like 'E%E'
group by last_name, first_name
order by last_name;

select count(*), last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;

select count(*), gender
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;
