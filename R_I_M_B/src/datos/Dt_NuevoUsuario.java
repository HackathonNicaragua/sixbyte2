package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import entidades.Tbl_Usuario;

public class Dt_NuevoUsuario 
{
	PoolConexion pc = PoolConexion.getInstance(); 
	Connection c = PoolConexion.getConnection();
	private ResultSet rsUsuario;
	
	// Metodo para visualizar todos los Usuarios
	public ArrayList<Tbl_Usuario> listarUsuario()
	{
		ArrayList<Tbl_Usuario> listaUser = new ArrayList<Tbl_Usuario>();
		try
		{
			PreparedStatement ps = c.prepareStatement("SELECT * FROM rimb.usuario;");
			rsUsuario = ps.executeQuery();
			while(rsUsuario.next())
			{
				Tbl_Usuario tbr = new Tbl_Usuario();
				tbr.setIdentificacion(rsUsuario.getString("identificacion"));
				tbr.setNombreUser(rsUsuario.getString("nombreUsuario"));
				tbr.setPwd(rsUsuario.getString("contrasenia"));
				tbr.setEmail(rsUsuario.getString("correo"));
				tbr.setCentroEstudio(rsUsuario.getString("centroEstudio"));
				tbr.setCelular(rsUsuario.getString("celular"));
				tbr.setTelefono(rsUsuario.getString("telefeono"));
				tbr.setDireccion(rsUsuario.getString("direccion"));
				tbr.setObjetivos(rsUsuario.getString("objetivos"));
				
				listaUser.add(tbr);
			}
		}
		catch (Exception e)
		{
			System.out.println("DATOS: ERROR en listarUsuarios() "+ e.getMessage());
			e.printStackTrace();
		}
		
		return listaUser;
	}
	
	


}
