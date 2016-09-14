---find total number of stocks in today's file
daily = load 'NYSE_daily' as (exchange, stock);

--group by all fields from 'daily' relation
grpd  = group daily all;
cnt   = foreach grpd generate COUNT(daily);
dump cnt;

