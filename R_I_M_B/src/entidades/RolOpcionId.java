package entidades;
// Generated 11-26-2017 01:03:52 AM by Hibernate Tools 5.2.3.Final

/**
 * RolOpcionId generated by hbm2java
 */
public class RolOpcionId implements java.io.Serializable {

	private int idRolOpcion;
	private int idRol;
	private int idOpcion;

	public RolOpcionId() {
	}

	public RolOpcionId(int idRolOpcion, int idRol, int idOpcion) {
		this.idRolOpcion = idRolOpcion;
		this.idRol = idRol;
		this.idOpcion = idOpcion;
	}

	public int getIdRolOpcion() {
		return this.idRolOpcion;
	}

	public void setIdRolOpcion(int idRolOpcion) {
		this.idRolOpcion = idRolOpcion;
	}

	public int getIdRol() {
		return this.idRol;
	}

	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}

	public int getIdOpcion() {
		return this.idOpcion;
	}

	public void setIdOpcion(int idOpcion) {
		this.idOpcion = idOpcion;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof RolOpcionId))
			return false;
		RolOpcionId castOther = (RolOpcionId) other;

		return (this.getIdRolOpcion() == castOther.getIdRolOpcion()) && (this.getIdRol() == castOther.getIdRol())
				&& (this.getIdOpcion() == castOther.getIdOpcion());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getIdRolOpcion();
		result = 37 * result + this.getIdRol();
		result = 37 * result + this.getIdOpcion();
		return result;
	}

}