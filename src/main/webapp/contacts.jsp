<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="contact.Contact" %>
<%--
  Created by IntelliJ IDEA.
  User: baker
  Date: 4/9/21
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Contact> contacts = new ArrayList<>(Arrays.asList(
        new Contact(1, "bob", "bob@bob.com", "1 lane", "1234567", true),
        new Contact(2, "jen", "jen@jen.com", "2 drive", "7654321", false)
    ));
    request.setAttribute("contacts", contacts);
%>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Contacts"/>
    </jsp:include>
</head>
<body>
    <ol>
        <c:forEach var="contact" items="${contacts}">
            <c:if test="${contact.isActive}">
                <h2>${contact.id}</h2>
                <h2>${contact.name}</h2>
                <h2>${contact.email}</h2>
                <h2>${contact.address}</h2>
                <h2>${contact.phoneNumber}</h2>
                <hr>
                <br>
            </c:if>
        </c:forEach>
    </ol>
</body>
</html>
