package com.example.demo.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
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
public class HistorialCompras implements Serializable{

    @Id
    @Column(name = "idVenta")
    private int idVenta;

    @Id
    @Column(name = "idCliente")
    private int idCliente;

    @ManyToOne
    @JoinColumn(name = "idCliente", insertable = false, updatable = false)
    private UsuarioVO cliente;

    @Column(name = "total")
    private long total;
}
