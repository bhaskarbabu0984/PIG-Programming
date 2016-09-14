--Set default parallel for the entre script using set operator.
--you can still add a parallel clause to any statement to override the default value.
set default_parallel 10;

daily   = load 'NYSE_daily' as (exchange, symbol, date, open, high, low, close,
            volume, adj_close);
            
bysymbl = group daily by symbol;
average = foreach bysymbl generate group, AVG(daily.close) as avg;
sorted  = order average by avg desc;