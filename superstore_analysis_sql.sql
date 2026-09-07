create database retail;
USE retail_db;

CREATE TABLE store (
    `Row ID` INT,
    `Order ID` VARCHAR(20),
    `Order Date` DATE,
    `Ship Date` DATE,
    `Ship Mode` VARCHAR(30),
    `Customer ID` VARCHAR(20),
    `Customer Name` VARCHAR(100),
    Segment VARCHAR(30),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Region VARCHAR(20),
    `Product ID` VARCHAR(30),
    Category VARCHAR(30),
    `Sub-Category` VARCHAR(30),
    `Product Name` VARCHAR(200),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2),
    Profit DECIMAL(10,2)
);
select * from store limit 1000;
select count(*) as total_records from store;
select * from store;
select 'Order ID',sales,profit from store;
select * from store where region ="west";
select * from store where sales<1000;
select * from store where category="furniture";
select 'Order ID',sales from store order by sales desc;
select 'Order ID',Profit from store order by profit asc;
select * from store  limit 20;
select * from store;
select 'Customer Name','sales','region' from store;
select * from store where region ="east";
select * from store where sales >500;
select * from store profit order by profit desc limit 5;
select 'Customer ID','sales',region from store;
select * from store  order by profit desc limit 5;
select * from store where region ="south" and category="furniture" order by sales desc;
select * from store where region="east"and category="technology";
select *from store where region ="east" and category="office supplies";
select * from store where sales>1000 and profit >100;
select 'Customer ID','Order ID',sales from store where region='south'and sales>2000 order by sales desc;
select * from store order by sales desc;
select * from store order by  profit asc;
select * from store limit 20;
select * from store order by profit desc limit 20;
select 'Customer ID',sales from store order by sales desc limit 10;
select distinct region from store;
select distinct category from store;
select 'Order ID',region,profit from store where region='west' order by profit desc limit 5;
select * from store order by profit desc limit 3;
select distinct category from store;
select * from store order by sales asc limit 5;
select 'Customer Name',region,sales from store where region='west' order by sales desc limit 10;
select distinct 'ship mode' from store;
select * from store;
select sum(sales)from store;
select avg(profit) from store;
select max(sales)from store;
select min(profit) from store;
select count(*) from store;
select region,sum(sales) from store group by region;
select region,sum(sales) as total_sales from store group by region;
select category,avg(profit) as average_profit from store group by category;
select segment,max(sales) as maximum_sales from store group by segment;
select 'Ship Mode',count(*)as total_orders from store group by 'ship Mode';
select region,category,sum(profit)as total_profit from store group by region,category;
select category,sum(sales) as total_sales from store group by category;
select region,avg(sales) as average_sales from store group by region;
select segment,min(profit) as minimum_profit from store group by segment;
select category,count(*) as total_orders from store group by category;
select region,segment,max(profit) as maximum_profit from store group by region,segment;
select region,sum(sales) as total_sales from store group by region order by total_sales asc;
select region,sum(sales) as total_sales from store group by region order by total_sales desc limit 2;
select'Order ID','Customer Name',sales from store where region='west' and sales>2000;
select distinct `ship Mode` from store;
select`Customer Name`,sales from store order by sales asc limit 5;
select category,sum(sales) as total_sales from store group by category;
select region,avg(profit) as average_profit from store group by region order by average_profit desc;
select segment,count(*) total_orders from store group by segment;
select region,category,max(profit) as maximum_profit from store group by region,category;
select`Customer Name`,sales from store order by sales desc limit 3;
select region,sum(sales) as total_sales from store group by region having sum(sales)>100000;
select max(sales) as maximum_sales,
min(sales) as minimum_sales,
avg(sales) as average_sales,
count(*) as total_orders from store;
select region,sum(sales) as total_sales from store group by region having sum(sales)>100000;
select * from store where`Customer Name`like "S%";
select * from store where `Customer Name` like "%s";
select * from store where `Customer name` like "%mm%";
select * from store where profit between 1500 and 2500;
select * from store where sales between 500 and 1000;
select * from store where region in("west","east");
select * from store where region not in("west","east");
select * from store where `customer name` like"a%";
select category,sum(sales) as total_sales from store group by category having sum(sales)>200000;
select * from store where `customer name` like"%a%";
select category,avg(profit) as average_profit from store group by category having avg(profit)>100;
select avg(sales) as average_sales from store;
select * from store where sales>234.418;
select * from store where profit>( select max(profit) from store);
select * from store where profit >(select avg(profit) from store);
select max(profit) as maximum_profit from store;
select * from store where profit>8399.976;
select * from store where sales =(select max(sales) from store);
select max(sales) as maximum_sales from store;
select * from store where sales=22638.48;
select * from store where profit < (select avg(profit) from store where region="west");
select * from store where profit< (select avg(profit) from store );
select * from store where sales=(select min(sales) from store);
select * from store where discount=(select max(discount) from store);
select * from store where sales >(select avg(sales) from store where region="east");
select * from store where category="office supplies" and profit>(select min(profit) from store where category="office supplies");
select avg(quantity) as avg_qunatity from store;
select * from store where quantity>(select avg(quantity) from store);
select * from store where category="technology" and profit=(select max(profit) from store where category="technology");
select * from store where region="south" and sales>(select min(sales) from store where region="south");
select * from store where region=(select region from store where sales=(select max(profit) from store));
select count(*) from store where `Order Date` is not null;
select `Customer name`,sales,case
when sales<1000 then"low"
when sales<2000 then "medium"
when sales>2500 then "high" end as sales_category from store;
select * from store;
select *,case when sales>=2000 then "excllent"
when sales>=1500 then "medium"
when sales>1000 then "low" else "very low"end as sales_category from store;
select *,case when profit>=500 then"High profit"
when profit>=200 then "Medium Profit"
when profit>0 then "Low Profit"
when profit<=0 then "Low" end as Profit_category from store;
select *,case when Sales > 3000 then "A"
when sales between 2000 and 2999 then "B"
 else "C" end as sales_category from store;
 select *,case when discount>=0.50 then "High"
 when discount between 0.20 and 0.49 then "medium"
 when discount<0.20 then "low" end as discount_category from store;
