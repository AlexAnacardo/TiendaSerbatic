package com.example.demo.control;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.demo.model.CompraVO;
import com.example.demo.model.ProductoVO;
import com.example.demo.model.UsuarioDTO;
import com.example.demo.model.UsuarioVO;
import com.example.demo.service.CompraService;
import com.example.demo.service.ProductoService;

import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes("carrito")
public class CarritoController {		
	@Autowired
	private ProductoService productoService;
		
	@Autowired
	private CompraService compraService;
		
		
	@GetMapping("/anadir")
	public String añadirProducto(@RequestParam("idProducto") Long idProducto, Model model) {
		ProductoVO producto = productoService.getByID(idProducto);
	
		Map<ProductoVO, Integer> carrito = (Map<ProductoVO, Integer>) model.asMap().get("carrito");
	
		if (carrito == null) {
			   carrito = new HashMap<>();
		}
	
		if (carrito.containsKey(producto)) {
			carrito.put(producto, carrito.get(producto) + 1);
		} else {
			carrito.put(producto, 1);
		}
	        
	    model.addAttribute("carrito", carrito);
	    
	    System.out.println(model.getAttribute("carrito"));
	        
		return "redirect:/";
	}
		
		
	@GetMapping("/tramitarCompra")
	public String tramitarCompra(Model model, HttpSession sesion, @ModelAttribute("userInfo") UsuarioDTO user) {
			
		Map<ProductoVO, Integer> carrito = (Map<ProductoVO, Integer>) model.asMap().get("carrito");
		    
		UsuarioVO usuario=(UsuarioVO) sesion.getAttribute("usuarioEnCurso");
		    
		if (usuario == null) {
			return "redirect:/";
		}
		    
		if (carrito != null && !carrito.isEmpty()) {
			long total = 0;
		    for (Map.Entry<ProductoVO, Integer> entry : carrito.entrySet()) {
		    	ProductoVO producto = entry.getKey();
		        Integer cantidad = entry.getValue();
		        total += producto.getPrecio() * cantidad;  
		    }
	
		    CompraVO compra = new CompraVO();
		    compra.setIdCliente(usuario.getId());
		    compra.setIdVenta(compraService.getByUser(usuario.getId())+1);
		    compra.setTotal(total);

		    compra.setCliente(usuario);
	
		    compraService.insertar(compra);
	
		    carrito.clear();
	
		    return "redirect:/";
		} else {
			return "redirect:/";
		}
	}
}
