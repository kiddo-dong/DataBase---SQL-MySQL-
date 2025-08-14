select * from 제품;

# 7-40
select 제품명, 단가
from 제품
where 제조업체 = ( select 제조업체
	from 제품
    where 제품명 = '달콤비스킷'
);

select * from 고객;

# 7-41
select 고객이름, 적립금
from 고객
where 적립금 = (
	select max(적립금)
	from 고객
);

select * from 제품;

#7-42
select 제품명, 제조업체
from 제품
where 제품번호 in (
	select 주문제품
    from 주문
    where 주문고객 = 'banana'
);

# 7-42 join으로
select p.제품명, p.제조업체
from 제품 p
join 주문 o on p.제품번호 = o.주문제품
where o.주문고객 = 'banana';


#7-43
select 제품명, 제조업체
from 제품
where 제품번호 not in(
	select 주문제품
    from 주문
    where 주문고객 = 'banana'
);

# 7-43 join 절
select p.제품명, p.제조업체
from 제품 p
left join 주문 o on p.제품번호 = o.주문제품 and o.주문고객 = 'banana'
where o.주문고객 is null;


select * from 제품;

#7-44
select 제품명, 단가, 제조업체
from 제품
where 단가 > all (
	select 단가
	from 제품
    where 제조업체 = '대한식품'
);
# 서브쿼리 연산자 all을 이용해 서브쿼리의 검색 대상을 모두 검색

#7-45
select 고객이름
from 고객
where exists(
	select *
	from 주문
	where 주문일자 = '2022-03-15' and 주문.주문고객 = 고객.고객아이디
);

# 서브 쿼리 복습
# 7-42
select 제품명, 제조업체
from  제품
where 제품번호 = (
	select 주문제품
    from 주문
    where 주문고객 = 'banana'
);

# 7-43
select 제품명, 제조업체
from 제품
where 제품번호 not in (
	select 주문제품
    from 주문
    where 주문고객 = 'banana'
);

# 7-44
select 제품명, 단가, 제조업체
from 제품
where 단가 > all (
	select 단가
    from 제품
    where 제조업체 = '대한식품'
);

# 7-45
select 고객이름
from 고객
where exists (
	select *
    from 주문
    where 주문일자 = '2022-03-15'
    and 고객.고객아이디 = 주문.주문고객
);


