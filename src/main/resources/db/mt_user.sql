drop table if exists mt_user;

create table mt_user
(
    id           bigint auto_increment
        primary key,
    user_id      varchar(32)                         not null,
    username     varchar(64)                         not null,
    password     varchar(128)                        not null,
    role         char      default '1'               not null comment '[0-管理员] [1-用户]',
    is_valid     tinyint   default 1                 null comment '[0-失效] [1-有效]',
    gmt_create   timestamp default CURRENT_TIMESTAMP not null,
    gmt_modified timestamp default CURRENT_TIMESTAMP not null,
    constraint mt_user_user_id_uindex
        unique (user_id),
    constraint mt_user_username_uindex
        unique (username)
);

