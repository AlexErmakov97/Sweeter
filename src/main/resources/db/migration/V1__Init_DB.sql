create sequence hibernate_sequence start 1 increment 1;

create table _user
(
    id              int4         not null,
    activation_code varchar(255),
    active          boolean      not null,
    email           varchar(255),
    password        varchar(255) not null,
    username        varchar(255) not null,
    primary key (id)
);

create table message
(
    id           int4         not null,
    filename     varchar(255),
    tag          varchar(255),
    text_message varchar(255) not null,
    user_id      int4,
    primary key (id)
);

create table user_role
(
    user_id int4 not null,
    roles   varchar(255)
);

alter table if exists message
    add constraint message_user_fk
        foreign key (user_id) references _user;
alter table if exists user_role
    add constraint user_role_user_fk
        foreign key (user_id) references _user;
