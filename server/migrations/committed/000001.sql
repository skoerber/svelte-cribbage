--! Previous: -
--! Hash: sha1:e9158645e2aa7956453a53f1986015d43a11012e

drop table if exists cards;
drop table if exists suits;
drop table if exists ranks;

create table suits(
       id serial primary key,
       name text not null
);
insert into suits(name) values
       ('clubs'),
       ('diamonds'),
       ('hearts'),
       ('spades');

create table ranks(
       id serial primary key,
       name text not null,
       value int not null
);
insert into ranks(name, value) values
       ('A', 1),
       ('2', 2),
       ('3', 3),
       ('4', 4),
       ('5', 5),
       ('6', 6),
       ('7', 7),
       ('8', 8),
       ('9', 9),
       ('10', 10),
       ('J', 10),
       ('Q', 10),
       ('K', 10);

drop table if exists cards;
create table cards(
       id serial primary key,
       rank_id int not null references ranks,
       suit_id int not null references suits
);
insert into cards(suit_id, rank_id) select 1, id from ranks;
insert into cards(suit_id, rank_id) select 2, id from ranks;
insert into cards(suit_id, rank_id) select 3, id from ranks;
insert into cards(suit_id, rank_id) select 4, id from ranks;
