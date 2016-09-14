/*Note that for all operators except order, Pig does not guarantee the order in which records are produced.
Thus, because NYSE_dividends has more than 10 records, the example script could return different results every time.
Putting an order immediately before the limit will guarantee that the same results are returned every time. */

divs    = load 'NYSE_dividends';
first10 = limit divs 10;