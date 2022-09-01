{{ config(materialized='table') }}

with transform_schools as (

    select 
         Name
        ,Categories
        ,Address
        ,City
        ,State
        ,CAST(Postcode as INT)
        ,Phone
        ,Website
        ,Email
        ,Latitude
        ,Longitude
        ,ST_GeogPoint(Longitude,Latitude) as Location 
    from dbt-bq-361110.batchdata.Schools
)

select * from transform_schools