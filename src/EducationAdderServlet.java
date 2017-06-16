

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EducationAdderServlet")
public class EducationAdderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public EducationAdderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		ArrayList<Education> educations = (ArrayList<Education>) session.getAttribute("educations");
		Person person = (Person) session.getAttribute("person");
		session.setAttribute("educations", educations);
		
		getServletContext().getRequestDispatcher("/person.jsp").forward(request,response);
	
	}

}
