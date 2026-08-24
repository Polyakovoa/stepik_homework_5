{{
  config(
    materialized='table'
  )
}}

select
  processor_brand,
  sum(combination_count) as total_usage
from {{ ref('int__smartphones_combination') }}
group by processor_brand
order by total_usage desc
limit 10