SELECT *,
CASE
    WHEN `Ship Mode` = 'Same Day' THEN 'Urgent'
    WHEN `Ship Mode` = 'First Class' THEN 'Fast'
    WHEN `Ship Mode` = 'Standard Class' THEN 'Normal'
    ELSE 'Economy'
END AS shipping_priority
FROM store;

select *, case when profit>500 then"excllent"
when profit between 1 and 500 then"profit"
when profit=0 then"breakeven"
when profit<0 then"loss" end as profit_detail from store;
select *, case when sales>=2000 and profit>=300 then"top"
when sales>=1000 and profit>=100 then "good"
when profit<=0 then"risk" else "ecomomy" end as "profit&sales" from store;
select *, case when sales>=2000 and profit>=300 then "Top"
when sales>=1000 and profit>=100 then "Good"
when profit<=0 then "Risk" else "average" end as sales_profit from store;
select year(str_to_date(`order date`,'%d/%m/%Y')) as year,
	   month(str_to_date(`order date`,'%d/%m/%Y')) as month,
       day(str_to_date(`order date`,'%d/%m/%Y')) as day from store;
select `order date`,`ship date`,datediff(`ship date`,`order date`) as days_taken from store;
select
`order date`,date_add(str_to_date(`order date`,'%d/%m/%Y'), interval 10 day) as new_day from store;
select
`order date`,subdate(str_to_date(`order date`,'%d/%m/%Y'), interval 10 day)as prevoius_day from store;
select `order date`,year(str_to_date(`order date`,'%d/%m/%Y')) as year_data from store;
select `order date`,month(str_to_date(`order date`,'%d/%m/%Y')) as month_data from store;
select `order date`,day(str_to_date(`order date`,'%d/%m/%Y'))as day_data from store;
select `order date`,`ship date`, datediff(`ship date`,`order date`)as date_diff from store;
select `order date`,date_add(str_to_date(`order date`,'%d/%m/%Y'), interval 15 day) as new_days from store;
select `order date`,date_sub(str_to_date(`order date`,'%d/%m/%Y'), interval 10 day)as prevoius_day from store;
select `order date`,year(str_to_date(`order date`,'%d/%m/%Y'))as year_data,
                     month(str_to_date(`order date`,'%d/%m/%Y'))as month_data,
                     day(str_to_date(`order date`,'%d/%m/%Y'))as day_data from store;
