$(()=> {
  let swiper = new Swiper(".mySwiper", {
    slidesPerView: 6,
    breakpoints: {
      500: {
        slidesPerView: 1,
        spaceBetween: 20
      },
      600: {
        slidesPerView: 2,
        spaceBetween: 40
      },
      950: {
        slidesPerView: 3,
        spaceBetween: 40
      },
      1000: {
        slidesPerView: 4,
        spaceBetween: 40
      },
      1600: {
        slidesPerView: 6,
        spaceBetween: 40
      }
    },
    spaceBetween: 2,
    loop: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
});