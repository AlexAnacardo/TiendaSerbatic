package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.ProductoVO;

@Service
public interface ProductoService {
	public List<ProductoVO> getAll();
	public ProductoVO getByID(Long id);
}
