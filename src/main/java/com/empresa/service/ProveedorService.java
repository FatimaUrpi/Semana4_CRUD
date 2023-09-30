package com.empresa.service;

import java.util.List;
import java.util.Optional;

import com.empresa.entity.Modalidad;
import com.empresa.entity.Proveedor;

public interface ProveedorService {

	public abstract Proveedor insertaProveedor(Proveedor obj);
	
	
	public abstract List<Proveedor> listaPorNombre(String nombre);
	public abstract List<Proveedor> listaPorNombreLike(String nombre);
	public abstract Proveedor actualizarProveedor(Proveedor obj);

	/*Encapsula un objeto, java util*/
	public abstract Optional<Proveedor>buscaProveedor(int idProveedor);
}

