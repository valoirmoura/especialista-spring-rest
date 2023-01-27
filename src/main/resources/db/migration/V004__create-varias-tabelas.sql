CREATE TABLE forma_pagamento
(
    id        BIGINT       NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = INNODB
  default charset = UTF8MB4;

CREATE TABLE grupo
(
    id   BIGINT      NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = INNODB
  default charset = UTF8MB4;

CREATE TABLE grupo_permissoes
(
    grupo_id     BIGINT NOT NULL,
    permissao_id BIGINT NOT NULL
) ENGINE = INNODB
  default charset = UTF8MB4;

CREATE TABLE permissao
(
    id        BIGINT       NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NOT NULL,
    nome      VARCHAR(60)  NOT NULL,
    PRIMARY KEY (id)
) ENGINE = INNODB
  default charset = UTF8MB4;

CREATE TABLE produto
(
    id             BIGINT         NOT NULL AUTO_INCREMENT,
    ativo          BIT            NOT NULL,
    descricao      VARCHAR(100)   NOT NULL,
    nome           VARCHAR(60)    NOT NULL,
    preco          DECIMAL(38, 2) NOT NULL,
    restaurante_id BIGINT         NOT NULL,
    PRIMARY KEY (id)
) ENGINE = INNODB
  default charset = UTF8MB4;

CREATE TABLE restaurante
(
    id                   BIGINT         NOT NULL AUTO_INCREMENT,
    data_atualizacao     DATETIME       NOT NULL,
    data_cadastro        DATETIME       NOT NULL,
    endereco_bairro      VARCHAR(60),
    endereco_cep         VARCHAR(20),
    endereco_complemento VARCHAR(150),
    endereco_logradouro  VARCHAR(150),
    endereco_numero      VARCHAR(20),
    nome                 VARCHAR(60)    NOT NULL,
    taxa_frete           DECIMAL(38, 2) NOT NULL,
    cozinha_id           BIGINT         NOT NULL,
    endereco_cidade_id   BIGINT,
    PRIMARY KEY (id)
) ENGINE = INNODB
  default charset = UTF8MB4;

CREATE TABLE restaurante_forma_pagamento
(
    restaurante_id     BIGINT NOT NULL,
    forma_pagamento_id BIGINT NOT NULL
) ENGINE = INNODB
  default charset = UTF8MB4;

CREATE TABLE usuario
(
    id            BIGINT       NOT NULL AUTO_INCREMENT,
    data_cadastro DATETIME(6),
    email         VARCHAR(100) NOT NULL,
    nome          VARCHAR(60)  NOT NULL,
    senha         VARCHAR(60)  NOT NULL,
    PRIMARY KEY (id)
) ENGINE = INNODB
  default charset = UTF8MB4;

CREATE TABLE usuario_grupos
(
    usuario_id BIGINT NOT NULL,
    grupo_id   BIGINT NOT NULL
) ENGINE = INNODB
  default charset = UTF8MB4;

alter table grupo_permissoes
    add constraint fk_grupo_permissao_permissao foreign key (permissao_id) references permissao (id);

alter table grupo_permissoes
    add constraint fk_grupo_permissao_grupo foreign key (grupo_id) references grupo (id);

alter table produto
    add constraint fk_produto_restaurante foreign key (restaurante_id) references restaurante (id);

alter table restaurante
    add constraint fk_restaurante_cozinha foreign key (cozinha_id) references cozinha (id);

alter table restaurante
    add constraint fk_restaurante_cidade foreign key (endereco_cidade_id) references cidade (id);

alter table restaurante_forma_pagamento
    add constraint fk_restaurante_forma_pagamento_forma_pagamento foreign key (forma_pagamento_id) references forma_pagamento (id);

alter table restaurante_forma_pagamento
    add constraint fk_restaurante_forma_pagamento_restaurante foreign key (restaurante_id) references restaurante (id);

alter table usuario_grupos
    add constraint fk_usuarios_grupo_grupo foreign key (grupo_id) references grupo (id);

alter table usuario_grupos
    add constraint fk_usuarios_grupos_usuario foreign key (usuario_id) references usuario (id);
