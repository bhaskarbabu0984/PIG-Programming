
daily = load 'NYSE_daily' as (exchange, symbol, date, open, high, low, close,
            volume, adj_close);
divs  = load 'NYSE_dividends' as (exchange, symbol, date, dividends);

--Left Outer Join
jndl   = join daily by (symbol, date) left outer, divs by (symbol, date);

dump jndl;


--Right Outer Join
jndr   = join daily by (symbol, date) right outer, divs by (symbol, date);

dump jnd;

--Full Join
jndf   = join daily by (symbol, date) right outer, divs by (symbol, date);

dump jnd;