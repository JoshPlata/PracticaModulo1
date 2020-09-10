package com.demo.usuarios.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demo.usuarios.entity.Usuario;
import com.demo.usuarios.service.UsuarioService;

@RestController
@RequestMapping("/servicio")
public class UsuarioController {
	
	@Autowired
	private UsuarioService service;
	
	@GetMapping("/usuario")
	public ResponseEntity<List<Usuario>> verTodos(){
		List<Usuario> usuarios = service.mostarTodos();
		return ResponseEntity.ok(usuarios);
	}
	
	@GetMapping("/usuario/{id}")
	public ResponseEntity<Usuario> buscarPorId(@PathVariable("id") Integer id){
		Usuario u = service.buscar(id);
		if(u == null) {
			return ResponseEntity.noContent().build();
		}else {
			return ResponseEntity.ok(u);
		}
	}

	@DeleteMapping("/usuario/{id}")
	public ResponseEntity<Void> eliminarPorId(@PathVariable("id") Integer id){
		Usuario u = service.buscar(id);
		if(u == null) {
			return ResponseEntity.noContent().build();
		}else {
			return ResponseEntity.ok(null);
		}
	}
	
	@PostMapping("/usuario")
	public ResponseEntity<Usuario> agregar(@RequestBody Usuario usuario){
		Usuario u = service.guardar(usuario);
		return ResponseEntity.ok(u);
	}
	
	@PutMapping("/usuario")
	public ResponseEntity<Usuario> modificarUsuario(@RequestBody Usuario usuario){
		Usuario u = service.buscar(usuario.getId_usu());
		if(u == null) {
			return ResponseEntity.notFound().build();
		}else {
			u.setNombre(usuario.getNombre());
			u.setApellido(usuario.getApellido());
			u.setContra(usuario.getContra());
			service.guardar(u);
			return ResponseEntity.ok(u);
		}
	}
	
}