select `order date`,`ship date`,datediff(`ship date`,`order date`)as shipping_days from store where datediff(`ship date`,`order date`)>10;
SELECT`Order Date`,`Customer Name`,DATE_ADD(STR_TO_DATE(`Order Date`, '%d/%m/%Y'),INTERVAL 30 DAY) AS expected_date FROM store;
select `customer name`,region from store where region="east"
union
select `customer name`,region from store where region="west";
select `customer name`,region from store where region="north"
union all
select `customer name`,region from store where region="south";
select category,sum(sales) as total_sales from store group by category;
select category,avg(profit) as avg_profit from store group by category;
select category,max(profit) as max_profit from store group by category;
select category,min(profit) as min_profit from store group by category;
select category,count(*)as total_orders from store group by category;
select category,sum(sales) as total_sales from store group by category having total_sales>100000;
select region,avg(profit) as avg_profit from store group by region having avg_profit>10;
select category,sum(sales) as total_sales,avg(profit) as avg_profit,max(profit) as max_profit,min(profit) as min_profit from store group by category;
select region,sum(sales) as total_sales from store group by region having total_sales >500000;
select segment,sum(sales) as total_sales,avg(profit) as avg_profit from store group by segment;
select distinct category from store where category="technology" and profit>100 and sales>1000;
select * from store where category="furniture" and profit<=0;
select * from store where sales> 500 and profit>0;
select * from store where category="technology"or category="furniture";
select * from store where category in("technology","furniture","office suppiles" )and sales>1000;
select * from store where category="technology" order by sales desc limit 20;
select * from store where profit < 0 order by profit asc ;
select category,sum(sales)as total_sales from store group by category order by total_sales desc;
select region,avg(profit) as avg_profit from store group by region order by avg_profit desc;
select segment,sum(sales) as total_sales from store group by segment having total_sales>500000 order by total_sales desc;
select * , case when profit> 500 then "high"
                when profit between 100 and 500 then "medium"
                when profit >0 then "low"
                when profit<=0 then "loss" end as profit_categoy from store;

select sales,case when sales>=2000 then  "excllent"      
                  when sales>=1000 then "good"
                  when sales>0 then "low"
                  when sales<=0 then "no sales" end as sales_category from store;
                  
select region,sum(sales)as total_sales,avg(profit) as avg_profit from store group by region having avg_profit>100 order by total_sales desc;	
select `order date`,year(str_to_date(`order date`,'%m/%d/%Y'))as oder_year,month(str_to_date (`order date`,'%m/%d/%Y'))as mth_date from store;	
select `ship date`,year(str_to_date(`ship date`,'%m/%d/%Y')) as ship_year,month(str_to_date(`ship date`,'%m/%d/%Y')) as month_ship from store;	
select `order date`,monthname(str_to_date(`order date`,'%m/%d/%Y'))as month_name from store;
select `order date`,dayname(str_to_date(`order date`,'%m/%d/%Y'))as day_name from store;
select `order date`,quarter(str_to_date(`order date`,'%m/%d/%Y')) as quator_data from store;
select max(sales) as max_sales from store;
select avg(profit) as avg_profit from store;
select category,sum(sales)as total_sales from store group by category;
select region,avg(profit) as avg_profit from store group by region;
select profit, case when profit >500 then "high"
                when profit between 1 and 500 then "medium"
                when profit<=0 then "loss" end as profit_category from store;
