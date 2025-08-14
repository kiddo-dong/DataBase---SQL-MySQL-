/*
VIEW
DDL(데이터 정의어)에 속함


create view 뷰이름[(속성들)]
as select
[with check option]

가상테이블로 실제 테이블에 영향이 없어 보안성과 유지 보수성이 좋음
*/

# view 생성
create view 우수고객(고객아이디, 고객이름, 나이, 등급) as
	select 고객아이디, 고객이름, 나이, 등급
	from 고객
    where 등급 = 'vip'
with check option;

# view 검색
select * from 우수고객;

drop view 우수고객; 

