package com.example.demo.control;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.model.ProductoVO;
import com.example.demo.service.ProductoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class NavegacionController {
	
	@Autowired
	ProductoService productoService;
	
	@GetMapping("/")
	public String goIndex(Model model, HttpServletRequest request) {
		model.addAttribute("catalogo", this.productoService.getAll());
		return "index";
	}
	
	@GetMapping("/verCarrito")
	public String accederCarrito(Model model, HttpSession sesion) {
			
			
		HashMap<ProductoVO, Integer> carrito = (HashMap<ProductoVO, Integer>) sesion.getAttribute("carrito");
				
		if(carrito == null) {			
			carrito = new HashMap<ProductoVO, Integer>();
		}
			
		model.addAttribute("carrito", carrito);
			
		return "carrito";
	}
	
	public String goPerfilUsuario() {		
		return "index";
	}
}