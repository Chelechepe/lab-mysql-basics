use bank;

-- Query 1
select client_id
	from client
    where district_id = 1
    order by client_id asc
    limit 5;

-- Query 2
select client_id 
	from client
    where district_id = 72
    order by client_id desc
    limit 1;

-- Query 3
select amount 
	from loan
    order by amount asc
    limit 3;

-- Query 4
select distinct status
	from loan
    order by status asc;

-- Query 5    
select loan_id 
	from loan
    order by payments asc
    limit 1;
    
-- Query 6
select account_id, amount
	from loan 
	order by account_id asc
    limit 5;
    
-- Query 7
select account_id
	from loan
    where duration = 60
    order by amount asc
    limit 5;
    
-- Query 8

select distinct k_symbol
	from `order`
    order by k_symbol asc;

-- Query 9

select order_id
	from `order`
    where account_id = 34;

-- Query 10

select distinct account_id
	from `order`
    where order_id >= 29540 and order_id < 29560;

-- Query 11

select sum(amount)
	from `order`
    where account_to = 30067122;

-- Query 12

select trans_id, date, type, amount
	from trans
    where account_id = 793
    order by `date` desc
    limit 10;

-- Query 13

select district_id, count(client_id)
	from `client`
    where district_id <= 10
	group by district_id
    order by district_id asc;

-- Query 14

select `type`, count(card_id)
	from card
	group by `type`
    order by card_id desc;

-- Query 15

select account_id, sum(amount) as amount
	from loan
    group by account_id 
    order by amount desc
    limit 10;

-- Query 16

select `date`, count(loan_id) as issued
	from loan
    where `date` < 930907
    group by `date`
    order by `date` desc;

-- Query 17

select `date`, duration, count(loan_id) as count
	from loan
	where `date` >= 971201 and `date`< 980101
    group by `date`, duration
    order by `date` asc;

-- Query 18

select account_id, `type`, sum(amount) as total_amount
	from trans
    where account_id = 396
    group by `type`;

