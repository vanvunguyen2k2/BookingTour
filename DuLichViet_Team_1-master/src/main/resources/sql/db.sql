DROP DATABASE IF EXISTS du_lich_viet;
CREATE DATABASE du_lich_viet;
use du_lich_viet;

create table account
(
    id        int auto_increment
        primary key,
    address   varchar(255) null,
    email     varchar(255) null,
    full_name varchar(255) null,
    password  varchar(255) null,
    phone     varchar(255) null,
    role      varchar(255) null,
    status    varchar(255) null,
    username  varchar(255) null
);

create table tour
(
    id             int auto_increment
        primary key,
    arrival        varchar(255) not null,
    content        text         not null,
    depart         varchar(255) not null,
    duration       int          not null,
    image          longtext     not null,
    max_guest_size int          not null,
    price          int          not null,
    status         varchar(255) not null,
    title          varchar(255) not null,
    transport      varchar(255) not null,
    type           varchar(255) not null
);

create table booking
(
    id           int auto_increment
        primary key,
    booking_date date         null,
    guest_size   int          null,
    note         varchar(255) null,
    price        double       null,
    status       varchar(255) null,
    account_id   int          null,
    tour_id      int          null,
    constraint FK8wma53xqkrw3l3r2o2uwg6kjy
        foreign key (tour_id) references tour (id),
    constraint FKq7b5wddjf73v4q196jnkjkfex
        foreign key (account_id) references account (id)
);

insert into `tour` (arrival, content, depart, duration, image, max_guest_size, price, status, title, transport, type)
VALUES ('Hai PHong', 'Du lich Thanh Pho Hoa Phuong Do', 'Ha Noi', 2, 'https://tse4.mm.bing.net/th?id=OIP.WS6iPkjCa4-6SAXfmUO67wHaEK&pid=Api&P=0&h=180', 20, 20000000,'AVAILABLE', 'Tan huong chuyen di', 'TRAIN', 'SHORT_TOUR' ),
       ('Da Nang', 'Du lich Thanh Pho Hoa Phuong Do', 'Ha Noi', 2, 'https://tse1.mm.bing.net/th?id=OIP.XwY-lNBl2pPnAtJhPMjmrgHaE9&pid=Api&P=0&h=180', 20, 20000000,'AVAILABLE', 'Tan huong chuyen di', 'CAR', 'TEAM_BUILDING' ),
       ('Phu Yen', 'Du lich Thanh Pho Hoa Phuong Do', 'Ha Noi', 2, 'https://tse2.mm.bing.net/th?id=OIP.o4WY7zjmZUgjheYQloG5DQHaE7&pid=Api&P=0&h=180', 20, 20000000,'AVAILABLE', 'Tan huong chuyen di', 'AIRPLANE', 'HOT_TOUR' ),
       ('Gia Lai', 'Du lich Thanh Pho Hoa Phuong Do', 'Ha Noi', 2, 'https://tse4.mm.bing.net/th?id=OIP.ptwg0a-0KHFc5KBCfj4pvQHaEo&pid=Api&P=0&h=180', 20, 20000000,'AVAILABLE', 'Tan huong chuyen di', 'TRAIN', 'HOLIDAY' ),
       ('Quang Tri', 'Du lich Thanh Pho Hoa Phuong Do', 'Ha Noi', 2, 'https://tse1.mm.bing.net/th?id=OIP.1VAf6sWvMvQKUbwbbNx-GQAAAA&pid=Api&P=0&h=180', 20, 20000000,'AVAILABLE', 'Tan huong chuyen di', 'AIRPLANE', 'TEAM_BUILDING' )



