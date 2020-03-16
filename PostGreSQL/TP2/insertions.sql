insert into Test values (14);
insert into Test values (3);

begin transaction;
insert into Test values (15);
insert into Test values (90);
commit;

begin transaction;
insert into Test values (1);
insert into Test values (2);
rollback;

begin transaction;
insert into Test values (6);
insert into Test values (7);