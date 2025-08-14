-- insert 문제 기초

/*고객(Customer)
고객아이디(customer_id)	고객이름(name)	나이(age)	등급(grade)	적립금(point)
PK, 문자열	문자열	숫자	문자열	숫자

주문(Order)
주문번호(order_id)	주문고객(customer_id)	주문일자(order_date)	주문제품(product_id)	수량(quantity)
PK, 숫자	FK, 고객아이디	날짜	FK, 제품번호	숫자
*/

#1
insert into customer(name, grade, grade,point)
values ('동현', 30, 'gold', 5000);

#2
insert into orders(customer_id, order_date, product_id, quantity)
select customer_id, '2025-06-15', 'p001', 3
from customer
where name = '동현';

#3
insert into vip(customer_id, name)
select customer_id, name
from customer
where grade = 'VIP';