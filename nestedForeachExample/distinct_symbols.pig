--find the number of unique stock symbols for each exchange in the NYSE_daily data:
daily    = load 'NYSE_daily' as (exchange, symbol); -- not interested in other fields
grpd     = group daily by exchange;
uniqcnt  = foreach grpd {
		   sym      = daily.symbol;
		   uniq_sym = distinct sym;
		   generate group, COUNT(uniq_sym);
};
dump uniqcnt;

