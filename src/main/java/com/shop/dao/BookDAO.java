package com.shop.dao;

import com.shop.model.Book;
import com.shop.util.DBConnection;
import java.sql.*;
import java.util.*;

public class BookDAO {
    public List<Book> getAll() throws SQLException {
        List<Book> list = new ArrayList<>();
        try (Connection c = DBConnection.get(); Statement s = c.createStatement();
             ResultSet rs = s.executeQuery("SELECT * FROM books ORDER BY id")) {
            while (rs.next()) list.add(map(rs));
        }
        return list;
    }

    public Book getById(int id) throws SQLException {
        try (Connection c = DBConnection.get();
             PreparedStatement ps = c.prepareStatement("SELECT * FROM books WHERE id=?")) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            return rs.next() ? map(rs) : null;
        }
    }

    public void add(Book b) throws SQLException {
        try (Connection c = DBConnection.get();
             PreparedStatement ps = c.prepareStatement("INSERT INTO books(title,author,price,stock) VALUES(?,?,?,?)")) {
            ps.setString(1, b.getTitle()); ps.setString(2, b.getAuthor());
            ps.setDouble(3, b.getPrice()); ps.setInt(4, b.getStock());
            ps.executeUpdate();
        }
    }

    public void update(Book b) throws SQLException {
        try (Connection c = DBConnection.get();
             PreparedStatement ps = c.prepareStatement("UPDATE books SET title=?,author=?,price=?,stock=? WHERE id=?")) {
            ps.setString(1, b.getTitle()); ps.setString(2, b.getAuthor());
            ps.setDouble(3, b.getPrice()); ps.setInt(4, b.getStock());
            ps.setInt(5, b.getId());
            ps.executeUpdate();
        }
    }

    public void delete(int id) throws SQLException {
        try (Connection c = DBConnection.get();
             PreparedStatement ps = c.prepareStatement("DELETE FROM books WHERE id=?")) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }

    private Book map(ResultSet rs) throws SQLException {
        return new Book(rs.getInt("id"), rs.getString("title"), rs.getString("author"),
                        rs.getDouble("price"), rs.getInt("stock"));
    }
}