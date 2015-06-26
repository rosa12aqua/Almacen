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
public class regisAlmacen extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = req.getParameter("name");
		String tipoElem = req.getParameter("tipoElem");
		String localizacion = req.getParameter("localizacion");
		String codigo = req.getParameter("codigo");
		
		int id=Integer.parseInt(codigo);
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Almacen A = new Almacen(name, tipoElem, localizacion, id);		

		//PrintWriter out = resp.getWriter();
		//resp.setContentType("text/html");
		try{
			pm.makePersistent(A);
		}catch(Exception e){
			System.out.println(e);
			RequestDispatcher rd1 = req. getRequestDispatcher ("errordate.jsp");
			rd1. forward (req, resp);
		}finally{
			if(pm.currentTransaction().isActive()){
				pm.currentTransaction().rollback();
			}
			final Query q =pm.newQuery(Almacen.class);
			q.setOrdering("id descending");

			try{
				@SuppressWarnings("unchecked")
				List<Almacen> almacen = (List<Almacen>) q.execute();
				req.setAttribute("almacen", almacen);
				req.setAttribute("formAlmacen", false);			
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
