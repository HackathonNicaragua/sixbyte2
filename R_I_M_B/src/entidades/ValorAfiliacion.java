package entidades;
// Generated 11-26-2017 01:03:52 AM by Hibernate Tools 5.2.3.Final

import java.util.HashSet;
import java.util.Set;

/**
 * ValorAfiliacion generated by hbm2java
 */
public class ValorAfiliacion implements java.io.Serializable {

	private int idvalorAfiliacion;
	private String valorBase;
	private String estado;
	private Set afiliados = new HashSet(0);

	public ValorAfiliacion() {
	}

	public ValorAfiliacion(int idvalorAfiliacion, String valorBase) {
		this.idvalorAfiliacion = idvalorAfiliacion;
		this.valorBase = valorBase;
	}

	public ValorAfiliacion(int idvalorAfiliacion, String valorBase, String estado, Set afiliados) {
		this.idvalorAfiliacion = idvalorAfiliacion;
		this.valorBase = valorBase;
		this.estado = estado;
		this.afiliados = afiliados;
	}

	public int getIdvalorAfiliacion() {
		return this.idvalorAfiliacion;
	}

	public void setIdvalorAfiliacion(int idvalorAfiliacion) {
		this.idvalorAfiliacion = idvalorAfiliacion;
	}

	public String getValorBase() {
		return this.valorBase;
	}

	public void setValorBase(String valorBase) {
		this.valorBase = valorBase;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Set getAfiliados() {
		return this.afiliados;
	}

	public void setAfiliados(Set afiliados) {
		this.afiliados = afiliados;
	}

}
