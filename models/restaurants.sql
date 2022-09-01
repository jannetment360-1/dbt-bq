{{ config(materialized='table') }}

with transform_restaurants as (

    select 
         Name
        ,Categories
        ,Address
        ,City
        ,State
        ,CAST(Postcode as INT) as Postcode
        ,Phone
        ,Website
        ,Email
        ,Latitude
        ,Longitude
        ,ST_GeogPoint(Longitude,Latitude) as Location 
    from dbt-bq-361110.batchdata.Restaurants
)

select * from transform_restaurants