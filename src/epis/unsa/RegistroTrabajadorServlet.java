package epis.unsa;

import java.io.IOException;

import javax.jdo.Query;

import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;



@SuppressWarnings("serial")
public class RegistroTrabajadorServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = req.getParameter("name");
		String latname = req.getParameter("latname");
		String email = req.getParameter("email");
		String numCEL = req.getParameter("numCel");
		String dni = req.getParameter("dni");
		String id = req.getParameter("id");		

		int numCel=Integer.parseInt(numCEL);
		int DNI=Integer.parseInt(dni);
		int ID=Integer.parseInt(id);		

		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Trabajador T = new Trabajador(name, latname, email, numCel, DNI, ID );		

		//PrintWriter out = resp.getWriter();
		//resp.setContentType("text/html");
		try{
			pm.makePersistent(T);
		}catch(Exception e){
			System.out.println(e);
		}finally{
			if(pm.currentTransaction().isActive()){
				pm.currentTransaction().rollback();
			}
			final Query q =pm.newQuery(Trabajador.class);
			q.setOrdering("id descending");

			try{
				@SuppressWarnings("unchecked")
				List<Trabajador> trabajador = (List<Trabajador>) q.execute();
				req.setAttribute("trabajador", trabajador);
				req.setAttribute("formTrabajador", false);			
				RequestDispatcher rd = req. getRequestDispatcher ("mostrarname.jsp");
				rd. forward (req, resp);

			}catch(Exception e){
				System.out.println(e);
				RequestDispatcher rd1 = req. getRequestDispatcher ("errordate.jsp");
				rd1. forward (req, resp);
			}finally{
				if(pm.currentTransaction().isActive()){
					pm.currentTransaction().rollback();
				}

				q.closeAll();
			}
			pm.close();
		}
	}
}
