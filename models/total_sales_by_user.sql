{{
 config(materialized = 'table', file_format = 'delta', schema = "jb")
}}

select 
  user_id,
  sum(`amount`) as amount 
from dbdemos.dbt_c360_bronze_orders
group by 
  user_id