select * from store where sales>=2000 and profit>=300;                
select `order date`,year(str_to_date(`order date`,'%m/%d/%Y')) as year_data from store;
select `order date`,monthname(str_to_date(`order date`,'%m/%d/%Y'))as mont_name from store;
select `order date`,dayname(str_to_date(`order date`,'%m/%d/%Y')) as day_name from store;
select `ship date`,`order date`,datediff(str_to_date(`ship date`,'%m/%d/%Y'),str_to_date(`order date`,'%d/%m/%Y')) as day_data from store where datediff(str_to_date(`ship date`,'%m/%d/%Y'),str_to_date(`order date`,'%d/%m/%Y'))<5;
select `order date`,quarter(str_to_date(`order date`,'%m/%d/%y')) as quator_data from store;
select region,max(profit) as max_profit from store group by region;
select category,min(sales) as min_sales from store group by category;
select `customer name`,upper(`customer name`)as cus_name from store;
select `customer name`,lower(`customer name`) as cus_name from store;
select `customer name`,length(`customer name`)as length_name from store;
select `customer name`,left(`customer name`,5)as left_name from store;
select `customer name`,right(`customer name`,5)as left_name from store;
select `customer name`,upper(`customer name`) as up_name from store;
select`customer name`,lower(`customer name`) as low_name from store;
select `customer name`,length(`customer name`)as len_name from store;
select `customer name`,left(`customer name`,4) as left_name from store;
select `customer name`,right(`customer name`,3)as last_name from store;
select `customer name`,left(`customer name`,locate(' ',`customer name`)-1)as first_name from store;
select`customer name`,substring_index(`customer name`,' ',-1)as last_name from store;
select *, row_number () over(order by sales desc) as row_num from store;
select *,rank() over(order by sales desc) as rnk from store;
select*,dense_rank() over(order by sales desc) as den_rank from store;
select *,lag(sales,3) over(order by sales desc ) as laggg from store;
select *,lead(sales,2)over (order by sales desc )as ledd from store;
select region,`customer name`,row_number() over (order by sales desc) as row_sales,
		rank() over (order by sales desc) as rank_sales,
        dense_rank() over(order by sales desc)as dense_sales,
        lag(sales,2) over (order by sales desc)as laggg_sales,
        lead(sales,2)over (order by sales desc)as lead_sales from store;
select `category`,`customer name`,`sales`,row_number() over(partition by category order by sales desc) as row_num from store;        
select `customer name`,`category`,sales,rank() over (partition by category order by sales  desc) as rnkk from store;
select `category`,`customer name`,profit, dense_rank() over (partition by category order by profit desc) as den_rank from store;
select * from (select category,`customer name`,sales,dense_rank() over (partition by category order by sales desc)as den_rank from store) as tt where den_rank<=3;
select * from(select category,`customer name`,sales,dense_rank() over(partition by category order by sales desc) as den_rank from store) as ss where den_rank=2;
select `customer name`,sales,region,lag(sales) over (partition by region order by sales asc) as laggg from store;
select `customer name`,sales ,region,lead(sales) over (partition by region order by sales asc) as leddd from store;
select `customer name`,sales,region,sum(sales) over (partition by region order by sales asc) as total_sales from store;
with sales_cte as (
select * from store
)
select * from sales_cte where sales< 1000;
with sales_cte as (
select `customer name`,sales,region from store where sales <500
)
select * from sales_cte;

with region_cte as(
select `customer name`,sales,region  from store where region="West"
)
select * from region_cte;

with technology_cte as(
select `customer name`,category,sales from store where Category="technology"
)
select * from technology_cte;
with category_cte as(
select `customer name`,category,sales,profit from store where category="furniture" and sales>1000
)
select * from category_cte;

