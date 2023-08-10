# Football_Players_Valuation
# Data 1202-Final Assignment
Displaying the fact and dimension table
```sql
select * from player_valuations;
select * from dimension_table;
```

Creating a view by joining fact and dimension table using 'player id' as primary key 
```sql
CREATE VIEW player AS
SELECT fact.player_id, fact.name, fact.market_value_in_eur, dimension.current_club_name, dimension.position
FROM  player_valuations fact
INNER JOIN  dimension_table dimension ON fact.player_id = dimension.player_id;
```

Displaying the new table
```SQL
select * from player;
```