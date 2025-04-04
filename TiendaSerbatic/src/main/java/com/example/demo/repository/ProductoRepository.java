package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.ProductoVO;

public interface ProductoRepository extends JpaRepository<ProductoVO, Long>{
	
	ProductoVO findByNombre(String nombre);
	
}
