{{
    config(
        materialized='table'
    )
}}

select *
from p-dk-ah.dbt_bootcamp_raw.CUSTOMERS