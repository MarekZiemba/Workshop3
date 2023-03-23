package pl.coderslab;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        User user = userDao.read(Integer.parseInt(id));
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String username = request.getParameter("userName");
        String email = request.getParameter("userEmail");
        String password = request.getParameter("userPassword");

        UserDao userDao = new UserDao();
        User user = userDao.read(Integer.parseInt(id));
        user.setId(Integer.parseInt(id));
        user.setUserName(username);
        user.setEmail(email);
        user.setPassword(UserDao.hashPassword(password));
        userDao.update(user);
        response.sendRedirect(request.getContextPath() + "/user/list");
    }
}
