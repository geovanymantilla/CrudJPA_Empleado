package co.edu.ufps.Controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.ufps.Dao.EmpleadoDao;
import co.edu.ufps.Entities.Empleado;

/**
 * Servlet implementation class EmpleadoController
 */
@WebServlet("/")
public class EmpleadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	private EmpleadoDao empDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpleadoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
//	public void init(ServletConfig config) throws ServletException {
//		this.empDao = new EmpleadoDao();
//	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();
		try {
			switch(action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertarEmpleado(request, response);
				break;
			case "/delete":
				eliminarEmpleado(request, response);
				break;
			case "/edit":
				showEditEmpleado(request, response);
				break;
			case "/update":
				actualizarEmpleado(request, response);
				break;
			case "/buscar":
				buscarEmpleado(request,response);
				break;
			default:
				listEmpleado(request,response);	
					
			}
			}catch(SQLException e){
				throw new ServletException(e);
			}
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("formEmpleado.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showEditEmpleado(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, ServletException, IOException {
			String id=request.getParameter("codigo");
			EmpleadoDao eDao=new EmpleadoDao();
			Empleado e =eDao.find(id);
			
			request.setAttribute("empleado", e);
			RequestDispatcher dispatcher = request.getRequestDispatcher("formEmpleado.jsp");
			dispatcher.forward(request, response);

		    }
	private void insertarEmpleado(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		// TODO Auto-generated method stub
		
		EmpleadoDao empDao= new EmpleadoDao();
		String codigo= request.getParameter("codigo");
		String cedula= request.getParameter("cedula");
		String nombre= request.getParameter("nombre");		
		String nacimiento = request.getParameter("fechaNacimiento");
        String ingreso = request.getParameter("fechaIngreso");
        String retiro = request.getParameter("fechaRetiro");
        Date fechaNac=Date.valueOf(nacimiento);
        Date fechaIng=Date.valueOf(ingreso);
        Date fechaRet=Date.valueOf(retiro);
        Empleado empleado = new Empleado(codigo,cedula,nombre,fechaNac,fechaIng,fechaRet);
	
		empDao.insert(empleado);
//		request.getRequestDispatcher("/empList.jsp").forward(request, response);
		response.sendRedirect("list");			
	}
	
	private void listEmpleado(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException,ServletException, IOException  {
				EmpleadoDao empDao= new EmpleadoDao();				
		        List < Empleado > listEmpleado = empDao.list();
		        request.setAttribute("listEmpleado", listEmpleado);
		        RequestDispatcher dispatcher = request.getRequestDispatcher("empList.jsp");
		        dispatcher.forward(request, response);
		    }
	private void actualizarEmpleado(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException {
		EmpleadoDao empDao= new EmpleadoDao();
		String codigo= request.getParameter("codigo");
		String cedula= request.getParameter("cedula");
		String nombre= request.getParameter("nombre");		
		String nacimiento = request.getParameter("fechaNacimiento");
        String ingreso = request.getParameter("fechaIngreso");
        String retiro = request.getParameter("fechaRetiro");
        Date fechaNac=Date.valueOf(nacimiento);
        Date fechaIng=Date.valueOf(ingreso);
        Date fechaRet=Date.valueOf(retiro);
        Empleado empleado = new Empleado(codigo,cedula,nombre,fechaNac,fechaIng,fechaRet);
        empDao.update(empleado);
//		        cursoDao.update(cur);
        response.sendRedirect("list");
		    }

	private void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException {
		EmpleadoDao empDao= new EmpleadoDao();
		
		String codigo= request.getParameter("codigo");
		Empleado e =empDao.find(codigo);
		empDao.delete(e);
		        response.sendRedirect("list");
	}
	
	private void buscarEmpleado(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String codigo=request.getParameter("codigo");
		EmpleadoDao eDao=new EmpleadoDao();
		Empleado e =eDao.find(codigo);
		
		request.setAttribute("empleado", e);
		RequestDispatcher dispatcher = request.getRequestDispatcher("formEmpleado.jsp");
		dispatcher.forward(request, response);
	}

}
