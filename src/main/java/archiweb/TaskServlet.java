package archiweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class TaskServlet extends HttpServlet {
    private List<String> tasks = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("tasks", tasks); // Passez la liste à la JSP
        req.getRequestDispatcher("/Task.jsp").forward(req, resp); // Chargez la page JSP
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String task = req.getParameter("task"); // Récupérez la tâche depuis le formulaire
        if (task != null && !task.trim().isEmpty()) {
            tasks.add(task); // Ajoutez la tâche à la liste
        }
        resp.sendRedirect("tasks"); // Redirection vers la méthode GET
    }
}
