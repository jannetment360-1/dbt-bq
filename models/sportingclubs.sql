{{ config(materialized='table') }}

with transform_sportingclubs as (

    select 
         Categories
        ,Name
        ,Address
        ,City
        ,State
        ,Postcode
        ,Phone
        ,Website
        ,Email
        ,Latitude
        ,Longitude
        ,ST_GeogPoint(Longitude,Latitude) as Location 
    from dbt-bq-361110.batchdata.SportingClubs
)

select * from transform_sportingclubs