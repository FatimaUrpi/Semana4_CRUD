package com.empresa.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empresa.entity.Proveedor;
import com.empresa.repository.ProveedorRepository;

@Service
public class ProveedorServiceImpl implements ProveedorService{

	@Autowired
	private ProveedorRepository repository;
	
	@Override
	public Proveedor insertaProveedor(Proveedor obj) {
		return repository.save(obj);
	}

	@Override
	public List<Proveedor> listaPorNombre(String nombre) {
		return repository.findByNombreIgnoreCase(nombre);
	}

	@Override
	public Proveedor actualizaProveedor(Proveedor obj) {
		return repository.save(obj);
	}

	@Override
	public List<Proveedor> listaPorNombreLike(String nombre) {
		return repository.findByNombreLike(nombre);
	}

	@Override
	public Optional<Proveedor> buscaProveedor(int idProveedor) {
		return repository.findById(idProveedor);
	}

	@Override
	public List<Proveedor> listaPorNombreOrDni(String nombre, String dni) {
		return repository.findByNombreOrDniIgnoreCase(nombre, dni);
	}

}


