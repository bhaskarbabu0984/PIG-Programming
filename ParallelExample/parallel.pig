/* parallel will cause the MapReduce job spawned by Pig to have 10 reducers. 
parallel clauses apply only to the statement to which they are attached; 
they do not carry through the script */

daily   = load 'NYSE_daily' as (exchange, symbol, date, open, high, low, close,
            volume, adj_close);
bysymbl = group daily by symbol parallel 10;

--setting parallel for order again as parallel only works for that particular relation
average = foreach bysymbl generate group, AVG(daily.close) as avg;
sorted  = order average by avg desc parallel 2;