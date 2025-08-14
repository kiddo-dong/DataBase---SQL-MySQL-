select * 
from 회원;

select 이름, 이메일
from 회원;

select *
from 회원
where 나이 >= 30;

select *
from 회원
where 이메일 like '%@naver.com';

select *
from 회원
where 등급 = 'vip' and 나이 >=25
order by 가입일 desc;

select *
from 회원
where 이메일 is null;

select distinct 등급
from 회원;

select *
from 회원
where 적립금 = (select max(적립금) from 회원);

select avg(나이) as 평균나이, max(적립금) as 최고적립금, count(회원) as 회원수
from 회원;

select *
from 회원
where 가입일 >= '2024-01-01';