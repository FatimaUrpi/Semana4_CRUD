package com.empresa.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.empresa.entity.Proveedor;
import com.empresa.service.ProveedorService;

@Controller

public class CrudProveedorController {
	@Autowired
	private ProveedorService proveedorService;
	
	@RequestMapping("/verCrudProveedor")
	public String verInicio() {
		return "crudProveedor";
	}
	
	
	@GetMapping("/consultarCrudProveedor")
	@ResponseBody
	public List<Proveedor> consulta(String filtro) {
		
		return proveedorService.listaPorNombreLike("%"+filtro+"%");
	}

	@PostMapping("/registrarCrudProveedor")
	@ResponseBody
	public Map<?, ?> registra(Proveedor obj) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		obj.setFechaRegistro(new Date());  
		Proveedor objSalida = proveedorService.insertaProveedor(obj);
		if (objSalida == null) {
			map.put("mensaje", "Error en el registro");
		} else {
			List<Proveedor> listaRe = proveedorService.listaPorNombreLike("%");
			map.put("lista", listaRe);
			map.put("mensaje", "Registro exitoso");
		}
		return map;
	}
	
	@PostMapping("/actualizarCrudProveedor")
	@ResponseBody
	public Map<?, ?> actualiza(Proveedor obj) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		  
		Optional<Proveedor> optProveedor= proveedorService.buscaProveedor(obj.getIdProveedor());
		obj.setFechaRegistro(optProveedor.get().getFechaRegistro());
		Proveedor objSalida = proveedorService.actualizarProveedor(obj);
		if (objSalida == null) {
			map.put("mensaje", "Error en la actualización");
		} else {
			List<Proveedor> listaAc = proveedorService.listaPorNombreLike("%");
			map.put("lista", listaAc);
			map.put("mensaje", "Actualización exitosa");
		}
		return map;
		}
	
	@ResponseBody
	@PostMapping("/eliminarCrudProveedor")
	public Map<?, ?> elimina(int id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		Proveedor objProveedor = proveedorService.buscaProveedor(id).get();
		Proveedor objSalida = proveedorService.actualizarProveedor(objProveedor);

		if (objSalida == null) {
			map.put("mensaje", "Error en actualizar");
		} else {
			List<Proveedor> listaEli = proveedorService.listaPorNombreLike("%");
			map.put("lista", listaEli);
		}
		return map;
		}
	
	@GetMapping("/buscaPorNombreProveedor")
	@ResponseBody
	public String validaNombre(String nombre) {
		List<Proveedor> lstProveedor = proveedorService.listaPorNombreValidacion(nombre);
		if (CollectionUtils.isEmpty(lstProveedor)) {
			return "{\"valid\" : true }";
		} else {
			return "{\"valid\" : false }";
		}
	}
	

}