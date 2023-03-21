<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GOATRIP</title>
    <link rel="stylesheet" type="text/css" href="main_style.css"/>
    <script src="https://kit.fontawesome.com/4e3712e9d5.js" crossorigin="anonymous"></script>
    <link
    rel="stylesheet"
    href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <script src = "https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script defer src="outer.js"></script>
    <script defer src="jquery.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>  
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String)session.getAttribute("userID");
		}
	%>
  <header id = "header">
    <nav id="navbar">
    <div class="navbar__logo">
      <a href="main.jsp">GOATRIP</a>
    </div>
      <ul class = "navbar__icon">
      	<%
      		if(userID == null) {
      	%>
      	<a href="login.jsp"><li id = "user__icon"><i class="fa-solid fa-user"></i></li></a>
      	<%
      		} else {
      	%>
      	 	<li id = "user__icon"><a href = "logoutAction.jsp"><i class="fa-solid fa-arrow-right-from-bracket"></i></a></li>
      	<%
      		}
      	%>
        <a href=""><li id = "language__icon"><i class="fa-solid fa-language"></i></li></a>
      </ul>
      <ul class = "navbar__menu">
        <li class="navbar__menu__item" data-link="#main">HOME</li>
        <li class="navbar__menu__item" data-link="#left1">THEME</li>
        <li class="navbar__menu__item" data-link="#middle2">PROPOSITION</li>
        <li class="navbar__menu__item" data-link="#middle3">TRIP</li>
      </ul>
  <button class="navbar__toggle-btn">
    <i class="fas fa-bars"></i>
  </button>
