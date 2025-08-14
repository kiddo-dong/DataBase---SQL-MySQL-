# DDL
create table department(
	dept_id bigint primary key,
    dept_name varchar(100) not null
);

create table employee(
	emp_id bigint primary key,
    emp_name varchar(100) not null,
    salary int not null,
    hire_data date not null,
    dept_id bigint,
    foreign key(dept_id) references department(dept_id)
);

# DML
insert 
into department(dept_id, dept_name)
values (1, '개발팀'),
(2, '마케팅팀'),
(3, '인사팀');

insert into employee
values (101, '김철수', 5000, '2020-01-15', 1),
(102, '이영희', 6000, '2019-03-10', 1),
(103, '박민수', 4500, '2021-06-01', 2),
(104, '최지우', 7000, '2018-07-20', 3),
(105, '한예슬', 4000, '2022-01-01', 2);

select avg(e.salary) as 부서별평균연봉, count(e.emp_id) as 직원수
from department d
join employee e on d.dept_id = e.dept_id
group by d.dept_name having avg(e.salary) >= 5000
order by 부서별평균연봉 desc;

