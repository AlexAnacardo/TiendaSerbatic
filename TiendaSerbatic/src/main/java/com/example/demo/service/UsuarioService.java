package com.example.demo.service;

import java.util.List;

import com.example.demo.model.UsuarioVO;

public interface UsuarioService {

	public void actualizar(UsuarioVO usuario);
	
	public void insertar(UsuarioVO usuario);
	
	public UsuarioVO getByID(Long id);
	
	public UsuarioVO getByUser(String user);
	
	public List<UsuarioVO> getAll();
	
}
