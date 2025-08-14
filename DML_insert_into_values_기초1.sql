# DML의 삽입
# 실질적 데이터 삽입
# 테이블의 속성과 values의 개체값은 1대1 매핑

# INSERT INTO 테이블명(속성1,속성2,속성3....) values (개체인스턴스1, 개체인스턴스2, 개체인스턴스3....);

# 7-47
insert into 고객(고객아이디, 고객이름, 나이, 등급, 직업, 적립금)
values ('strawberry', '최유경', 30, 'vip', '공무원', 100);

select *
from 고객;

# value나열 순서가 속성과 동일하기 때문에 속성은 생략 가능
# insert into 고객
# values ('strawberry', '최유경', 30, 'vip', '공무원', 100);

# 7-48 (null 값이 존재하는 values)
insert
into 고객(고객아이디, 고객이름, 나이, 등급, 적립금)
values ('tomato', '정은심', 36, 'gold', 4000);



# 부속 질의문을 이용한 데이터 삽입 (ex)회원 등급 분류)

create table 한빛제품(
	제품명 varchar(100),
    재고량 varchar(100),
    단가 int
);

insert into 한빛제품(제품명, 재고량, 단가)
select 제품명, 재고량, 단가
from 제품
where 제조업체 = '한빛제과';

