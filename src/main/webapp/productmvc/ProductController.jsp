<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="../errorpage.html" import="pxu.edu.vn.baitapmot.ProductModel" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		public ArrayList<ProductModel> getProduct(){
			ArrayList<ProductModel> result = new ArrayList();
			result.add(new ProductModel(1,"Ao 1"));
			result.add(new ProductModel(2,"Quan 2"));
			result.add(new ProductModel(3,"Ao quan 3"));
			return result;
		}
	%>
	<%!
		ArrayList<ProductModel> dssp = getProduct();
	%>
	<table class="tg">
<thead>
  <tr>
    <th class="">ID</th>
    <th class="">Ten</th>
  </tr>
</thead>
<%for(ProductModel itr:dssp){ %>
<tbody>
  <tr>
    <td class=""><%out.println(itr.getId());%></td>
    <td class=""><%out.println(itr.getProductName());%></td>
  </tr>
<%} %>
</tbody>
</table>
</body>
</html>