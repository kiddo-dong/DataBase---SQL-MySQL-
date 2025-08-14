select distinct 제조업체
from 제품;

select 제품명, 단가 as 가격
from 제품;

select 제품명, 단가 + 500
from 제품;

select 제품명, 재고량, 단가
from 제품
where 제조업체 = "한빛제과";

select 주문제품, 수량, 주문일자
from 주문
where 수량 >= "15" and 주문고객 = "apple";

select 주문제품, 수량, 주문일자, 주문고객
from 주문
where 주문고객 = "apple" or 수량 >= 15;

select 제품명, 단가, 제조업체
from 제품
where 단가 >=2000 and 단가<=3000;

select 고객이름, 나이, 등급, 적립금
from 고객
where 고객이름 like '김%';

select 고객아이디, 고객이름, 등급
from 고객
where 고객아이디 like'_____';

select 고객이름 AS 고객명
from 고객
where 고객이름 like '%화%';

select 고객이름
from 고객
where 나이 is null;

select 고객이름
from 고객
where 나이 is not null;

select 주문고객, 주문제품,수량,주문일자
from 주문
where 수량>=10
order by 주문제품 asc, 수량 desc;

# 집계함수 (runtime data manager)
# 집계함수로 나온 결과가 ER모델에서 말하는 유도 속성임.
select avg(단가)
from 제품;

select sum(재고량) as 재고량합계
from 제품
where 제조업체 = '한빛제과';

select count(*)
from 고객;

select count(distinct 제조업체)
from 제품;

select *
from 제품
where 단가 = (select max(단가) from 제품);

select *
from 제품
where 재고량 = (select max(재고량) from 제품);

select avg(단가) AS 평균단가
from 제품;

