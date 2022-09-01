{{ config(materialized='table') }}

with transform_hospitals as (

    select 
         Name
        ,Categories
        ,Address
        ,City
        ,State
        ,CAST(Postcode as INT) as Postcode
        ,Phone
        ,Latitude
        ,Longitude
        ,ST_GeogPoint(Longitude,Latitude) as Location 
    from dbt-bq-361110.batchdata.Hospitals
)

select * from transform_hospitals