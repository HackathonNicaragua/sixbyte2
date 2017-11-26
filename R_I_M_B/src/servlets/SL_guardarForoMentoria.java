package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.DT_Tbl_Foro_Mentoria;
import entidades.Tbl_Foro_Mentoria;
import entidades.Tbl_Foro_Publico;

/**
 * Servlet implementation class SL_guardarUsuario
 */
@WebServlet("/SL_guardarForoMentoria")
public class SL_guardarForoMentoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SL_guardarForoMentoria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try 
		{
			Tbl_Foro_Mentoria tbfm = new Tbl_Foro_Mentoria();
			DT_Tbl_Foro_Mentoria dtu = new DT_Tbl_Foro_Mentoria();
			
			String nombre, fecha, estado= "";
			int idUsuario = 0; 
			int idUsuarioMentor = 0; 
			
			idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
			idUsuarioMentor = Integer.parseInt(request.getParameter("idUsuarioMentor"));
			nombre = request.getParameter("nombre");
			fecha = request.getParameter("fecha");
			estado = request.getParameter("estado");
			
			tbfm.setIdUsuario(idUsuario);
			tbfm.setIdUsuarioMentor(idUsuarioMentor);
			tbfm.setNombreForo(nombre);
			tbfm.setFecha(fecha);
			tbfm.setEstado(estado);		
			
			if (dtu.guardarForoMentoria(tbfm)) 
			{
				response.sendRedirect("index.jsp#ajax/ForoMentoria.jsp?msj=1");
			}
			else
			{
				response.sendRedirect("index.jsp#ajax/ForoMentoria.jsp?msj=2");
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			System.err.println("SL ERROR: NO SE GUARDO FORO MENTORIA: " +e.getMessage());
		}
	}

}
