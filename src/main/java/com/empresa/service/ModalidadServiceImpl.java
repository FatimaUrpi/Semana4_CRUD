package com.empresa.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empresa.entity.Modalidad;
import com.empresa.repository.ModalidadRepository;

@Service
public class ModalidadServiceImpl implements ModalidadService{

	@Autowired
	private ModalidadRepository repository;
	
	@Override
	public Modalidad insertaModalidad(Modalidad obj) {
		return repository.save(obj);
	}

	@Override
	public List<Modalidad> listaPorNombre(String nombre) {
		return repository.findByNombreIgnoreCase(nombre);
	}
	
	@Override
	public List<Modalidad> listaPorNombreLike(String nombre) {
		return repository.findByNombreLike(nombre);
	}

	@Override
	public Modalidad actualizaModalidad(Modalidad obj) {
		/*valor 0 actualiza, 1 es error*/
		return repository.save(obj);
	}

	@Override
	public Optional<Modalidad> buscaModalidad(int idModalidad) {
		// TODO Auto-generated method stub
		return repository.findById(idModalidad);
	}
	

}
