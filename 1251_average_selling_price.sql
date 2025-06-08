# Write your MySQL query statement below
select Prices.product_id , ifnull(round((sum(units*price)/sum(units)), 2),0) as average_price
from Prices
left join UnitsSold on Prices.product_id = UnitsSold.product_id
and UnitsSold.purchase_date between start_date and end_date
group by product_id;
