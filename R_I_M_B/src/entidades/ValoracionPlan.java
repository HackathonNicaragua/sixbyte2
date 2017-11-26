package entidades;
// Generated 11-26-2017 01:03:52 AM by Hibernate Tools 5.2.3.Final

import java.util.Date;

/**
 * ValoracionPlan generated by hbm2java
 */
public class ValoracionPlan implements java.io.Serializable {

	private int idvaloracionPlan;
	private Afiliado afiliado;
	private Planestudio planestudio;
	private Usuario usuario;
	private Date fecha;

	public ValoracionPlan() {
	}

	public ValoracionPlan(int idvaloracionPlan, Afiliado afiliado, Planestudio planestudio, Usuario usuario) {
		this.idvaloracionPlan = idvaloracionPlan;
		this.afiliado = afiliado;
		this.planestudio = planestudio;
		this.usuario = usuario;
	}

	public ValoracionPlan(int idvaloracionPlan, Afiliado afiliado, Planestudio planestudio, Usuario usuario,
			Date fecha) {
		this.idvaloracionPlan = idvaloracionPlan;
		this.afiliado = afiliado;
		this.planestudio = planestudio;
		this.usuario = usuario;
		this.fecha = fecha;
	}

	public int getIdvaloracionPlan() {
		return this.idvaloracionPlan;
	}

	public void setIdvaloracionPlan(int idvaloracionPlan) {
		this.idvaloracionPlan = idvaloracionPlan;
	}

	public Afiliado getAfiliado() {
		return this.afiliado;
	}

	public void setAfiliado(Afiliado afiliado) {
		this.afiliado = afiliado;
	}

	public Planestudio getPlanestudio() {
		return this.planestudio;
	}

	public void setPlanestudio(Planestudio planestudio) {
		this.planestudio = planestudio;
	}

	public Usuario getUsuario() {
		return this.usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

}