with region_cte as (
select `customer name`,region,sales from store where region="south"
)
select * from region_cte order by sales desc;

with cte as (
select `customer name`,region,sales,profit from store where region="west" and profit >200
)
select * from cte order by sales asc;

with cte as (
select region,sum(sales)as total_sales from store group by region
)
select * from cte;

with cte as (
select category,sum(sales) as total_sales,avg(sales) as average_sales from store group by category
)
select * from cte ;
with cte as (
select region,max(sales) as maximum_sales,min(sales) as minimum_sales from store group by region
)
select * from cte;

with cte as(
select category,sum(profit) as profit_sales from store group by category having sum(profit)>10000
) 
select * from cte;
with cte as (
select category,sales from store where category="technology" and sales > 500
)
select * from cte;

with cte as (
select `customer name`,region,profit from store where region="west"
)
select * from cte where profit>100;
with cte as (
select `customer name`,category,sales,profit from store where sales > 500 and profit >50
)
select * from cte;
with cte as (
select `customer name`,category,sales,profit from store where sales > 500 
)
select * from cte where profit >50;

with cte as (
select region,sum(sales) as total_sales from store group by region
)
select * from cte where total_sales >100000;
select `customer name`,sales from store where sales > (select avg(sales) from store);
select `customer name`,sales from store where sales =(select max(sales) from store);
select `customer name`,sales from store where sales =(select min(sales) from store);
select `customer name`,sales from store where sales>(select min(sales) from store);
select `customer name`,sales from store where sales>(select avg(sales) from store);
select `customer name`,sales from store where category="technology" and sales =(select max(sales) from store  where category="technology");
select `customer name`,sales from store where category="furniture" and sales=(select max(sales) from store where category="furniture");
select `customer name`,sales from store where category="office supplies" and sales=(select min(sales) from store where category="office supplies");
select `customer name`,sales from store where category="technology" and sales >(select avg(sales) from store where category="technology");
select `customer name`,sales from store where category="furniture" and sales<(select avg(sales) from store where category="furniture");
select `customer name`,sales from store where region="west" and sales=(select max(sales) from store where region="west");
select `customer name`,sales from store where region="west" and sales=(select min(sales) from store where region="west");
select `customer name`,sales from store where region="south" and sales=(select max(sales) from store where region="south");
select `customer name`,sales from store where region="south" and sales<(select avg(sales) from store where region="south");
select `customer name`,sales from store where region="central" and sales =(select max(sales) from store where region="central");
select `customer name`,sales from store where region="central" and sales >(select avg(sales) from store where region="central");
select `customer name`,sales from store where region="east" and sales =(select max(sales) from store where region="east");
select `customer name`,sales from store where region ="central" and sales =(select max(sales) from store where region="central");
select `customer name`,sales from store where region="east" and sales> (select avg(sales) from store where region="east");
select `customer name`,profit from store where category="technology" and profit=(select max(profit) from store where category="technology");
select `customer name`,discount from store where segment="Consumer"and discount=(select min(discount) from store where segment="Consumer");
select `customer name`,sales from store where sales>(select avg(sales) from store);
create view sales_view as
select * from store;
select * from sales_view;
create view demo_view as
select `customer name`,sales, region from store;
select * from demo_view;
select * from demo_view where region="south";
select `customer name` from demo_view;
select sales,region from demo_view;
drop view sales_view;
drop view demo_view;
call all_customers;
drop procedure all_customer;
drop procedure customer_region;
select region,sum(sales) as total_sales from store group by region;
select region ,sum(sales) as total_sales from store  group by region having total_sales>10000;
select *, case when  sales>=1000 then "High"
                when sales >=500 then "medium"
                when sales<500 then "Low" end as sales_category from store;
