<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Ads" />
    </jsp:include></head>
<body>

<h1>Ads</h1>

<c:forEach items="${ads}" var="ad">
    <div>
        <h2>Ad Id: ${ad.id}</h2>
        <h2>User Id: ${ad.userId}</h2>
        <h2>Title: ${ad.title}</h2>
        <h2>Description: ${ad.description}</h2>
    </div>
</c:forEach>

</body>
</html>