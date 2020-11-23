"use strict";

function mySwiper() {
	let bannerChild = new Swiper(".banner-child-mg .swiper-container", {
		slidesPerView: 1,
		loop: !0,
		autoplay: {
			delay: 5e3,
			waitForTransition: !0,
			disableOnInteraction: !1
		},
		speed: 1e3,
		slidesPerColumnFill: "row"
	});
	let thuongHieu1 = new Swiper("footer .logo-footer .main-slide-bottom-1 .swiper-container", {
		slidesPerView: 5,
		// loop: true,
		speed: 300,
		autoplay: {
			delay: 3000,
		},
		breakpoints: {
			576: {
				slidesPerView: 3,
			},
			768: {
				slidesPerView: 4,
			},
			1024: {
				slidesPerView: 5,
			}
		}
	});
	let thuongHieu2 = new Swiper("footer .logo-footer .main-slide-bottom-2 .swiper-container", {
		slidesPerView: 5,
		// loop: true,
		speed: 300,
		autoplay: {
			delay: 3000,
		},
		breakpoints: {
			576: {
				slidesPerView: 3,
			},
			768: {
				slidesPerView: 4,
			},
			1024: {
				slidesPerView: 5,
			}
		}
	});
	let thuongHieu3 = new Swiper("footer .logo-footer .main-slide-bottom-3 .swiper-container", {
		slidesPerView: 5,
		// loop: true,
		speed: 300,
		autoplay: {
			delay: 3000,
		},
		breakpoints: {
			576: {
				slidesPerView: 3,
			},
			768: {
				slidesPerView: 4,
			},
			1024: {
				slidesPerView: 5,
			}
		}
	});
}
$(document).ready(function () {
	mySwiper()
})
