<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
	transition-property: all;
 	transition-duration: .6s;
  	transition-timing-function: ease;
}

header, footer {
	width: 100%;
	height: 100px;
	border: 1px solid red;
	color: rgba(255, 255, 255, 0.5);
}

body {
	background: #333;
	border: 1px solid blue;
}

.centered {
	width: 550px;
	height: 500px;
	margin: auto;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	border: 1px solid yellow;
}

.group {
	width: 100%;
	height: 110px;
	overflow: hidden;
	position: relative;
}

label {
	position: absolute;
	top: 36.6666666667px;
	color: rgba(255, 255, 255, 0.5);
	font: 400 36.6666666667px Roboto;
	cursor: text;
	transition: .25s ease;
}

input {
	display: block;
	width: 500px;
	padding-top: 36.6666666667px;
	border: none;
	border-radius: 0;
	color: white;
	background: #333;
	font-size: 36.6666666667px;
	transition: .3s ease;
}

input:valid ~ label {
	top: 0;
	font: 700 22px Roboto;
	color: rgba(255, 255, 255, 0.5);
}

input:focus {
	outline: none;
}

input:focus ~ label {
	top: 0;
	font: 700 22px Roboto;
	color: #2196f3;
}

input:focus ~ .bar:before {
	transform: translateX(0);
}

input:-webkit-autofill {
	-webkit-box-shadow: 0 0 0px 1000px #333 inset;
	-webkit-text-fill-color: white !important;
}

.bar {
	background: rgba(255, 255, 255, 0.5);
	content: '';
	width: 550px;
	height: 3.6666666667px;
	transition: .3s ease;
	position: relative;
}

.bar:before {
	content: '';
	position: absolute;
	width: 100%;
	height: 150%;
	background: #2196f3;
	transform: translateX(-100%);
}

::selection {
	background: rgba(33, 150, 243, 0.3);
}



h1 {
  font-family: 'CoreCircus', sans-serif;
  font-size: 30pt;
  text-align: center;
  line-height: 1;
  margin: 0;
  position: absolute;
  color: #ffffff;
  letter-spacing: -.5rem;
}
h1:before {
  content: attr(data-heading);
  position: absolute;
  overflow: hidden;
  color: #ffffff;
  width: 100%;
  z-index: 5;
  text-shadow: none;
  left: 176px;
  text-align: left;
  -webkit-animation: flicker 100s linear infinite;
          animation: flicker 100s linear infinite;
}


@-webkit-keyframes flicker {
  0%, 19.999%, 22%, 62.999%, 64%, 64.999%, 70%, 100% {
    opacity: .99;
    text-shadow: -1px -1px 0 rgba(255, 255, 255, 0.4), 1px -1px 0 rgba(255, 255, 255, 0.4), -1px 1px 0 rgba(255, 255, 255, 0.4), 1px 1px 0 rgba(255, 255, 255, 0.4), 0 -2px 8px, 0 0 2px, 0 0 5px #ff7e00, 0 0 15px #ff4444, 0 0 2px #ff7e00, 0 2px 3px #000;
  }
  20%, 21.999%, 63%, 63.999%, 65%, 69.999% {
    opacity: 0.4;
    text-shadow: none;
  }
}

@keyframes flicker {
  0%, 19.999%, 22%, 62.999%, 64%, 64.999%, 70%, 100% {
    opacity: .99;
    text-shadow: -1px -1px 0 rgba(255, 255, 255, 0.4), 1px -1px 0 rgba(255, 255, 255, 0.4), -1px 1px 0 rgba(255, 255, 255, 0.4), 1px 1px 0 rgba(255, 255, 255, 0.4), 0 -2px 8px, 0 0 2px, 0 0 5px #ff7e00, 0 0 15px #ff4444, 0 0 2px #ff7e00, 0 2px 3px #000;
  }
  20%, 21.999%, 63%, 63.999%, 65%, 69.999% {
    opacity: 0.4;
    text-shadow: none;
  }
}


@font-face {
  font-family: 'CoreCircus2DDot1';
  src: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_1_0.eot");
  src: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_1_0.eot?#iefix") format("embedded-opentype"), url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_1_0.woff2") format("woff2"), url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_1_0.woff") format("woff"), url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_1_0.ttf") format("truetype");
}
@font-face {
  font-family: 'CoreCircus';
  src: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_8_0.eot");
  src: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_8_0.eot?#iefix") format("embedded-opentype"), url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_8_0.woff2") format("woff2"), url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_8_0.woff") format("woff"), url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/209981/333BF4_8_0.ttf") format("truetype");
}


/* 버튼 css  */
.btn-5 {
  background-color: #333;
  color: rgba(255, 255, 255, 0.5);	
  border: 0 solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
  outline: 1px solid;
  outline-color: rgba(255, 255, 255, 0.5);
  outline-offset: 0px;
  text-shadow: none;
  transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
  width: 140px; height:40px; 
  font-size: 22px;
  
}

.btn-5:hover {
  border: 1px solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
  outline-color: rgba(255, 255, 255, 0);
  outline-offset: 15px;
  text-shadow: 1px 1px 2px #427388;
}

 .buttonAlign{
	 margin: auto;
  	 width: 30%;
}

</style>

<script type="text/javascript">

function gopagePost() { 
	//0클라이언트 부분에서의 에러검증 코드 자리 
	document.myForm.action="./main.jsp"; 
	document.myForm.method="post"; 
	document.myForm.submit(); 
	}

	
	
</script>

</head>



<!-- =============================================<body태그 시작>====================================================================== -->


<body>


	<header>
		<h1 data-heading="TEST" >English Test</h1>
		
	</header>
	
	
	<div class="centered">
		<div class="group">
			<input type="text" id="name" required="required" /> <label
				for="name">Name</label>
			<div class="bar"></div>
		</div>

		<div class="group">
			<input type="password" id="password" required="required" /> <label
				for="password">PassWord</label>
			<div class="bar"></div>
		</div>
		
		
		<!--End of Button 5 -->
		 <div class = "buttonAlign">		 
		 	<form name="myForm">
		 	 	<button type="button" class="btn btn-5" onclick="gopagePost()">Login</button>
		 	</form>
		
		 </div>
    		
	</div>


	<footer>
		<p>13916 경기도 안양시 동안구 임곡로 29 TEL : 031) 467-4601~6 FAX : 031)
			467-4599 COPYRIGHTS (C) 2014 DAELIM UNIVERSITY COLLEGE. ALLRIGHTS
			RESERVED.</p>
	</footer>
	
</body>







</html>