-- 고객 테이블
CREATE TABLE customer (
  customer_id BIGINT PRIMARY KEY,
  name VARCHAR(50)
);

-- 주문 테이블
CREATE TABLE orders (
  order_id BIGINT PRIMARY KEY,
  customer_id BIGINT,
  product_name VARCHAR(100),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

#1
select c.name as 고객이름, o.product_name as 주문상품
from customer c
join orders o on c.customer_id = o.customer_id;

#2
select c.name as 고객이름, o.product_name as 주문상품
from customer c
left join orders o on c.customer_id = o.customer_id;

#3
select o.*
from orders o
right join customer c on o.customer_id = c.customer_id;

#4
select c.name as 고객이름, count(o.order_id) as 총주문개수 
from customer c
left join orders o on c.customer_id = o.customer_id
group by c.name;