create table cidade
(
    id          bigint primary key not null auto_increment,
    nome_cidade varchar(80)        not null,
    nome_estado varchar(80)        not null
) engine = InnoDB
  default charset = UTF8MB4;