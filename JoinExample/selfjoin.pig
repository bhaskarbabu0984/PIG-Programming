
-- For each stock, find all dividends that increased between two dates
--for self join, you must load the same table twice else will get an error
--note to use :: operator if fields of both relations have same name. 
divs1     = load 'NYSE_dividends' as (exchange:chararray, symbol:chararray,
                date:chararray, dividends);
divs2     = load 'NYSE_dividends' as (exchange:chararray, symbol:chararray,
                date:chararray, dividends);
jnd       = join divs1 by symbol, divs2 by symbol;
increased = filter jnd by divs1::date < divs2::date and
                divs1::dividends < divs2::dividends;