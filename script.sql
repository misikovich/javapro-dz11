create table if not exists wallet (
	wallet_id bigint primary key,
	currency text,
	amount bigint,
	user_id bigint,
	created date
);

create table if not exists users(
	user_id bigint primary key,
	name_u text,
	surname text,
	date_of_registration date
);

INSERT INTO wallet (wallet_id, currency, amount, user_id, created) VALUES
(4, 'USD', 1345, 4, '2005-06-09'),
(5, 'UAH', 12950, 5, '2000-01-02'),
(6, 'NOK', 91732346789, 6, '1939-06-01');

INSERT INTO users (user_id, name_u, surname, date_of_registration) VALUES
(4, 'Tim', 'Koly', '2005-06-09'),
(5, 'Alex', 'Shai', '2000-01-02'),
(6, 'Adolf', 'Hit', '1939-06-01');


SELECT users.name_u, wallet.currency, wallet.amount 

FROM wallet INNER JOIN users ON wallet.user_id = users.user_id;


