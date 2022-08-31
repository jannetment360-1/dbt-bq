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
        ,Latitude
        ,Longitude
        ,ST_GeogPoint(Longitude,Latitude) as Location 
    from dbt-bq-361110.batchdata.Religious_Places
)

select * from transform_religious_org