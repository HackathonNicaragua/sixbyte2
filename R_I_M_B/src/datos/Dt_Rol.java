package datos;
import java.util.ArrayList;

import javax.resource.cci.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.sun.tools.ws.wsdl.document.jaxws.Exception;
import com.sun.xml.ws.config.metro.parser.jsr109.String;

import entidades.Tbl_Rol;

public class Dt_Rol 
{
	
	/*******Metodo para guardar a un Rol*******/
	PoolConexion pc = PoolConexion.getInstance(); 
	Connection c = PoolConexion.getConnection();
	private ResultSet rsRol;
	
	// Metodo para visualizar todos los clientes
	public ArrayList<Tbl_Rol> listarRoles()
	{
		
		System.out.println("Listar Roles");
		ArrayList<Tbl_Rol> listaRol = new ArrayList<Tbl_Rol>();
		
		try
		{
			
			PreparedStatement ps = c.prepareStatement("SELECT * FROM rimb.rol;", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rsRol = ps.executeQuery();
			while(rsRol.next())
			{
				Tbl_Rol tbr = new Tbl_Rol();
				tbr.setIdRol(rsRol.getInt("idrol"));
				tbr.setNombreRol(rsRol.getString("rolNombre"));
				tbr.setDescripcion(rsRol.getString("descripcion"));
				listaRol.add(tbr);
			}
		}
		catch (Exception e)
		{
			System.out.println("DATOS: ERROR en listarRoles() "+ e.getMessage());
			e.printStackTrace();
		}
		
		return listaRol;
	}
	
	public boolean guardarRol(Tbl_Rol r)
	{
		
		boolean guardado = false;
		PreparedStatement ps;
		String sql = "INSERT INTO `rimb`.`rol` (`rolNombre`,`descripcion`) VALUES (?,?);";
		try
		{
			ps = c.prepareStatement(sql);
			ps.setString(1, r.getNombreRol());
			ps.setString(2, r.getDescripcion());
			ps.executeUpdate();
			guardado = true;
			
		}
		catch (Exception e) 
		{
			System.err.println("ERROR AL GUARDAR Rol "+e.getMessage());
			e.printStackTrace();
		}
		
		return guardado;
	}

}
