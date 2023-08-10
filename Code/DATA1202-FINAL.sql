-- Displaying the fact and dimension table
select * from player_valuations;
select * from dimension_table;

-- Creating a view by joining fact and dimension table using 'player id' as primary key 
CREATE VIEW player AS
SELECT fact.player_id, fact.name, fact.market_value_in_eur, dimension.current_club_name, dimension.position
FROM  player_valuations fact
INNER JOIN  dimension_table dimension ON fact.player_id = dimension.player_id;

-- Displaying the new table
select * from player;

-- Which are the top 10 clubs by overall market value taken the sum of each club's players? 
select current_club_name, sum(market_value_in_eur) as total_market_value from player group by current_club_name order by total_market_value desc limit 10;