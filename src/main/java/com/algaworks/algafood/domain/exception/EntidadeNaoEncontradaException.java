package com.algaworks.algafood.domain.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.web.server.ResponseStatusException;

//@ResponseStatus(HttpStatus.NOT_FOUND)
public class EntidadeNaoEncontradaException extends ResponseStatusException {


    public EntidadeNaoEncontradaException(HttpStatusCode status, String mensagem) {
        super(status, mensagem);
    }

    public EntidadeNaoEncontradaException(String message) {
        this(HttpStatus.NOT_FOUND, message);
    }
}
