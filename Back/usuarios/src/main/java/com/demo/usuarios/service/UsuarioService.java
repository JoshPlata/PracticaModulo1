package com.demo.usuarios.service;

import java.util.List;

import com.demo.usuarios.entity.Usuario;

public interface UsuarioService {
	
	List<Usuario> mostarTodos();
	Usuario buscar(Integer id);
	Usuario guardar(Usuario usuario);
	void eliminar(Integer id);
	
}
