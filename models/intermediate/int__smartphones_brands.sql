{{
  config(
    materialized='table'
  )
}}

select distinct
  brand_name
from {{ ref('stg__smartphones') }}
order by brand_name