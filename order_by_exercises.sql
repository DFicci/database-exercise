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
#
# SELECT DISTINCT count(emp_no)
# FROM employees
# WHERE last_name
#           LIKE '%q%';
#
# select count(emp_no)
# from employees
# where first_name = 'Irena'
#    or first_name = 'Vidya'
#    or first_name = 'Maya';
#
# # parentheses needed in order to get the correct number of 441
# select count(emp_no)
# from employees
# where (first_name = 'Irena'
#     or first_name = 'Vidya'
#     or first_name = 'Maya')
#   and gender = 'M';
#
# select count(emp_no)
# from employees
# where last_name like 'E%'
#    or last_name like '%E';
# # % before the letter shows people who's last name start with E and after the letter shows at the end of their last name
# select count(emp_no)
# from employees
# where last_name like 'E%'
#   and last_name like '%E';
#
# select count(emp_no)
# from employees
# where last_name like '%q%'
#   and last_name not like '%qu%';