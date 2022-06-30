With hotels as (
Select * From dbo.['2018$']
Union
Select * From dbo.['2019$']
Union
Select * From dbo.['2020$'])



Select * From hotels
Left Join dbo.market_segment$
On hotels.market_segment = market_segment$.market_segment
Left JOIN dbo.meal_cost$
On hotels.meal = dbo.meal_cost$.meal;