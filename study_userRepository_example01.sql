create table user(
	user_id bigint primary key auto_increment,
    name varchar(50) not null,
    email varchar(100) unique,
    created_at timestamp default current_timestamp
);