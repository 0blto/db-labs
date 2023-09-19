insert into person
values (DEFAULT, 'Timmy', 'MALE', 12);

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

insert into event
values (DEFAULT, 'Тим висел в полуметре от земли');
insert into event_connection
values (DEFAULT,
        (select id from event where description='Тим висел в полуметре от земли'),
        (select id from person where name='Timmy'),
        NULL
       );
insert into action
values (DEFAULT, 'Тим насчупал ветку и полез вниз');
insert into action_connection
values (DEFAULT,
        (select id from action where description='Тим насчупал ветку и полез вниз'),
        (select id from person where name='Timmy'),
        (select id from tree_object where description='just a usual strict branch')
       );