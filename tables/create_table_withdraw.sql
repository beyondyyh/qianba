drop table if exists `withdraw`;
create table `withdraw` (
    `id` bigint(20) unsigned auto_increment comment 'auto incr id',
    `uid` bigint(20) unsigned not null default 0 comment 'user id',
    `amount` bigint(20) unsigned not null default 0 comment 'withdraw amount, unit 0.00001',
    `receipt` varchar(256) not null default '' comment 'receipt code',
    `status` tinyint(3) unsigned not null default 0 comment 'status',
    `created_at` int(11) unsigned not null default 0 comment 'create time',
    primary key (`id`),
    key `uid_created` (`uid`, `created_at`)
) ENGINE=InnoDB default CHARSET=utf8;
