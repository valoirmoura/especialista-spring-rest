package com.algaworks.algafood.domain.exception;

public class EstadoNaoEncontradaException extends EntidadeNaoEncontradaException {

    public EstadoNaoEncontradaException(String message) {
        super(message);
    }

    public EstadoNaoEncontradaException(Long estadoId) {
        this(String.format("Não existe um cadastro de estado com código %d", estadoId));

    }
}
