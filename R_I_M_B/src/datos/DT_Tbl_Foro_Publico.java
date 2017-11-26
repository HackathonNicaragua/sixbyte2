package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import entidades.Tbl_Foro_Mentoria;
import entidades.Tbl_Foro_Publico;
import entidades.Tbl_Rol;

public class DT_Tbl_Foro_Publico 
{
	PoolConexion pc = PoolConexion.getInstance();
	Connection c = PoolConexion.getConnection();
	private ResultSet rs;
	
	public ArrayList<Tbl_Foro_Publico> listarForoPublico()
	{
		System.out.println("Lista de Foro Mentoria");
		ArrayList<Tbl_Foro_Publico> listaForoPublico = new ArrayList<Tbl_Foro_Publico>();		
		
		try
		{
			
			PreparedStatement ps = c.prepareStatement("SELECT * FROM rimb.foro_publico;", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = ps.executeQuery();
			while(rs.next())
			{
				Tbl_Foro_Publico tfp = new Tbl_Foro_Publico();
				tfp.setEstado(rs.getString("estado"));
				tfp.setFecha(rs.getString("fecha"));
				tfp.setNombreForo(rs.getString("nombreForo"));
				tfp.setIdUsuario(rs.getInt("idUsuario"));				
				listarForoPublico().add(tfp);
			}
		}
		catch (Exception e)
		{
			System.out.println("DATOS: ERROR en listarRoles() "+ e.getMessage());
			e.printStackTrace();
		}
		
		return listaForoPublico;
	}
	
	public boolean guardarForoPublico(Tbl_Foro_Publico tForoPublico)
	{
		boolean guardado = false;
		PreparedStatement ps;
		String sql = "INSERT INTO `rimb`.`foro_mentoria` (`estado`,`fecha`, `nombreForo`, `idUsuario`) VALUES (?,?,?,?);";
		try
		{
			ps = c.prepareStatement(sql);
			ps.setString(1, tForoPublico.getEstado());
			ps.setString(2, tForoPublico.getFecha());
			ps.setString(3, tForoPublico.getNombreForo());
			ps.setInt(4, tForoPublico.getIdUsuario());			
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
