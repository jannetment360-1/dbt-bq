{{ config(materialized='table') }}

with transform_child_care_centre as (

    select 
         Name
        ,Categories
        ,Address
        ,City
        ,State
        ,CAST(Postcode as INT)
        ,Phone
        ,Fax
        ,Latitude
        ,Longitude
        ,ST_GeogPoint(Longitude,Latitude) as Location 
    from dbt-bq-361110.batchdata.ChildCareCentres
)

select * from transform_child_care_centre