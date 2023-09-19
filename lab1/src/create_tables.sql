create table if not exists person
(
    id     serial primary key,
    name   varchar(128) not null,
    gender varchar(128) not null,
    age    integer not null
);

create table if not exists tree_type
(
    id serial primary key,
    type varchar(128) not null
);

create table if not exists tree
(
    id  serial primary key,
    tree_type_id    integer not null references tree_type(id),
    name    varchar(128) not null unique,
    age integer not null
);

create table if not exists tree_object_type
(
  id    serial primary key,
  type  varchar(128) not null
);

create table if not exists tree_object
(
    id  serial primary key,
    tree_object_type_id integer not null references tree_object_type(id),
    tree_id integer not null references     tree(id),
    model   varchar(128),
    description text
);

create table if not exists event
(
    id  serial primary key,
    description text not null
);

create table if not exists action
(
    id  serial primary key,
    description text not null
);

create table if not exists event_connection
(
    id  serial primary key,
    event_id    integer not null references event(id),
    person_id integer not null references person(id),
    object_id integer references tree_object(id)
);

create table if not exists action_connection
(
    id  serial primary key,
    action_id    integer not null references action(id),
    person_id integer not null references person(id),
    object_id integer references tree_object(id)
);