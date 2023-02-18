package com.algaworks.algafood.api.exceptionhandler;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class Problem {

    private Integer status;

    private String type;

    private String title;

    private String detail;

}
