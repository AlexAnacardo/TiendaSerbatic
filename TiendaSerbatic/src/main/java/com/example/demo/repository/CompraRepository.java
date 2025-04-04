package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.CompraVO;

public interface CompraRepository extends JpaRepository<CompraVO, CompraVO.CompraId>{
	int countByIdCliente(Long idCliente);
}