package entidades;

public class Tbl_Foro_Mentoria 
{
	//Atributos
	private int idforomentoria;
	private int idUsuario;
	private int idUsuarioMentor;
	private String nombreForo;
	private String fecha;
	private String estado;
	
	
	//Metodos
	
	public int getIdforomentoria() {
		return idforomentoria;
	}
	public void setIdforomentoria(int idforomentoria) {
		this.idforomentoria = idforomentoria;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public int getIdUsuarioMentor() {
		return idUsuarioMentor;
	}
	public void setIdUsuarioMentor(int idUsuarioMentor) {
		this.idUsuarioMentor = idUsuarioMentor;
	}
	public String getNombreForo() {
		return nombreForo;
	}
	public void setNombreForo(String nombreForo) {
		this.nombreForo = nombreForo;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
}
