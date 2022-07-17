drop table if exists mt_trans_event;

create table mt_trans_event
(
    id             bigint auto_increment
        primary key,
    event_id       varchar(32)                         not null,
    user_id        varchar(32)                         not null,
    event_name     varchar(64)                         not null,
    event_level    tinyint                             not null,
    trans_type     char                                not null comment '[0-支出] [1-收入]',
    event_type     char                                not null comment '[0-分组] [1-事件]',
    super_event_id varchar(32)                         null,
    is_valid       tinyint                             not null comment '[0-失效] [1-有效]',
    gmt_create     timestamp default CURRENT_TIMESTAMP not null,
    gmt_modified   timestamp default CURRENT_TIMESTAMP not null,
    constraint mt_trans_event_event_id_uindex
        unique (event_id)
);