select `customer name`,`order date`,monthname(str_to_date(`order date`,'%m/%d/%Y')) as month_name from store;
select `customer name`,sales from store where sales >(select avg(sales) from store );
select `customer name`,region,profit from store  where profit>(select avg(profit) from store);
select region,sales,dense_rank()over (partition by region order by sales desc) as top_sales from store;
with cte as(
select `customer name`,sales, region, dense_rank() over (partition by region order by sales desc) as total_sales from store )
select * from cte where total_sales<=3;
select `customer name`,sales,region,lag(sales) over (partition by region order by sales desc) as lagggg from store;
with cte as(
select region,sum(sales) as total_sales from store group by region)
select * from cte where total_sales>100000;
create view  high_view as
select `customer name`,sales ,profit,category from store where sales>1000;
select * from high_view;
drop view high_view;
create view profit_view as
select`customer name`,sales,profit from store;
select * from profit_view;
drop view profit_view;
create view sales_view as
select `customer name`,category,sales,profit from store;
select * from sales_view;
drop view sales_view;
create view profit_view as
select `customer name`,category,sales,profit from store where profit>500;
select * from profit_view;
DROP VIEW profit_view;
 create or replace view sales_view as
select `customer name`,category,sales,profit from store;
select * from sales_view;
create index idx_customer on store(`customer name`);
select `customer name` from store;
create index idx_sales on store(sales);
SHOW INDEX FROM store;
create index idx_category on store(`category`(50));
show index from store;
select `category` from store;
SELECT DISTINCT s1.`customer name`
FROM store s1
WHERE NOT EXISTS (
    SELECT 1
    FROM store s2
    WHERE s2.`customer name` = s1.`customer name`
      AND s2.profit > 500
);
select * from store where profit is null;
select * from store where profit is not null;
SELECT `customer name`, COALESCE(profit, 0) AS profit
FROM store;
SELECT `customer name`, IFNULL(profit, 0) AS profit
FROM store;
SELECT NULLIF(profit, 0)
FROM store;
select date_format(`order date`,'%m/%d/%Y') as order_date from store;
SELECT LAST_DAY(
    STR_TO_DATE(`order date`, '%Y-%m-%d')
) AS last_day
FROM store;
SELECT `order date`
FROM store
LIMIT 5;
SELECT TIMESTAMPDIFF(
    DAY,
    `order date`,
    `ship date`
) AS days_taken
FROM store;
SELECT `order date`, `ship date`
FROM store
LIMIT 5;
SELECT TIMESTAMPDIFF(
    DAY,
    STR_TO_DATE(`order date`, '%m/%d/%Y'),
    STR_TO_DATE(`ship date`, '%m/%d/%Y')
) AS days_taken
FROM store;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
    ON DELETE CASCADE
);
DELETE FROM customers
WHERE customer_id = 1;
CREATE TABLE customers_new (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TEMPORARY TABLE temp_sales AS
SELECT `customer name`, category, sales, profit
FROM store
WHERE sales > 1000;
SELECT * FROM temp_sales;
DROP TEMPORARY TABLE temp_sales;
CREATE TEMPORARY TABLE temp_profit AS
SELECT `customer name`, sales, profit
FROM store
WHERE profit > 500;
SELECT * FROM temp_profit;
SELECT `customer name`, profit
FROM temp_profit
WHERE profit > 1000;
CREATE EVENT delete_old_data
ON SCHEDULE EVERY 1 DAY
DO
DELETE FROM store
WHERE profit < 0;
SHOW VARIABLES LIKE 'event_scheduler';
CREATE EVENT test_event
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 MINUTE
DO
INSERT INTO temp_profit (`customer name`, sales, profit)
VALUES ('Test Customer', 1000, 600);
CREATE TABLE event_test (
    message VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE EVENT test_event
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 MINUTE
DO
INSERT INTO event_test (message)
VALUES ('Event executed successfully');
SHOW EVENTS LIKE 'test_event';
SELECT * FROM event_test;