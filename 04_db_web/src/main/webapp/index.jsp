<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="index.css" >
</head>
<body>

<div class="add-res">
    <form action="" method="POST" enctype="multipart/form-data">
        <input type="text" name="name" placeholder="name"> <br>
        <input type="text" name="place" placeholder="place"> <br>
        <input type="file" name="img"> <br>
        <button>Add</button>
    </form>
</div>

<hr>

<div class="res-wrap">

    <c:forEach items="${restaurants}" var="r">

        <div class="res-card">
            <div>
                <img src="upload/${r.img}">
            </div>
            <div> ${r.name}</div>
            <div> ${r.place}</div>
        </div>

    </c:forEach>

</div>

</body>
</html>