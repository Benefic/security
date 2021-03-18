create table users
(
    id       bigserial,
    username varchar(30) not null,
    password varchar(80) not null,
    enabled  boolean     not null,
    score    smallint,
    primary key (id)
);


insert into users (username, password, enabled, score)
values ('user', '$2a$10$VaXSN/Q6Ex3vvm53ECygD.dP7ZDnx05oT6Qv.ctVcSiiPaYKPxp0S', true, 0),
       ('user1', '$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.', true, 0);

create table roles
(
    id   serial,
    name varchar(50) not null,
    primary key (id)
);

insert into roles (name)
values ('ROLE_USER'),
       ('ROLE_ADMIN');

CREATE TABLE users_roles
(
    user_id bigint not null,
    role_id int    not null,
    primary key (user_id, role_id),
    foreign key (user_id) references users (id),
    foreign key (role_id) references roles (id)
);


insert into users_roles (user_id, role_id)
values (1, 1),
       (2, 1),
       (1, 2);
