package pl.coderslab;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp")
                .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = new User();
        user.setUserName(request.getParameter("userName"));
        user.setEmail(request.getParameter("userEmail"));
        user.setPassword(request.getParameter("userPassword"));

        UserDao userDao = new UserDao();
        userDao.create(user);
        // Ustawienie atrybutów w żądaniu
        request.setAttribute("userName", user.getUserName());
        request.setAttribute("userEmail", user.getEmail());
        request.setAttribute("userPassword", user.getPassword());
        // Przekierowanie do listy użytkowników z przekazaniem atrybutów
        response.sendRedirect(request.getContextPath() + "/user/list");

    }
}
