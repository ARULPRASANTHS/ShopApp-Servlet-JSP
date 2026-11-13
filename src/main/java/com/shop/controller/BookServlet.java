package com.shop.controller;
import com.shop.dao.BookDAO;
import com.shop.model.Book;
import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/books")
public class BookServlet extends HttpServlet {
    private BookDAO dao = new BookDAO();

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) action = "list";
        try {
            switch (action) {
                case "new":
                    req.getRequestDispatcher("book-form.jsp").forward(req, res);
                    break;
                case "edit":
                    req.setAttribute("book", dao.getById(Integer.parseInt(req.getParameter("id"))));
                    req.getRequestDispatcher("book-form.jsp").forward(req, res);
                    break;
                case "delete":
                    dao.delete(Integer.parseInt(req.getParameter("id")));
                    res.sendRedirect("books");
                    break;
                default:
                    req.setAttribute("books", dao.getAll());
                    req.getRequestDispatcher("book-list.jsp").forward(req, res);
            }
        } catch (SQLException e) { throw new ServletException(e); }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Book b = new Book();
        b.setTitle(req.getParameter("title"));
        b.setAuthor(req.getParameter("author"));
        b.setPrice(Double.parseDouble(req.getParameter("price")));
        b.setStock(Integer.parseInt(req.getParameter("stock")));
        String id = req.getParameter("id");
        try {
            if (id == null || id.isEmpty()) dao.add(b);
            else { b.setId(Integer.parseInt(id)); dao.update(b); }
        } catch (SQLException e) { throw new ServletException(e); }
        res.sendRedirect("books");
    }
}