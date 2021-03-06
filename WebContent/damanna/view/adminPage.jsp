<%@page import="damanna.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Your description">
    <meta name="author" content="Your name">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
	<meta property="og:site_name" content="" /> <!-- website name -->
	<meta property="og:site" content="" /> <!-- website link -->
	<meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
	<meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
	<meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
	<meta property="og:url" content="" /> <!-- where do you want your post to link to -->
	<meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

    <!-- Webpage Title -->
    <title>Damanna Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
    
    <!-- Styles -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&family=Poppins:wght@600&display=swap" rel="stylesheet">
       <link href="<%=request.getContextPath() %>/test/spify/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/test/spify/css/fontawesome-all.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/test/spify/css/swiper.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/test/spify/css/magnific-popup.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/test/spify/css/styles.css" rel="stylesheet">
	
	<!-- Favicon  -->
    <link rel="icon" href="images/favicon.png">
    <style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap');

h1{
	font-family: 'Nanum Pen Script', cursive;
}
table{
	font-family: 'Nanum Pen Script', cursive;
	font-size: 25px;
}

thead{
 	background-color: #c2185b; 
	color : black;
}

a:link{
	text-decoration: none;
	color: black;
}

a:active {
	color: black;
}

a:hover{
	color: orange;
}

#sub{
font-family: 'Nanum Pen Script', cursive;
font-size: 30px;
}

#subid{
	margin-left: 650px;
}
</style>
</head>



<body>

 <!-- Navigation -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark">
        <div class="container">
            
            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="<%=request.getContextPath() %>/memberPicture.do">DaManNa</a>  

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Spify</a> -->

            <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath() %>/memberPicture.do">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/noticeList.do">Notice</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath() %>/test/spify/FAQ.jsp">FAQ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/freeList.do"">Free Board</a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="<%=request.getContextPath()%>/test/spify/review.jsp">Review</a>
                    </li>
               
                </ul>
                <span class="nav-item social-icons">
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-facebook-f fa-stack-1x"></i>
                        </a>
                    </span>
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-twitter fa-stack-1x"></i>
                        </a>
                    </span>
                </span>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


    <!-- Header -->
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <h1>Admin</h1>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->




	<!-- ?????? -->
	<!--?????? ?????? ??????  -->
	<section class="watingmember">
	<br><br><br>
	<h1>?????? ?????? ??????</h1>
	<div id = "watingmem">

		<%
			List<MemberVO> memList =
					(List<MemberVO>) request.getAttribute("memberList");
		%>
		<table class="table table-hover table-sttiped text-center a-hover a-link" style = "border : 1">
			<thead>
			<tr>
				<th>  </th>
				<th>ID</th>
				<th>????????????</th>
				<th>??????</th>
				<th>??????</th>
				<th>????????????</th>
				<th>????????????</th>
				
			</tr>
			</thead>
			<%
				if (memList == null || memList.size() == 0) {
			%>
			<tr>
				<td colspan="7">?????? ?????? ????????? ????????? ????????????.</td>
			</tr>
			<%
				} else {
					for (MemberVO memVo : memList) {
			%>
			<tr>
				<td><input type="radio" value="<%=memVo.getMember_id()%>"></td>
				<td><%=memVo.getMember_id()%></td>
				<td><%=memVo.getMember_pw()%></td>
				<td><%=memVo.getMember_nm()%></td>
				<td><%=memVo.getMember_gen()%></td>
				<td><%=memVo.getMember_hp()%></td>
				<td><%=memVo.getMatch_type()%></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	</div>
	<form action="<%=request.getContextPath()%>/member/memberUpdate.do">
		<div id="subid">
		<input type="submit" value="?????? ??????" id="sub">
		<input type="submit" value="?????? ??????" id="sub">
		</div>
	</form>	
		<form action="<%=request.getContextPath()%>/member/memberDelete.do">
		<div id="subid">
		<input type="text" id="mem_id" name="mem_id"> 
		<input type="submit" value="?????????" id="sub">
		</div>
	</form>
	</section>
	
	<!-- ?????? ?????? -->
	<section class="membermanagement">
	<br><br><br>
	<h1>?????? ??????</h1>
	<div>
			<%
			List<MemberVO> memList2 =
					(List<MemberVO>) request.getAttribute("memberList2");
		%>
		<table class="table table-hover table-sttiped text-center a-hover a-link" style = "border : 1">
			<thead>
			<tr>
				<td> </td>
				<td>ID</td>
				<td>????????????</td>
				<td>??????</td>
				<td>??????</td>
				<td>????????????</td>
				<td>????????????</td>
				
			</tr>
			</thead>
			<%
				if (memList == null || memList2.size() == 0) {
			%>
			<tr>
				<td colspan="7"> ????????? ????????? ????????????.</td>
			</tr>
			<%
				} else {
					for (MemberVO memVo : memList2) {
			%>
			<tr>
				<td><input type="checkbox"></td>
				<td><%=memVo.getMember_id()%></td>
				<td><%=memVo.getMember_pw()%></td>
				<td><%=memVo.getMember_nm()%></td>
				<td><%=memVo.getMember_gen()%></td>
				<td><%=memVo.getMember_hp()%></td>
				<td><%=memVo.getMatch_type()%></td>
			</tr>
			<%
				}
				}
			%>
		</table>
	
	
	</div>
	<form action="<%=request.getContextPath()%>/member/memberDelete.do">
		<div id="subid">
		<input type="text" id="mem_id" name="mem_id"> 
		<input type="submit" value="?????? ??????" id="sub">
		</div>
	</form>
	</section>
	
	<br><br>
	
	<a href="<%=request.getContextPath()%>/damanna/html/login.jsp">????????????</a>
	
	
	<!-- Footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-col first">
                        <h6>About Spify</h6>
                        <p class="p-small">Spify is a business website Bootstrap HTML template designed to present startups in a beautiful manner with features for description</p>
                    </div> <!-- end of footer-col -->
                    <div class="footer-col second">
                        <h6>Links</h6>
                        <ul class="list-unstyled li-space-lg p-small">
                            <li>Important: <a href="terms.html">Terms & Conditions</a>, <a href="privacy.html">Privacy Policy</a></li>
                            <li>Useful: <a href="#">Colorpicker</a>, <a href="#">Icon Library</a>, <a href="#">Illustrations</a></li>
                            <li>Menu: <a class="page-scroll" href="#header">Home</a>, <a class="page-scroll" href="#details">Details</a>, <a class="page-scroll" href="#strengths">Strengths</a>, <a class="page-scroll" href="#contact">Contact</a></li>
                        </ul>
                    </div> <!-- end of footer-col -->
                    <div class="footer-col third">
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-facebook-f fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-twitter fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-pinterest-p fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="#your-link">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-instagram fa-stack-1x"></i>
                            </a>
                        </span>
                        <p class="p-small">We would love to hear from you <a href="mailto:contact@site.com"><strong>contact@site.com</strong></a></p>
                    </div> <!-- end of footer-col -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of footer -->  
    <!-- end of footer -->


    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright ?? <a href="#your-link">Your name</a></p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->

        
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Distributed by <a href="https://themewagon.com/">Themewagon</a></p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright --> 
    <!-- end of copyright -->
    
    	
    <!-- Scripts -->
    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
	
</body>
</html>