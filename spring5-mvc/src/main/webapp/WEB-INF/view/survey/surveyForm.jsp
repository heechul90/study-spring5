<%--
  Created by IntelliJ IDEA.
  User: hclee
  Date: 2022-01-05
  Time: 오후 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>설문조사</title>
</head>
<body>
    <h2>설문조사</h2>
    <form method="post">
        <p>
            1. 당신의 역학을</br>
            <label>
                <input type="rodio" name="responses[0]" value="서버">서버개발자
                <input type="rodio" name="responses[0]" value="프론트">프론트개발자
                <input type="rodio" name="responses[0]" value="풀스택">풀스택개발자
            </label>
        </p>
        <p>
            2. 가장 많이 사용하는 개발도구는?</br>
            <label>
                <input type="rodio" name="responses[1]" value="Eclipse">Eclipse
                <input type="rodio" name="responses[1]" value="Intellij">Intellij
                <input type="rodio" name="responses[1]" value="Sublime">Sublime
            </label>
        </p>
        <p>
            3. 하고싶은 말</br>
            <input type="rodio" name="responses[2]">
        </p>
        <p>
            <label>응답자 위치:</br>
                <input type="text" name="res.location">
            </label>
        </p>
        <p>
            <label>응답자 나이:</br>
                <input type="text" name="res.age">
            </label>
        </p>
        <input type="submit" value="전성">
    </form>
</body>
</html>
