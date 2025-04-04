package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.UsuarioVO;
import com.example.demo.repository.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService{
	
	@Autowired
	private UsuarioRepository usuarioRepository;

	@Override
	public void actualizar(UsuarioVO usuario) {
		this.usuarioRepository.save(usuario);
	}

	@Override
	public void insertar(UsuarioVO usuario) {
		this.usuarioRepository.save(usuario);
	}

	@Override
	public List<UsuarioVO> getAll() {
		return this.usuarioRepository.findAll();
	}
	
	@Override
	public UsuarioVO getByID(Long id) {
		Optional<UsuarioVO> usuario = this.usuarioRepository.findById(id);
        return usuario.orElse(null);
	}

	@Override
	public UsuarioVO getByUser(String user) {
		UsuarioVO usuario = this.usuarioRepository.findByUser(user);
        return usuario;
	}
}
