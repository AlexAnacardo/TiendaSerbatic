package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.UsuarioVO;

public interface UsuarioRepository extends JpaRepository<UsuarioVO, Long>{

    UsuarioVO findByUser(String user);

}
