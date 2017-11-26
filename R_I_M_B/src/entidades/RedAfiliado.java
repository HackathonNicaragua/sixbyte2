package entidades;
// Generated 11-26-2017 01:03:52 AM by Hibernate Tools 5.2.3.Final

/**
 * RedAfiliado generated by hbm2java
 */
public class RedAfiliado implements java.io.Serializable {

	private int idredafiliado;
	private Afiliado afiliado;
	private RedSocial redSocial;

	public RedAfiliado() {
	}

	public RedAfiliado(int idredafiliado) {
		this.idredafiliado = idredafiliado;
	}

	public RedAfiliado(int idredafiliado, Afiliado afiliado, RedSocial redSocial) {
		this.idredafiliado = idredafiliado;
		this.afiliado = afiliado;
		this.redSocial = redSocial;
	}

	public int getIdredafiliado() {
		return this.idredafiliado;
	}

	public void setIdredafiliado(int idredafiliado) {
		this.idredafiliado = idredafiliado;
	}

	public Afiliado getAfiliado() {
		return this.afiliado;
	}

	public void setAfiliado(Afiliado afiliado) {
		this.afiliado = afiliado;
	}

	public RedSocial getRedSocial() {
		return this.redSocial;
	}

	public void setRedSocial(RedSocial redSocial) {
		this.redSocial = redSocial;
	}

}
