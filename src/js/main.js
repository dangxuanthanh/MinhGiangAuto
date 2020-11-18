$(document).ready(function () {
	toggleMobileMenu();
    mappingMenu1();
    mappingMenu2();
});


function toggleMobileMenu() {
	$('.header_btn').click(function () {
		$(this).toggleClass("click");
		$('.menu_mobile').toggleClass("show");
		$('.overlay').toggleClass("show");
	});
	$('.overlay').click(function () {
		$(this).toggleClass("click");
		$('.menu_mobile').toggleClass("show");
		$('.overlay').toggleClass("show");
	});
}

function mappingMenu1() {
	return new MappingListener({
		selector: ".nav_menu-1",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".header_left",
		desktopMethod: "appendTo",
		breakpoint: 1281
	}).watch();
}
function mappingMenu2() {
	return new MappingListener({
		selector: ".nav_menu-2",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".header_right",
		desktopMethod: "appendTo",
		breakpoint: 1281
	}).watch();
}
// function mappingMenu2() {
// 	return new MappingListener({
// 		selector: ".nav_menu-2",
// 		mobileWrapper: ".mobile-wrapper",
// 		mobileMethod: "appendTo",
// 		desktopWrapper: ".header_right",
// 		desktopMethod: "appendTo",
// 		breakpoint: 1281
// 	}).watch();
// }
window.onscroll = function() {
    scrollFunction()
};

function scrollFunction() {
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        document.querySelector(".header_top").style.top = "-300px";
        document.querySelector(".header_bot").style.top = "0";
    } else {
        document.querySelector(".header_top").style.top = "0";
        document.querySelector(".header_bot").style.top = "-300px";
    }
}