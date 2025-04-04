package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.CompraVO;
import com.example.demo.repository.CompraRepository;

@Service
public class CompraServiceImpl implements CompraService{
	@Autowired
	private CompraRepository compraRepository;
	
	@Override
	public void insertar(CompraVO compra) {
		this.compraRepository.save(compra);
	}
	
	@Override
	public int getByUser(Long idCliente) {
		return compraRepository.countByIdCliente(idCliente);
	}
}
