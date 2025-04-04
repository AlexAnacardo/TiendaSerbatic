package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.ProductoVO;
import com.example.demo.repository.ProductoRepository;

@Service
public class ProductoServiceImpl implements ProductoService{

	@Autowired
	private ProductoRepository productoRepository;
	
	@Override
	public List<ProductoVO> getAll() {
		return this.productoRepository.findAll();
	}

	@Override
	public ProductoVO getByID(Long id) {
		Optional<ProductoVO> producto = this.productoRepository.findById(id);
        return producto.orElse(null);
	}
}
