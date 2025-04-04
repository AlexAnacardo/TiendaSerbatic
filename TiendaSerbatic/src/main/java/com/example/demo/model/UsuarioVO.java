package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "usuarioprueba")
public class UsuarioVO {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
    private Long id;
	
	@Column(name = "user")
	private String user;
	
	@Column(name = "pass")
	private String pass;
	
	
	public boolean getTerms() { 
        return false;
    }


	public Long getId() {
		return this.id;
	}
}
