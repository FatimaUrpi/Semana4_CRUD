package com.empresa.service;

import java.util.List;
import java.util.Optional;

import com.empresa.entity.Modalidad;

public interface ModalidadService {

	public abstract Modalidad insertaModalidad(Modalidad obj);
	public abstract List<Modalidad> listaPorNombre(String nombre);
	public abstract List<Modalidad> listaPorNombreLike(String nombre);

	/*Metodo para actulizar*/
	public abstract Modalidad actualizaModalidad(Modalidad obj);

	/*Encapsula un objeto, java util*/
	public abstract Optional<Modalidad>buscaModalidad(int idModalidad);
	
}
