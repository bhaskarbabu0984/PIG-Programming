daily = load 'NYSE_daily' as (exchange, stock);
grpd  = group daily by stock;
store grpd into 'by_group';
