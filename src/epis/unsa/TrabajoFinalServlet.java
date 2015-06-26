package epis.unsa;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class TrabajoFinalServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		try{
			resp.getWriter().println("Hello, world");
			RequestDispatcher rd = req. getRequestDispatcher ("vista1.jsp");
	        rd. forward (req, resp);
	        RequestDispatcher rd1 = req. getRequestDispatcher ("vista2.jsp");
	        rd. forward (req, resp);
	        RequestDispatcher rd2 = req. getRequestDispatcher ("vista3.jsp");
	        rd. forward (req, resp);
	        RequestDispatcher rd3 = req. getRequestDispatcher ("vista4.jsp");
	        rd. forward (req, resp);
	        RequestDispatcher rd4 = req. getRequestDispatcher ("vista5.jsp");
	        rd. forward (req, resp);
	        RequestDispatcher rd5 = req. getRequestDispatcher ("vista6.jsp");
	        rd. forward (req, resp);
	        RequestDispatcher rd6 = req. getRequestDispatcher ("vista7.jsp");
	        rd. forward (req, resp);
	        RequestDispatcher rd7 = req. getRequestDispatcher ("vista8.jsp");
	        rd. forward (req, resp);
	        RequestDispatcher rd8 = req. getRequestDispatcher ("vista9.jsp");
	        rd. forward (req, resp);
	        RequestDispatcher rd9 = req. getRequestDispatcher ("vista10.jsp");
	        rd. forward (req, resp);
		}catch(Exception e){
			resp.getWriter().println("Error al entrar");
		}
		
	}
}
