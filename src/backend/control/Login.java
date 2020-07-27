package backend.control;

import backend.dao.LoginDAO;
import backend.model.Account;
import libs.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/frontend/html/Login")
public class Login extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("id-input");
        String pass = request.getParameter("pass-input");
        String action = request.getParameter("action");
        Account account;

        if (action.equals("login")) {
            if ((account = LoginDAO.checkLogin(username, pass)) != null) {
                System.out.println(account.getUsername());
                HttpSession ss = request.getSession();
                ss.setAttribute("account", account);
                response.sendRedirect(Utils.fullPath("frontend/html/index.html"));
                System.out.println("ok");
            } else {
                String err = "Sai thông tin đăng nhập";
                request.setAttribute("err", err);
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        } else if (action.equals("logout")) {
            HttpSession ss = request.getSession();
            ss.removeAttribute("account");
            response.sendRedirect(Utils.fullPath("frontend/html/index.html"));
        }

    }
}
