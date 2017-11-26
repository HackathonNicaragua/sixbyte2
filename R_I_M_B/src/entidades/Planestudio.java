package entidades;
// Generated 11-26-2017 01:03:52 AM by Hibernate Tools 5.2.3.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Planestudio generated by hbm2java
 */
public class Planestudio implements java.io.Serializable {

	private int idplanEstudio;
	private Afiliado afiliado;
	private Carrera carrera;
	private String nombrePlan;
	private String urlPlan;
	private Set valoracionPlans = new HashSet(0);

	public Planestudio() {
	}

	public Planestudio(int idplanEstudio, Afiliado afiliado, Carrera carrera) {
		this.idplanEstudio = idplanEstudio;
		this.afiliado = afiliado;
		this.carrera = carrera;
	}

	public Planestudio(int idplanEstudio, Afiliado afiliado, Carrera carrera, String nombrePlan, String urlPlan,
			Set valoracionPlans) {
		this.idplanEstudio = idplanEstudio;
		this.afiliado = afiliado;
		this.carrera = carrera;
		this.nombrePlan = nombrePlan;
		this.urlPlan = urlPlan;
		this.valoracionPlans = valoracionPlans;
	}

	public int getIdplanEstudio() {
		return this.idplanEstudio;
	}

	public void setIdplanEstudio(int idplanEstudio) {
		this.idplanEstudio = idplanEstudio;
	}

	public Afiliado getAfiliado() {
		return this.afiliado;
	}

	public void setAfiliado(Afiliado afiliado) {
		this.afiliado = afiliado;
	}

	public Carrera getCarrera() {
		return this.carrera;
	}

	public void setCarrera(Carrera carrera) {
		this.carrera = carrera;
	}

	public String getNombrePlan() {
		return this.nombrePlan;
	}

	public void setNombrePlan(String nombrePlan) {
		this.nombrePlan = nombrePlan;
	}

	public String getUrlPlan() {
		return this.urlPlan;
	}

	public void setUrlPlan(String urlPlan) {
		this.urlPlan = urlPlan;
	}

	public Set getValoracionPlans() {
		return this.valoracionPlans;
	}

	public void setValoracionPlans(Set valoracionPlans) {
		this.valoracionPlans = valoracionPlans;
	}

}
