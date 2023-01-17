package com.algaworks.algafood.jpa;

import com.algaworks.algafood.AlgafoodApiApplication;
import com.algaworks.algafood.domain.model.Cozinha;
import com.algaworks.algafood.domain.repository.CozinhaRepository;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ApplicationContext;

public class InclusaoCozinhaMain {

    public static void main(String[] args) {

        //Cria uma Aplicação Spring Local, sem WEB
        ApplicationContext applicationContext = new SpringApplicationBuilder(AlgafoodApiApplication.class)
                .web(WebApplicationType.NONE)
                .run(args);

        //Testando a Busca por Cozinha
        CozinhaRepository cozinhaRepository = applicationContext.getBean(CozinhaRepository.class);

        Cozinha cozinha1 = new Cozinha();
        Cozinha cozinha2 = new Cozinha();

        cozinha1.setNome("Brasileira");
        cozinha2.setNome("Japonesa");

        Cozinha cozinhaBrasileira = cozinhaRepository.salvar(cozinha1);
        Cozinha cozinhaJaponeza = cozinhaRepository.salvar(cozinha2);

        System.out.println(cozinhaBrasileira.getNome());
        System.out.println(cozinhaJaponeza.getNome());
    }
}
