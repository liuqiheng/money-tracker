drop table if exists mt_user_info;

create table mt_user_info
(
    id           bigint auto_increment
        primary key,
    user_id      varchar(32)                         not null,
    avatar       varchar(256)                        null,
    nickname     varchar(64)                         null,
    email        varchar(128)                        null,
    telephone    char(11)                            null,
    address      varchar(256)                        null,
    is_valid     tinyint   default 1                 null comment '[0-失效] [1-有效]',
    gmt_create   timestamp default CURRENT_TIMESTAMP not null,
    gmt_modified timestamp default CURRENT_TIMESTAMP not null,
    constraint mt_user_user_id_uindex
        unique (user_id)
);

