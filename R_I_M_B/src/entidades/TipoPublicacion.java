package entidades;
// Generated 11-26-2017 01:03:52 AM by Hibernate Tools 5.2.3.Final

import java.util.HashSet;
import java.util.Set;

/**
 * TipoPublicacion generated by hbm2java
 */
public class TipoPublicacion implements java.io.Serializable {

	private int idpublicacion;
	private TematicaPublicacion tematicaPublicacion;
	private String tipoPublicacion;
	private Set publicacions = new HashSet(0);

	public TipoPublicacion() {
	}

	public TipoPublicacion(int idpublicacion, TematicaPublicacion tematicaPublicacion, String tipoPublicacion) {
		this.idpublicacion = idpublicacion;
		this.tematicaPublicacion = tematicaPublicacion;
		this.tipoPublicacion = tipoPublicacion;
	}

	public TipoPublicacion(int idpublicacion, TematicaPublicacion tematicaPublicacion, String tipoPublicacion,
			Set publicacions) {
		this.idpublicacion = idpublicacion;
		this.tematicaPublicacion = tematicaPublicacion;
		this.tipoPublicacion = tipoPublicacion;
		this.publicacions = publicacions;
	}

	public int getIdpublicacion() {
		return this.idpublicacion;
	}

	public void setIdpublicacion(int idpublicacion) {
		this.idpublicacion = idpublicacion;
	}

	public TematicaPublicacion getTematicaPublicacion() {
		return this.tematicaPublicacion;
	}

	public void setTematicaPublicacion(TematicaPublicacion tematicaPublicacion) {
		this.tematicaPublicacion = tematicaPublicacion;
	}

	public String getTipoPublicacion() {
		return this.tipoPublicacion;
	}

	public void setTipoPublicacion(String tipoPublicacion) {
		this.tipoPublicacion = tipoPublicacion;
	}

	public Set getPublicacions() {
		return this.publicacions;
	}

	public void setPublicacions(Set publicacions) {
		this.publicacions = publicacions;
	}

}