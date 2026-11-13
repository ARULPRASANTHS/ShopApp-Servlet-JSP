<%@ include file="header.jsp" %>
<h2>${empty book ? "Add" : "Edit"} Book</h2>
<form action="books" method="post">
  <input type="hidden" name="id" value="${book.id}">
  Title<br><input name="title" value="${book.title}" required><br>
  Author<br><input name="author" value="${book.author}"><br>
  Price<br><input type="number" step="0.01" name="price" value="${book.price}" required><br>
  Stock<br><input type="number" name="stock" value="${book.stock}" required><br><br>
  <button type="submit">Save</button>
</form>
</div></body></html>