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
public class regisProducto extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = req.getParameter("name");
		String tipoElem = req.getParameter("tipoElem");
		String cantidad = req.getParameter("cantidad");
		String codigo = req.getParameter("codigo");
		
		double cantidad1=Double.parseDouble(cantidad);
		int id=Integer.parseInt(codigo);
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Producto P = new Producto(name, tipoElem, cantidad1, id);		

		//PrintWriter out = resp.getWriter();
		//resp.setContentType("text/html");
		try{
			pm.makePersistent(P);
		}catch(Exception e){
			System.out.println(e);
		}finally{
			if(pm.currentTransaction().isActive()){
				pm.currentTransaction().rollback();
			}
			final Query q =pm.newQuery(Producto.class);
			q.setOrdering("id descending");

			try{
				@SuppressWarnings("unchecked")
				List<Producto> producto = (List<Producto>) q.execute();
				req.setAttribute("producto", producto);
				req.setAttribute("formProducto", false);			
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
