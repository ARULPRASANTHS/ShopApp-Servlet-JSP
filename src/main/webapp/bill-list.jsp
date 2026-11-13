<%@ include file="header.jsp" %>
<h2>Bills</h2>
<a class="btn" href="bills?action=new">+ New Bill</a><br><br>
<table>
  <tr><th>ID</th><th>Customer</th><th>Book</th><th>Qty</th><th>Total</th><th>Date</th><th>Action</th></tr>
  <c:forEach var="b" items="${bills}">
    <tr>
      <td>${b.id}</td><td>${b.customerName}</td><td>${b.bookTitle}</td>
      <td>${b.quantity}</td><td>&#8377;${b.total}</td><td>${b.billDate}</td>
      <td>
        <a class="btn" href="bills?action=edit&id=${b.id}">Edit</a>
        <a class="btn del" href="bills?action=delete&id=${b.id}"
           onclick="return confirm('Need to Delete?')">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
</div></body></html>