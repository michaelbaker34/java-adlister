<%--
  Created by IntelliJ IDEA.
  User: baker
  Date: 4/8/21
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if ((request.getParameter("displayName").equalsIgnoreCase("admin")) && (request.getParameter("password").equalsIgnoreCase("password"))) {
        response.sendRedirect("/profile.jsp");
    }
%>

<html>
<head>
    <title>Login</title>
</head>
<body>

    <form action="${pageContext.request.contextPath}/login.jsp" method="post">
        <label for="displayName">Enter Name</label>
        <input id="displayName" type="text" name="displayName">
        <label for="password">Enter Password</label>
        <input id="password" type="password" name="password">
        <button>Submit</button>
    </form>

    <p>displayName: <%= request.getParameter("displayName") %></p>
    <p>password: <%= request.getParameter("password") %></p>
    <p>method attribute: <%= request.getMethod() %></p>
    <p>path: <%= request.getRequestURL() %></p>
    <p>query string: <%= request.getQueryString() %></p>

</body>
</html>
