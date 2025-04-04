package com.example.demo.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "compra")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@IdClass(CompraVO.CompraId.class)
public class CompraVO implements Serializable {

    @Id
    @Column(name = "idVenta")
    private int idVenta;

    @Id
    @Column(name = "idCliente")
    private Long idCliente; // Cambiado a Long para que coincida con CompraId

    @ManyToOne
    @JoinColumn(name = "idCliente", insertable = false, updatable = false)
    private UsuarioVO cliente;

    @Column(name = "total")
    private long total;

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public Long getIdCliente() { 
        return idCliente;
    }

    public void setIdCliente(Long idCliente) { 
        this.idCliente = idCliente;
    }
    
    public Long getTotal() {
    	return this.total;
    }
    
    public void setTotal(Long total) {
    	this.total=total;
    }
    
    
    public UsuarioVO getCliente() {
		return cliente;
	}

	public void setCliente(UsuarioVO cliente) {
		this.cliente = cliente;
	}


	// Clase interna que representa la clave primaria compuesta
    public static class CompraId implements Serializable {
        
        private int idVenta;
        private Long idCliente; // Cambiado a Long para que coincida con CompraVO

        // Constructor vacío
        public CompraId() {}

        // Constructor
        public CompraId(int idVenta, Long idCliente) {  // Cambiado a Long
            this.idVenta = idVenta;
            this.idCliente = idCliente;
        }

        // Getters y setters
        

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            CompraId compraId = (CompraId) o;
            return idVenta == compraId.idVenta && idCliente.equals(compraId.idCliente);
        }

        @Override
        public int hashCode() {
            return 31 * idVenta + (idCliente != null ? idCliente.hashCode() : 0);
        }
    }
}
