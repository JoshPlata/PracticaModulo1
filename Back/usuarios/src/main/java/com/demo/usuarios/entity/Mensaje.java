package com.demo.usuarios.entity;

public class Mensaje {

	boolean exitoso;
	String texto;
	
	public Mensaje() {
		
	}
	
	public Mensaje(boolean exitoso, String texto) {
		this.exitoso = exitoso;
		this.texto = texto;
	}

	public boolean isExitoso() {
		return exitoso;
	}
	public void setExitoso(boolean exitoso) {
		this.exitoso = exitoso;
	}
	public String getTexto() {
		return texto;
	}
	public void setTexto(String texto) {
		this.texto = texto;
	}
	@Override
	public String toString() {
		return "Mensaje [exitoso=" + exitoso + ", texto=" + texto + "]";
	}
	
}
