<%@ include file="header.jsp" %>
<h2>${empty bill ? "New" : "Edit"} Bill</h2>
<form action="bills" method="post">
  <input type="hidden" name="id" value="${bill.id}">
  Customer Name<br><input name="customerName" value="${bill.customerName}" required><br>
  Book<br>
  <select name="bookId">
    <c:forEach var="k" items="${books}">
      <option value="${k.id}" ${k.id == bill.bookId ? 'selected' : ''}>${k.title} - &#8377;${k.price}</option>
    </c:forEach>
  </select><br>
  Quantity<br><input type="number" min="1" name="quantity" value="${bill.quantity}" required><br><br>
  <button type="submit">Save</button>
</form>
</div></body></html>