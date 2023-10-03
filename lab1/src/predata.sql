insert into person
values (DEFAULT, 'Timmy', 'MALE', 12);
insert into iq_test
values ((select id from person where name='Timmy'), 43, 20);

insert into tree_type
values (DEFAULT, 'baobab');
insert into tree
values (DEFAULT, (select id from tree_type where type='baobab'), 'Dmitry', 49);
insert into tree_object_type
values (DEFAULT, 'car');
insert into tree_object_type
values (DEFAULT, 'branch');
insert into tree_object
values (DEFAULT,
        (select id from tree_object_type where type='car'),
        (select id from tree where name='Dmitry'),
        'mercedes s-class coupe 600',
        'good car with powerful engine'
        );
insert into tree_object
values (DEFAULT,
        (select id from tree_object_type where type='branch'),
        (select id from tree where name='Dmitry'),
        'strict',
        'just a usual strict branch'
       );

insert into event_connection
values (DEFAULT,
        'Тим висел в полуметре от земли',
        (select id from person where name='Timmy'),
        NULL
       );
insert into action_connection
values (DEFAULT,
        'Тим насчупал ветку и полез вниз',
        (select id from person where name='Timmy'),
        (select id from tree_object where description='just a usual strict branch')
       );
insert into action_connection
values (DEFAULT,
        'Тим залез в авто',
        (select id from person where name='Timmy'),
        (select id from tree_object where description='good car with powerful engine')
       );