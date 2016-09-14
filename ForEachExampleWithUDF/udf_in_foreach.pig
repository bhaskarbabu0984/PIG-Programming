divs  = load 'NYSE_dividends' as (exchange, symbol, date, dividends);
dump divs;


--make sure all strings are upper case
upped = foreach divs generate UPPER(symbol) as symbol, dividends;
grpd  = group upped by symbol;   --output a bag upped for each value of symbol
dump grpd;

--take a bag of integers, produce one result for each group
sums  = foreach grpd generate group, SUM(upped.dividends);
dump sums;