<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:set var="pagetitle" value="Welcome"></c:set>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
                            <li><a href="<c:url value="/post" />">Post</a></li>
                            <li><a href="<c:url value="/contactus" />">Contacts</a></li>
                        </ul>
                    </nav>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav  navbar-right navbar-menus">
                        <li class="active"><a href="<c:url value="/" />">Home <span class="sr-only">(current)</span></a></li>
                        <li><a href="<c:url value="/post" />">Post</a></li>
                        <li><a href="<c:url value="/contactus" />">Contacts</a></li>
                    </ul>
                </div>
            </div>
        </nav>
<%--<%@ include file="header.jsp" %>--%>
        <div class='hero-slider'>
            <div id='owlCarousel' class="owl-carousel owl-theme">
                <div class='hero-slider-content'>
                    <img src="images/banner.jpg" alt="Banner image">
                </div>
                <div class='hero-slider-content'>
                    <img src="images/banner.jpg" alt="Banner image">
                </div>
                <%--<div class='hero-slider-content'>--%>
                    <%--<img src="images/banner.jpg" alt="Banner image">--%>
                <%--</div>--%>
                <%--<div class='hero-slider-content'>--%>
                    <%--<img src="images/banner.jpg" alt="Banner image">--%>
                <%--</div>--%>
                <%--<div class='hero-slider-content'>--%>
                    <%--<img src="images/banner.jpg" alt="Banner image">--%>
                <%--</div>--%>
            </div>
        </div>
    </div>

    <div class="services">
        <div class="row">
            <c:forEach items="${posts}" var="post" varStatus="i">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 service-block">
                <div class="service-heading">
                    <div class="service-serial">
                        <span>${i.index+1}</span>
                    </div>
                    <h1 class="service-name">
                        <c:set var ="title" value="${fn:substring(post.title,0 ,20)}"/>
                        ${title}
                    </h1>
                </div>

                <ul class="service-list">
                    <li>
                        <c:set var ="details" value="${fn:substring(post.details,0 ,200 )}"/>
                        ${details}
                        <c:set var ="length" value="${fn:length(post.details)}"/>
                    </li>
                </ul>

                <c:if test="${length >100}">
                <a href="#" class="service-read-more">
                    Read More
                </a>
                </c:if>
            </div>
            </c:forEach>

            <%--<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">--%>
                <%--<div class="service-heading">--%>
                    <%--<div class="service-serial">--%>
                        <%--<span>02</span>--%>
                    <%--</div>--%>
                    <%--<h1 class="service-name">--%>
                        <%--Title Goes Here--%>
                    <%--</h1>--%>
                <%--</div>--%>

                <%--<ul class="service-list">--%>
                    <%--<li>Lorem Ipsum is simply dummy text of the printing</li>--%>
                    <%--<li>Contrary to popular belief, Lorem Ipsum is not simply</li>--%>
                    <%--<li>Many desktop publishing packages and web page editors</li>--%>
                    <%--<li>There are many variations of passages of Lorem Ipsum available</li>--%>
                <%--</ul>--%>

                <%--<a href="#" class="service-read-more">--%>
                    <%--Read More--%>
                <%--</a>--%>
            <%--</div>--%>
        </div>
    </div>

    <div class="welcome">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-lg-4 welcome-funday">
                <h1 class="welcome-heading">Welcome!</h1>
                <div class="welcome-image">
                    <img src="images/funday.jpg" alt="funday image">
                </div>
                <div class="welcome-text">
                    <h3 class="welcome-text-heading">Lorem Ipsum is simply dummy text</h3>
                    <p class="welcome-text-desc">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since
                    </p>
                </div>
                <button class="btn btn-common btn-funday">Read More</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 welcome-services">
                <h1 class="welcome-heading">Services</h1>

                <ul class="welcome-service-list">
                    <li><a href="#">There are many variations</a></li>
                    <li><a href="#">It is a long established fact that a reader</a></li>
                    <li><a href="#">Lorem Ipsum is simply dummy text</a></li>
                    <li><a href="#">Contrary to popular belief</a></li>
                    <li><a href="#">The standard chunk of Lorem Ipsum</a></li>
                    <li><a href="#">Lorem ipsum dolor sit amet, consectetur</a></li>
                    <li><a href="#"> eos qui ratione voluptatem</a></li>
                    <li><a href="#">All the Lorem Ipsum generators</a></li>
                    <li><a href="#">Various versions have evolved over</a></li>
                    <li><a href="#">Many desktop publishing packages</a></li>
                </ul>

                <button class="btn btn-common btn-services">All Services</button>
            </div>
            <div class="col-sm-12 col-md-4 col-lg-4 welcome-eid">
                <h1 class="welcome-heading">Our Mission</h1>
                <div class="welcome-image">
                    <img src="images/eid.jpg" alt="eid image">
                </div>
                <div class="welcome-text">
                    <h3 class="welcome-text-heading">Lorem Ipsum is simply dummy text</h3>
                    <p class="welcome-text-desc">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy...
                    </p>
                </div>
                <button class="btn btn-common btn-eid">Read More</button>
            </div>
        </div>
    </div>

    <div class="footer">
        <ul class="footer-nav">
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Projects</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">News &amp; Views</a></li>
            <li><a href="#">Contacts</a></li>
        </ul>

        <ul class="footer-policy">
            <li class='copyright'>&copy; 2012-2017 Rokomari.com</li>
            <li><a href="#">Privacy Policy</a></li>
        </ul>
    </div>
</div>
<script  src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
         crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"
        integrity="sha384-pwHFztISwRTGeHRahsfB0pbBN7DjF7Gll73MPjlRUFVqrcJ6a3Ba9ClIPH0UQtxk" crossorigin="anonymous"></script>
<script src="js/main.js"></script>
</body>
</html>

