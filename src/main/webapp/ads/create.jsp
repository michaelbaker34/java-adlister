<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Ad</title>
</head>
<body>

<h1>Create an Ad</h1>
<form action="/ads/create" method="POST">
    <label for="title">Title</label>
    <input id="title" type="text" name="title" placeholder="Enter title">
    <label for="description">Description</label>
    <input id="description" type="text" name="description" placeholder="Enter description">
    <button>Submit</button>
</form>

</body>
</html>