</nav>
  </header>
  <div id = "main">
    <div id = "banner">
      <div class = "slideshow-container">
        <div class="mySlides fade">
          <img src="./resource/프라하.jpg" style="width:100%">
        </div>
        <div class="mySlides fade">
          <img src="./resource/프라하2.jpg" style="width:100%">
        </div>
        <div class="mySlides fade">
          <img src="./resource/프라하4.jpg" style="width:100%">
        </div>
        <div style="text-align:center">
          <span class="dot" onclick="currentSlide(0)"></span>
          <span class="dot" onclick="currentSlide(1)"></span>
          <span class="dot" onclick="currentSlide(2)"></span>
        </div>
      </div>
    </div>
      <div id = "left1">
        <h1>당신의 여행스타일은?</h1>
        <div id = "pic-container">
              <div class="pic">
                <a href="romantic.jsp">
                  <figure>
                      <img src="./resource/로맨틱한.jpg" style="width:100%" height="100%">
                      <figcaption>Romantic</figcaption>
                  </figure>
              </a>   
              </div>
              <div class="pic">
                <a href="active.jsp">
                  <figure>
                      <img src="./resource/축구.jpg" style="width:100%" height="100%">
                      <figcaption>Active</figcaption>
                  </figure>
              </a>
              </div>
              <div class="pic">
                <a href="sensitive.jsp">
                  <figure>
                      <img src="./resource/활동적인.jpg" style="width:100%" height="100%">
                      <figcaption>Sensitive</figcaption>
                  </figure>
              </a>
              </div>
        </div>
      </div>
      <div id = "middle2">
      <div id = "trip-title">완벽한 여행을 위한 제안</div>
        <div class = "trip-menu-container">
          <div class = "hotel">
            <div class = "trip_icon">
              <i class="fa-solid fa-hotel"></i>
              <div class = "icon_title">
                <a href="https://kr.hotels.com/">호텔예약</a>
              </div>
            </div>
          </div>
          <div class = "passport">
            <div class = "trip_icon">
              <i class="fa-solid fa-passport"></i>
              <div class = "icon_title">
                <a href="https://www.gov.kr/portal/main">여권발급</a></div>
            </div>
          </div>
          <div class = "airplane">
            <div class = "trip_icon">
              <i class="fa-solid fa-plane"></i>
              <div class = "icon_title">
                <a href="https://www.koreanair.com/kr/ko">비행기예약</a></div>
            </div>
          </div>
          <div class = "car">
            <div class = "trip_icon">
              <i class="fa-solid fa-car"></i>
              <div class = "icon_title">
                <a href="http://www.myrealtrip.com">렌트카</a></div>
            </div>
          </div>
          <div class = "traveler">
            <div class = "trip_icon">
              <i class="fa-solid fa-file"></i>
              <div class = "icon_title">
                <a href="https://direct.hi.co.kr">여행자보험</a>
              </div>
            </div>
          </div>
          <div class = "visar">
            <div class = "trip_icon">
              <i class="fa-solid fa-key"></i>
              <div class = "icon_title">
                <a href="https://www.visa.go.kr/">비자발급</a></div>
            </div>
          </div>
        </div>
      </div>
      <div id = "middle3">
          <div id = "slider-title">여기는 어떠세요?</div>
          <div class="swiper mySwiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <figure><img src="./resource/뉴욕.jpg" alt="뉴욕" style="width:100%" height="100%"></figure>
                <figcaption>서울/인천 - 뉴욕</figcaption>
              </div>
              <div class="swiper-slide">
                <figure>
                  <img src="./resource/런던사진.jpeg" alt="런던">
                </figure>
                <figcaption>서울/인천 - 런던</figcaption>
              </div>
              <div class="swiper-slide">
                <figure>
                  <img src="./resource/오사카2.jpg" alt="오사카">
                </figure>
                <figcaption>서울/인천 - 오사카</figcaption>
              </div>
              <div class="swiper-slide">
                <figure>
                  <img src="./resource/LA.webp" alt="LA">
                </figure>
                <figcaption>서울/인천 - LA</figcaption>
              </div>
              <div class="swiper-slide">
                <figure>
                  <img src="./resource/상하이2.jpg" alt="상하이">
                </figure>
                <figcaption>서울/인천 - 상하이</figcaption>
              </div>
              <div class="swiper-slide">
                <figure>
                  <img src="./resource/부다페스트.jpg" alt="부다페스트">
                </figure>
                <figcaption>서울/인천 - 부다페스트</figcaption>
              </div>
              <div class="swiper-slide">
                <figure>
                  <img src="./resource/싱가폴.jpg" alt="싱가폴">
                </figure>
                <figcaption>서울/인천 - 싱가포르</figcaption>
              </div>
              <div class="swiper-slide">
                <figure>
                  <img src="./resource/파리.jpeg" alt="파리">
                </figure>
                <figcaption>서울/인천 - 파리</figcaption>
              </div>
              <div class="swiper-slide">
                <figure>
                  <img src="./resource/타이페이.jpg" alt="타이페이">
                </figure>
                <figcaption>서울/인천 - 타이페이</figcaption>
              </div>
            </div>
            <div class="swiper-button-next" ></div>
            <div class="swiper-button-prev"></div>
          </div>
      </div>
      <div id = "middle4">
        <div id = "middle4-left">
          <img src="./resource/비행기.webp" alt="">
        </div>
        <div id = "middle4-right">
          <div id = "middle4-right-text">
            <h2>GOATRIP입니다.</h2>
            당신의 여행을 책임지는 GOATRIP입니다.
            <div id = "middle4-right-text-focus">
              <a href="bbs.jsp">자세히 보기  ⇀</a>
            </div>
          </div>
        </div>
      </div>
      <div id = "middle5">
        <div id = "middle5-left">
          <div id = "middle5-left-text">
            <h2>GOATRIP과 함께.</h2>
            GOATRIP과 함께하는 완벽한 여행.
            <div id = "middle5-left-text-focus">
              <a href="bbs.jsp">자세히 보기  ⇀</a>
            </div>
          </div>
        </div>
        <div id = "middle5-right">
          <img src="./resource/서류사진.jpg" alt="">
        </div>
      </div>
    <div id = "bottom">
    </div>
