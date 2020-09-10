package com.demo.usuarios.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.usuarios.entity.Usuario;
import com.demo.usuarios.repository.UsuarioRepository;
import com.demo.usuarios.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService{
	
	@Autowired
	private UsuarioRepository repo;

	@Override
	public List<Usuario> mostarTodos() {
		return repo.findAll();
	}

	@Override
	public Usuario buscar(Integer id) {
		Optional<Usuario> usuario = repo.findById(id);
		return usuario.isPresent() ? usuario.get() : null;
	}

	@Override
	public Usuario guardar(Usuario usuario) {
		return repo.save(usuario);
	}

	@Override
	public void eliminar(Integer id) {
		repo.deleteById(id);
	}
	
	
	
}
