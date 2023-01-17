package com.algaworks.algafood.jpa;

import com.algaworks.algafood.AlgafoodApiApplication;
import com.algaworks.algafood.domain.model.Cozinha;
import com.algaworks.algafood.domain.repository.CozinhaRepository;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ApplicationContext;

import java.util.List;

public class ConsultaCozinhaMain {

    public static void main(String[] args) {

        //Cria uma Aplicação Spring Local, sem WEB
        ApplicationContext applicationContext = new SpringApplicationBuilder(AlgafoodApiApplication.class)
                .web(WebApplicationType.NONE)
                .run(args);

        //Testando a Busca por Cozinha
        CozinhaRepository cozinhaRepository = applicationContext.getBean(CozinhaRepository.class);
        List<Cozinha>  cozinhas = cozinhaRepository.listar();

        //Imprimindo a Lista de Cozinhas
        cozinhas.forEach(cozinha -> System.out.println(cozinha.getNome()));

    }
}
