create table competition
(
    id        int         not null,
    name      varchar(50) not null,
    code      varchar(10) not null,
    area_name varchar(10) not null
        primary key,
    constraint Competition_code_uindex
        unique (code),
    constraint Competition_id_uindex
        unique (id)
);

create table players
(
    id_player      int         not null,
    id_team        int         not null
        primary key,
    position       varchar(20) null,
    dateOfBirth    varchar(20) null,
    countryOfBirth varchar(20) null,
    nationality    varchar(20) null,
    name           varchar(30) not null,
    areaName       varchar(10) null,
    constraint players_id_player_uindex
        unique (id_player)
);

create table teams
(
    id_team   int         not null,
    name      varchar(20) not null,
    tla       varchar(20) null,
    shortName varchar(20) null,
    areaName  varchar(25) not null
        primary key,
    email     varchar(30) null,
    constraint teams_id_Team_uindex
        unique (id_team),
    constraint teams_name_uindex
        unique (name),
    constraint teams_tla_uindex
        unique (tla)
);


