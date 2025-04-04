package com.example.demo.component;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class Carrito {
	
	private Map<Integer, Integer> items;

	public Carrito() {
		items = new HashMap<>();
	}

	public Map<Integer, Integer> getItems() {
		return items;
	}

	public void agregarProducto(Integer productoId) {
		items.put(productoId, items.get(productoId).intValue() + 1);
	}

	public void restarProducto(Integer productoId) {
		items.put(productoId, items.get(productoId).intValue() - 1);
	}

	public int getItemsNumber() {
		return items.size();
	}
}
