<%@ include file="header.jsp" %>
<h2>Books</h2>
<a class="btn" href="books?action=new">+ Add Book</a><br><br>
<table>
  <tr><th>ID</th><th>Title</th><th>Author</th><th>Price</th><th>Stock</th><th>Action</th></tr>
  <c:forEach var="b" items="${books}">
    <tr>
      <td>${b.id}</td><td>${b.title}</td><td>${b.author}</td>
      <td>&#8377;${b.price}</td><td>${b.stock}</td>
      <td>
        <a class="btn" href="books?action=edit&id=${b.id}">Edit</a>
        <a class="btn del" href="books?action=delete&id=${b.id}"
           onclick="return confirm('Need to Delete?')">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
</div></body></html>