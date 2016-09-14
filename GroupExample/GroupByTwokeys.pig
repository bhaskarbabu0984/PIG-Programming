daily = load 'NYSE_daily' as (exchange, stock, date, dividends);
grpd  = group daily by (exchange, stock);
avg   = foreach grpd generate group, AVG(daily.dividends);

dump avg;

describe grpd;
--grpd: {group: (exchange: bytearray,stock: bytearray),daily: {(exchange: bytearray,stock: bytearray,date: bytearray,dividends: bytearray)}}

