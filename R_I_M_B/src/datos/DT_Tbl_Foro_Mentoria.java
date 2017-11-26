package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import entidades.Tbl_Foro_Mentoria;
import entidades.Tbl_Rol;

public class DT_Tbl_Foro_Mentoria 
{
	PoolConexion pc = PoolConexion.getInstance();
	Connection c = PoolConexion.getConnection();
	private ResultSet rs;
	
	public ArrayList<Tbl_Foro_Mentoria> listarForoMentoria()
	{
		System.out.println("Lista de Foro Mentoria");
		ArrayList<Tbl_Foro_Mentoria> listaForoMentoria = new ArrayList<Tbl_Foro_Mentoria>();		
		
		try
		{
			
			PreparedStatement ps = c.prepareStatement("SELECT * FROM rimb.foro_mentoria;", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = ps.executeQuery();
			while(rs.next())
			{
				Tbl_Foro_Mentoria tfm = new Tbl_Foro_Mentoria();
				tfm.setEstado(rs.getString("estado"));
				tfm.setFecha(rs.getString("fecha"));
				tfm.setNombreForo(rs.getString("nombreForo"));
				tfm.setIdUsuario(rs.getInt("idUsuario"));
				tfm.setIdUsuarioMentor(rs.getInt("idUsuarioMentor"));
				listarForoMentoria().add(tfm);
			}
		}
		catch (Exception e)
		{
			System.out.println("DATOS: ERROR en listarRoles() "+ e.getMessage());
			e.printStackTrace();
		}
		
		return listaForoMentoria;
	}
	
	public boolean guardarForoMentoria(Tbl_Foro_Mentoria tForoMentoria)
	{
		boolean guardado = false;
		PreparedStatement ps;
		String sql = "INSERT INTO `rimb`.`foro_mentoria` (`estado`,`fecha`, `nombreForo`, `idUsuario`, `idUsuarioMentor`) VALUES (?,?,?,?,?);";
		try
		{
			ps = c.prepareStatement(sql);
			ps.setString(1, tForoMentoria.getEstado());
			ps.setString(2, tForoMentoria.getFecha());
			ps.setString(3, tForoMentoria.getNombreForo());
			ps.setInt(4, tForoMentoria.getIdUsuario());
			ps.setInt(5, tForoMentoria.getIdUsuarioMentor());
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
