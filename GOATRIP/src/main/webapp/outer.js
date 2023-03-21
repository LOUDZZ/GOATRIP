//배너
var slideIndex = 0; 
window.onload=function(){
showSlides(slideIndex);
var sec = 3000;
setInterval(function(){
  slideIndex++;
  showSlides(slideIndex);
}, sec);
}
function moveSlides(n) {
slideIndex = slideIndex + n
showSlides(slideIndex);
}
function currentSlide(n) {
slideIndex = n;
showSlides(slideIndex);
}
function showSlides(n) {
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  var size = slides.length;
  if ((n+1) > size) {
    slideIndex = 0; n = 0;
  }
  else if (n < 0) {
    slideIndex = (size-1);
    n = (size-1);
  }
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[n].style.display = "block";
  dots[n].className += " active"
}

//토글버튼
const navbarMenu = document.querySelector('.navbar__menu');
const navbarToggleBtn = document.querySelector('.navbar__toggle-btn');

navbarToggleBtn.addEventListener('click', () => {
  navbarMenu.classList.toggle('open');
});

//메뉴이동
navbarMenu.addEventListener('click', (event) => {
  console.log(event.target.dataset.link);
  const target = event.target;
  const link = target.dataset.link;
  if(link == null) {
    return;
  }
  console.log(event.target.dataset.link);
  const scrollTo = document.querySelector(link)
  scrollTo.scrollIntoView({behavior: 'smooth'});
});

//슬라이드
var slides = document.querySelector('.slides'),
slide = document.querySelectorAll('.slides li'),
currentIdx = 0,
slideCount = slide.length,
prevBtn = document.querySelector('.prev'),
slideWidth = 250,
slideMargin = 40,
nextBtn = document.querySelector('.next');

slides.style.width = (slideWidth + slideMargin)*slideCount - slideMargin + 'px'; 
function moveSlide(num) {
  slides.style.left = -num * 250 + 'px';
  currentIdx = num;
}
nextBtn.addEventListener('click', function() {
  if(currentIdx < slideCount - 6) {
    moveSlide(currentIdx + 1);
  }
  else {
    moveSlide(0);
  }
});
prevBtn.addEventListener('click', function() {
  if(currentIdx > 0) {
    moveSlide(currentIdx -1)
  }
  else {
    moveSlide(slideCount-6);
  }
});