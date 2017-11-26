package datos;
import entidades.Tbl_Rol;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Dt_Rol 
{
	
	PoolConexion pc = PoolConexion.getInstance(); 
	Connection c = PoolConexion.getConnection();
	private ResultSet rsRol;
	
	// Metodo para visualizar todos los clientes
	public ArrayList<Tbl_Rol> listarRoles()
	{
		ArrayList<Tbl_Rol> listaRol = new ArrayList<Tbl_Rol>();
		try
		{
			PreparedStatement ps = c.prepareStatement("SELECT * FROM rimb.rol;");
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
