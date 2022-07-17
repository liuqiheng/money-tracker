drop table if exists mt_jrnl;

create table mt_jrnl
(
    id             bigint auto_increment
        primary key,
    jrnl_id        varchar(32)                         not null,
    user_id        varchar(32)                         not null,
    ledger_id      varchar(32)                         not null,
    acct_id        varchar(32)                         not null,
    trans_type     char                                not null comment 'transaction type [0-expenditure] [1-income] [2-transfer] [3-asset purchase]
[4-asset sale] [5-borrowed debt] [6-repay debt]',
    trans_event_id varchar(32)                         null comment 'required when transaction type is [0-expenditure], [1-income]',
    rival_acct_id  varchar(32)                         null comment 'required when transaction type is [2-transfer], [3-asset purchase],
[4-asset sale], [5-borrowed debt], [6-repay debt]',
    amt            decimal   default 0                 not null,
    remark         varchar(256)                        null,
    trans_date     date                                not null,
    trans_time     time                                not null,
    is_valid       tinyint   default 1                 not null comment 'valid symbol [0-invalid] [1-valid]',
    gmt_create     timestamp default CURRENT_TIMESTAMP not null,
    gmt_modified   timestamp default CURRENT_TIMESTAMP not null,
    constraint mt_jrnl_jrnl_id_uindex
        unique (jrnl_id)
);

