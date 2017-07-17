<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pagetitle" value="Contact Me"></c:set>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contact me</title>
    <link href="https://fonts.googleapis.com/css?family=Aclonica" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css"
          integrity="sha384-PBQ3DCnj5UzTq9BaAwhyCcTakU9E29ketE8fv2XE2IA56jEf3Y/6mqH+qjOPSJ7l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css"
          integrity="sha384-FsVwl/hVBUdOu6qUSR/UqiiNNF4rm7SAdoLvwgsFRR+ot4twKvPQGZAKl7Czb/VK" crossorigin="anonymous">
    <link rel="stylesheet" href="css/contactus.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class='wrapper'>
    <div class="hero">
        <nav class="navbar navbar-default navbar-custom">
            <div class="container-fluid">
                <div class="navbar-header navbar-header-custom">
                    <a class="navbar-brand navbar-logo" href="#">
                        <img src="images/logo.png" alt="rokomari logo">
                    </a>
                </div>

                <!--custom toggle button  -->
                <div class="togglebtn hidden-md hidden-lg" id="toggleBtn">
                    <span class="top"></span>
                    <span class="middle"></span>
                    <span class="bottom"></span>
                </div>

                <!--offcanvas menu on mobile view  -->
                <div class="overlay" id="offCanvasMenu">
                    <nav class="overlay-menu">
                        <ul>
                            <li ><a href="<c:url value="/" />">Home</a></li>
                            <li><a href="<c:url value="/contactus" />">Contacts</a></li>
                        </ul>
                    </nav>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav  navbar-right navbar-menus">
                        <li class="active"><a href="<c:url value="/" />">Home <span class="sr-only">(current)</span></a></li>
                        <li><a href="<c:url value="/contactus" />">Contacts</a></li>
                    </ul>
                </div>
            </div>
        </nav>
<%--<%@ include file="header.jsp" %>--%>
<div class="container" style="width: 800px">
    <form action="<c:url value="/contactus/save"/>" method="post" >

        <label for="name">Name</label>
        <input type="text" id="name" name="name" placeholder="Your name..">
        <label for="phone">Phone</label>
        <input type="text" id="phone" name="phone" placeholder="Your phone..">
        <label for="email">Email</label>
        <input type="text" id="email" name="email" placeholder="Your email..">
        <label for="message">Subject</label>
        <textarea id="message" name="message" placeholder="Write something.." style="height:200px"></textarea>

        <%--<input type="submit" value="Submit">--%>
        <button type="submit" class="btn btnSave">Submit</button>

    </form>
</div>
</div>
</div>

<script type="text/javascript"
        src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
