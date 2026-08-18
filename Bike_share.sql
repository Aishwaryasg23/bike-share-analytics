
Create database bike_data;

use bike_data;

create view bike_data as 
with CTE as (
SELECT * FROM bike_share_yr_0
union all
SELECT * FROM bike_share_yr_1
)

select dteday, season,a.yr, weekday, hr, rider_type, riders, price, COGS, riders*price as revenue,
riders*price - COGS as profit
 from CTE a
left join cost_table b
on a.yr=b.yr;


alter view bike_data as 
with CTE as (
SELECT * FROM bike_share_yr_0
union all
SELECT * FROM bike_share_yr_1
)
select dteday, mnth, season,a.yr, weekday, hr, rider_type, riders, price, COGS, riders*price as revenue,
riders*price - (COGS*riders) as profit
 from CTE a
left join cost_table b
on a.yr=b.yr;


# total records
select count(*) as total_records from bike_data;

# KPI Analysis

# Total riders
select sum(riders) as Rider_count from bike_data;

#Total revenue
select round(sum(revenue),2) as TotalRevenue from bike_data;

#Revenue by year
select yr as year, round(sum(revenue),2) as total_revenue, 
round(sum(profit),2) as TotalProfit
from bike_data
group by yr;

#Monthly Revenue
select season as Season, round(sum(revenue),2) as total_revenue, 
round(sum(profit),2) as TotalProfit
from bike_data
group by season
order by total_revenue desc;

#Rider type
SELECT
rider_type,
SUM(riders) Riders,
ROUND(SUM(revenue),2) Revenue
FROM bike_data
GROUP BY rider_type;

#Top 10 highest revenue day
select dteday, sum(revenue) from bike_data
group by dteday
order by dteday desc
limit 10;

#profit margin
select round(sum(profit)*100 /sum(revenue),2) as profitMargin
from bike_data;

#running revenue
SELECT
dteday,
SUM(revenue) Daily_Revenue,
SUM(SUM(revenue))
OVER(ORDER BY dteday) Running_Revenue
FROM bike_data
GROUP BY dteday;

SELECT
yr,
SUM(revenue) Revenue,
LAG(SUM(revenue))
OVER(ORDER BY yr) Previous_Year
FROM bike_data
GROUP BY yr;


SELECT
yr,
SUM(revenue) Revenue,
ROUND(
(
SUM(revenue)-LAG(SUM(revenue))
OVER(ORDER BY yr)
)
/
LAG(SUM(revenue))
OVER(ORDER BY yr)
*100,2
) Growth
FROM bike_data
GROUP BY yr;