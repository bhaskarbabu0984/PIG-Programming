--loading only first 2 fileds from nyse-daily file. Rest fileds are discarded.
daily = load 'NYSE_daily' as (exchange, stock);

--group by stock
grpd  = group daily by stock;
dump grpd;

cnt   = foreach grpd generate group, COUNT(daily);
dump cnt;

