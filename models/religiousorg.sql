{{ config(materialized='table') }}

with transform_religious_org as (

    select 
         Category
        ,Address
        ,Suburb
        ,State
        ,Postcode
        ,Phone
        ,Website
        ,Email
    from dbt-bq-361110.batchdata.ChurchesReligiousOrg
)

select * from transform_religious_org