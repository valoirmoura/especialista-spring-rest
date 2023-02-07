package com.algaworks.algafood.api.exceptionhandler;

import lombok.Builder;
import lombok.Getter;

import java.time.LocalDateTime;

@Builder
@Getter
public class Problema {

    private LocalDateTime dataHora;
    private String mensagem;
}
