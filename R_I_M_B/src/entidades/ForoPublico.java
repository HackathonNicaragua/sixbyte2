package entidades;
// Generated 11-26-2017 01:03:52 AM by Hibernate Tools 5.2.3.Final

import java.util.Date;

/**
 * ForoPublico generated by hbm2java
 */
public class ForoPublico implements java.io.Serializable {

	private int idforoPublico;
	private Usuario usuario;
	private String nombre;
	private Date fecha;
	private String estado;

	public ForoPublico() {
	}

	public ForoPublico(int idforoPublico, Usuario usuario) {
		this.idforoPublico = idforoPublico;
		this.usuario = usuario;
	}

	public ForoPublico(int idforoPublico, Usuario usuario, String nombre, Date fecha, String estado) {
		this.idforoPublico = idforoPublico;
		this.usuario = usuario;
		this.nombre = nombre;
		this.fecha = fecha;
		this.estado = estado;
	}

	public int getIdforoPublico() {
		return this.idforoPublico;
	}

	public void setIdforoPublico(int idforoPublico) {
		this.idforoPublico = idforoPublico;
	}

	public Usuario getUsuario() {
		return this.usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

}
