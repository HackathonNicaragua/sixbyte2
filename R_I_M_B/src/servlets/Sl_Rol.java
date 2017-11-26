package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entidades.Tbl_Rol;
import datos.Dt_Rol;

/**
 * Servlet implementation class Sl_Rol
 */
@WebServlet("/Sl_Rol")
public class Sl_Rol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sl_Rol() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
//		doGet(request, response);
		try
		{
			Tbl_Rol tr = new Tbl_Rol();
			Dt_Rol dtr = new Dt_Rol();
			
			tr.setNombreRol(request.getParameter("rol"));
			tr.setDescripcion(request.getParameter("descRol"));
			if(dtr.guardarRol(tr))
			{
				response.sendRedirect("index.jsp#ajax/roles.jsp?msj=1");
			}
			else
			{
				response.sendRedirect("index.jsp#ajax/roles.jsp?msj=2");
			}
		}
		catch(Exception e)
		{
			System.out.println("Error Servlet Rol"+e.getMessage());
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
