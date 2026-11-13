<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html><head><title>Shop Dashboard</title>
<style>
  body{font-family:Arial;margin:0;background:#f4f6f8}
  nav{background:#2c3e50;padding:12px}
  nav a{color:#fff;margin-right:20px;text-decoration:none;font-weight:bold}
  .box{padding:20px}
  table{border-collapse:collapse;width:100%;background:#fff}
  th,td{border:1px solid #ddd;padding:8px;text-align:left}
  th{background:#34495e;color:#fff}
  .card{display:inline-block;background:#fff;padding:20px;margin:10px;width:180px;box-shadow:0 1px 4px #aaa;text-align:center}
  .card h2{margin:5px 0;color:#2980b9}
  input,select{padding:6px;margin:5px 0;width:250px}
  button,.btn{background:#27ae60;color:#fff;border:0;padding:8px 14px;text-decoration:none;cursor:pointer}
  .del{background:#c0392b}
</style></head><body>
<nav><a href="dashboard">Dashboard</a><a href="books">Books</a><a href="bills">Bills</a></nav>
<div class="box">