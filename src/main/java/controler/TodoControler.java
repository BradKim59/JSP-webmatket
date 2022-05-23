package controler;

import java.io.IOException;

import dao.TodoRepository;
import dto.Todo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//톰캣에 컨트롤러의 존재를 노출
@WebServlet(name = "TodoControler", urlPatterns = {"/addTodo.do", "/toggleTodo.do", "/removeTodo.do"})
public class TodoControler extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8514410290642283648L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	TodoRepository repository = TodoRepository.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//요청주소 (예를 들면 processAddTodo.do)
		String command = req.getRequestURI().substring(req.getContextPath().length());
		
		if (command.equals("/addTodo.do")) {
			String task = req.getParameter("task");

			Todo todo = new Todo(task);

			TodoRepository repository = TodoRepository.getInstance();
			repository.addTodo(todo);
			
		} else if(command.equals("/toggleTodo.do")) {
			long id = Long.parseLong(req.getParameter("id"));
			repository.toggle(id);

			
		} else if(command.equals("/removeTodo.do")) {
			long id = Long.parseLong(req.getParameter("id"));
			repository.remove(id);
		}
		
		
		req.setAttribute("todos", repository.getTodos());
		
		//리다이렉트 하면서 주소창에는 노출 안함
		req.getRequestDispatcher("todolist.jsp").forward(req,resp);
	}

}
