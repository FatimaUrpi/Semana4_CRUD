package com.empresa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.empresa.entity.Proveedor;

public interface ProveedorRepository extends JpaRepository<Proveedor, Integer>{
	
	
	public List<Proveedor> findByNombreIgnoreCase(String nombre);
	/*Fltro la primera letra*/
	/*select * from Alumno like */
	
	
	public List<Proveedor> findByNombreLike(String nombre);
	
	public List<Proveedor> findByNombreValidacionIgnoreCase(String nombre);

}




	
