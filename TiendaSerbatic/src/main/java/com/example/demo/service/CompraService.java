package com.example.demo.service;

import com.example.demo.model.CompraVO;

public interface CompraService {
	public void insertar(CompraVO compra);
	
	public int getByUser(Long idCliente);
}