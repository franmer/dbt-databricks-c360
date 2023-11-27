{{
 config(materialized = 'table', file_format = 'delta', schema = "jb")
}}

select 
  platform,
  count(event_id) as cnt
from dbdemos.dbt_c360_bronze_orders
group by 
  platform