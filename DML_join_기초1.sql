#기본 join
# 암시적 join
select 제품.제품명
from 제품, 주문
where 주문.주문고객 = 'banana' and 제품.제품번호 = 주문.주문제품;

# 가장 현대적
# 가독성 및 유지보수에 용이
# 명시적 join (join on 절 사용)
select 제품.제품명
from 제품
join 주문 on 제품.제품번호 = 주문.주문제품
where 주문.주문고객 = 'banana';

# inner join (default join)
select 제품.제품명
from 제품
inner join 주문 on 제품.제품번호 = 주문.주문제품
where 주문.주문고객 = 'banana';

# 7-38
# 암시적 join
select 고객.고객아이디, 주문.주문제품, 주문.주문일자
from 고객, 주문
where 고객.나이 >= 30 and 고객.고객아이디 = 주문.주문고객;

# 명시적 join
select 고객.고객아이디, 주문.주문제품, 주문.주문일자
from 주문
join 고객 on 주문.주문고객 = 고객.고객아이디
where 고객.나이 >= 30;
# order by 주문일자 desc;

# 테이블명 축소
select c.고객아이디, o.주문제품, o.주문일자
from 주문 o
join 고객 c on o.주문고객 = c.고객아이디
where c.나이 >= 30;

# gpt join 기본 문제1
#1
select c.name as 고객이름, o.product_name as 상품명
from customer c
join orders o on c.customer_id = o.customer_id;

#2
select o.order_id as 주문ID , o.product_name as 상품명
from costomer c
join orders o on c.customer_id = o.customer_id
where c.age >= 30;

#3
select c.name as 고객이름, sum(o.quantity) as 총주문수량
from costomer c
join orders o on c.customer_id = o.customer_id
group by c.name;




