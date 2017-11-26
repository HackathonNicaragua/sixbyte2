package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.DT_Tbl_Foro_Publico;
import entidades.Tbl_Foro_Publico;

/**
 * Servlet implementation class SL_guardarUsuario
 */
@WebServlet("/SL_guardarForoPublico")
public class SL_guardarForoPublico extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SL_guardarForoPublico() {
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
			Tbl_Foro_Publico tbfp = new Tbl_Foro_Publico();
			DT_Tbl_Foro_Publico dtu = new DT_Tbl_Foro_Publico();
			
			String nombre, fecha, estado= "";
			int idUsuario = 0; 
			
			idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
			nombre = request.getParameter("nombre");
			fecha = request.getParameter("fecha");
			estado = request.getParameter("estado");
			
			tbfp.setIdUsuario(idUsuario);
			tbfp.setNombreForo(nombre);
			tbfp.setFecha(fecha);
			tbfp.setEstado(estado);		
			
			if (dtu.guardarForoPublico(tbfp)) 
			{
				response.sendRedirect("index.jsp#ajax/ForosPublico.jsp?msj=1");
			}
			else
			{
				response.sendRedirect("index.jsp#ajax/ForosPublico.jsp?msj=2");
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			System.err.println("SL ERROR: NO SE GUARDO FORO PUBLICO: " +e.getMessage());
		}
	}

}
