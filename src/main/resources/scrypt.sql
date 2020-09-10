-- auto-generated definition
create table authors
(
    id         serial not null
        constraint author_pkey
            primary key,
    botn_date  timestamp,
    first_name varchar(255),
    last_name  varchar(255),
    patronymic varchar(255)
);

alter table authors
    owner to postgres;

-- auto-generated definition
create table books
(
    id              serial not null
        constraint book_pkey
            primary key,
    comment         varchar(255),
    image_file_name varchar(255),
    tag             varchar(255),
    title           varchar(255),
    year            varchar(255),
    author_id       bigint
        constraint fk_author_book
            references authors
);

alter table books
    owner to postgres;


-- auto-generated definition
create sequence hibernate_sequence;
alter sequence hibernate_sequence owner to postgres;