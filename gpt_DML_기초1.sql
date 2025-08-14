SELECT * FROM sqlexample.고객;

select 제조업체, count(*) as 제품수, max(단가) as 최고가
from 제품
group by 제조업체 having count(*) >= 3;

select 등급, count(*) as 고객수, avg(적립금) as 적립금평균
from 고객
group by 등급 having avg(적립금) >= 1000;

select 주문제품, 주문고객, sum(수량) as 총주문수량
from 주문
group by 주문제품, 주문고객;

select product_name as 상품명, count(*)as 총판매수량
from orders
group by product_name;

select product_name as 상품, customer as 고객, avg(quantity) as 평균수량, count(*) as 구매건수
from orders
group by product_name, customer;


# 1
select customer as 고객,
	sum(quantity * unit_price) as 총금액
from orders
group by customer;

#2
SELECT product, customer, avg_quantity
FROM (
  SELECT product, customer, AVG(quantity) AS avg_quantity
  FROM orders
  GROUP BY product, customer
) AS sub
WHERE (product, avg_quantity) IN (
  SELECT product, MAX(avg_quantity)
  FROM (
    SELECT product, customer, AVG(quantity) AS avg_quantity
    FROM orders
    GROUP BY product, customer
  ) AS temp
  GROUP BY product
);


#3
select product, customer, count(*) as 주문횟수
from orders
group by product, customer
order by count(*) desc;

#4
# logical error

#5
# distinct


#1
select customer, sum(quantity * unit_price)
from orders
group by customer having sum(quantity * unit_price) >= 10000;

#2
select  product as 제품, costomer as 고객, max(avg(quantity)) as 평균주문수량
from orders
group by product having max(avg(quantity));

#3
select customer,
	count(*) as order_count,
	sum(quanrity) as total_quantity,
	sum(unit_price *quantity) as total_price
from orders
group by customer
order by total_price desc;


#1
select name as 이름
from customer
where name = '동현';

#2
select order_id as 주문번호, customer as 고객, quantity as 수량
from orders
where quantity >=5 ;

#3
select name as 이름, price as 가격
from products
where price = (select max(price) from products);

#4
select customer as 고객, sum(quantity) as 총수량
from orders
group by customer having sum(수량) >= 20;

#5
select category as 카테고리, avg(price) as 평균가격
from products
group by category
order by 평균가격 desc;