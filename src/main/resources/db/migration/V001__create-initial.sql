create table cozinha
(
    id   bigint      not null primary key auto_increment,
    nome varchar(60) not null
) engine = InnoDB
  default charset = utf8;