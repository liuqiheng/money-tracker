drop table if exists mt_ledger;

create table mt_ledger
(
    id           bigint auto_increment
        primary key,
    ledger_id    varchar(32)                         not null,
    user_id      varchar(32)                         not null,
    ledger_name  varchar(64)                         not null,
    is_valid     tinyint   default 1                 not null comment '[0-失效] [1-有效]',
    gmt_create   timestamp default CURRENT_TIMESTAMP not null,
    gmt_modified timestamp default CURRENT_TIMESTAMP not null,
    constraint mt_ledger_ledger_id_uindex
        unique (ledger_id)
);

