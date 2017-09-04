package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import services.Logic;

@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public index() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessao = request.getSession(true);
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String parametro = request.getParameter("logica"); //Recebe como parametro do jsp, qual a class do service que ir� atuar
	    String nomeDaClasse = "services." + parametro; //Nome da Classe
	    
	    try {
	      Class<?> classe = Class.forName(nomeDaClasse);
	      Logic logica = (Logic) classe.newInstance();
	      
	      String pagina = logica.execute(request, response);
	      request.getRequestDispatcher(pagina).forward(request, response);

	    } catch (Exception e) {
	      throw new ServletException(
	          "A l�gica causou uma exce��o", e);
	    }
	}

}
