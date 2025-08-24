

create table df_orders(
[order_id] int primary key
,[order_date] date
, [ship_mode] varchar(20)
,[segment] varchar(20)
, [country] varchar(20)
,[city] varchar(20)
, [state] varchar(20)
,[postal_code] varchar(20)
, [region] varchar(20)
,[category] varchar(20)
,[sub_category] varchar(20)
, [product_id] varchar(50)
, [quantity] int
, [discount] decimal(7,2) 
,[sale_price] decimal(7,2)
,[profit] decimal(7,2))




-- Top 10 Products which are generating highest Revenue
---------------------------------------------------------
  
select top 10 product_id,sum(sale_price) as sales
from df_orders
group by product_id
order by sales desc

-- Top 5 Highest Selling products in each region
  ----------------------------------------------------

with cte as(
select region,product_id,sum(sale_price) as sales
from df_orders 
group by region,product_id)

select * from(
select *,row_number() over(partition by region order by sales desc) as rn
from cte) a
where rn<= 5

-- month over month sales comparison for 2022 and 2023
  ---------------------------------------------------------

with cte as(
select year(order_date) as order_year,month(order_date) as order_month,
sum(sale_price) as sales
from df_orders
group by year(order_date),month(order_date))

select order_month,
sum(case when order_year = 2022 then sales end) as sales_2022,
sum(case when order_year = 2023 then sales end) as sales_2023
from cte
group by order_month
order by order_month

-- for each category which month has highest sales
  ----------------------------------------------------
  
with cte as(
select category, format(order_date,'yyyy-MM') as order_month, sum(sale_price) as total_Sales
from df_orders
group by category,format(order_date,'yyyy-MM'))

select category,order_month,total_sales
from(
select *,ROW_NUMBER() over(partition by category order by total_sales desc) as rn
from cte) a
where rn = 1

-- subcategory had highest profit growth in 2023 compared to 2022
  -----------------------------------------------------------------

  
with cte as(
select sub_category,year(order_date) as order_year,sum(sale_price) as total_sales
from df_orders
group by sub_category,year(order_date))
,cte1 as(
select sub_category,
sum(case when order_year = 2022 then total_sales end) as sales_2022,
sum(case when order_year = 2023 then total_sales end) as sales_2023
from cte 
group by sub_category)

select top 1 *,(sales_2023-sales_2022)/sales_2022 as a_profit
from cte1

order by a_profit desc
