package backend.control;

import backend.dao.LoginDAO;
import backend.model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

@WebServlet("/frontend/html/Login")
public class Login extends HttpServlet {
    int count = 0;
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
        String captcha = request.getParameter("captcha");
        String recaptcha = request.getParameter("re-captcha");
        String error = null;
        Random rd = new Random();
        HttpSession ss = request.getSession();
        Account account;
        try {
            if (action.equals("login")) {
                if ((account = LoginDAO.checkLogin(username, pass)) != null) {
                    if(recaptcha == null) {
                        ss.setAttribute("account", account);
                        response.sendRedirect("/index.jsp");
                        System.out.print("Success");
                    } else if(captcha.equals(recaptcha)){
                        ss.setAttribute("account", account);
                        response.sendRedirect("/index.jsp");
                        System.out.print("Success captcha");
                    } else {
                        error = ""+ rd.nextInt(100000);
                        ss.setAttribute("error", error);
//                        request.getRequestDispatcher("login.jsp").forward(request, response);
                        response.sendRedirect("login.jsp");
                        System.out.print("Fail");
                    }
                } else {
//                    String err = "Sai thông tin đăng nhập!";
//                    request.setAttribute("err", err);
//                    request.getRequestDispatcher("login.jsp").forward(request, response);
                    count++;
                    if(count<3){
                        error = "Tên đăng nhập sai hoặc mật khẩu không đúng";
                        ss.setAttribute("error", error);
                    } else {
                        error = ""+ rd.nextInt(100000);
                        ss.setAttribute("error", error);
                    }
//                    request.getRequestDispatcher("login.jsp").forward(request, response);
                    response.sendRedirect("login.jsp");
                }
            } else if (action.equals("logout")) {
                ss.removeAttribute("account");
                response.sendRedirect("/index.jsp");
            }
        } catch (NullPointerException e) {
            response.sendRedirect("login.jsp");
        }
    }
}
