drop table if exists mt_acct;

create table mt_acct
(
    id           bigint auto_increment
        primary key,
    acct_id      varchar(32)                         not null,
    user_id      varchar(32)                         not null,
    acct_name    varchar(64)                         not null,
    acct_type    char                                not null comment '[0-支付账户] [1-信用卡] [2-资产] [3-负债]',
    balance      decimal   default 0                 not null,
    is_valid     tinyint   default 1                 not null comment '[0-失效] [1-有效]',
    gmt_create   timestamp default CURRENT_TIMESTAMP not null,
    gmt_modified timestamp default CURRENT_TIMESTAMP not null,
    constraint mt_acct_acct_id_uindex
        unique (acct_id)
);

