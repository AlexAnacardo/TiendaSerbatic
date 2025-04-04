package com.example.demo.model;

import org.hibernate.validator.constraints.NotBlank;

import jakarta.validation.constraints.NotNull;
import lombok.Data;


@Data
public class UsuarioDTO {
	@NotBlank(message="mensaje de validacion para el nombre")
	@NotNull(message="mensaje de validacion para el nombre")
	private String user;
	private String pass;
	private boolean terms;
	
}
