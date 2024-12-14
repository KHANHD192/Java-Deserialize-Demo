<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from pixner.net/boleto/demo/movie-seat-plan by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 21 Mar 2024 12:43:35 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/all.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/odometer.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/main.css">

    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">

    <title>Boleto  - Online Ticket Booking Website HTML Template</title>


</head>

<body>
    <!-- ==========Preloader========== -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    <!-- ==========Preloader========== -->
    <!-- ==========Overlay========== -->
    <div class="overlay"></div>
    <a href="#0" class="scrollToTop">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- ==========Overlay========== -->

    <!-- ==========Header-Section========== -->
    <header class="header-section">
        <div class="container">
            <div class="header-wrapper">
                <div class="logo">
                    <a href="index">
                        <img src="assets/images/logo/logo.png" alt="logo">
                    </a>
                </div>
                <ul class="menu">
                    <li>
                        <a href="#0">Home</a>
                        <ul class="submenu">
                            <li>
                                <a href="index">Home One</a>
                            </li>
                            <li>
                                <a href="index-2">Home Two</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#0" class="active">movies</a>
                        <ul class="submenu">
                            <li>
                                <a href="movie-grid">Movie Grid</a>
                            </li>
                            <li>
                                <a href="movie-list">Movie List</a>
                            </li>
                            <li>
                                <a href="movie-details">Movie Details</a>
                            </li>
                            <li>
                                <a href="movie-details-2">Movie Details 2</a>
                            </li>
                            <li>
                                <a href="movie-ticket-plan">Movie Ticket Plan</a>
                            </li>
                            <li>
                                <a href="#0"  class="active">Movie Seat Plan</a>
                            </li>
                            <li>
                                <a href="movie-checkout">Movie Checkout</a>
                            </li>
                            <li>
                                <a href="popcorn">Movie Food</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#0">events</a>
                        <ul class="submenu">
                            <li>
                                <a href="events">Events</a>
                            </li>
                            <li>
                                <a href="event-details">Event Details</a>
                            </li>
                            <li>
                                <a href="event-speaker">Event Speaker</a>
                            </li>
                            <li>
                                <a href="event-ticket">Event Ticket</a>
                            </li>
                            <li>
                                <a href="event-checkout">Event Checkout</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#0">sports</a>
                        <ul class="submenu">
                            <li>
                                <a href="sports">Sports</a>
                            </li>
                            <li>
                                <a href="sport-details">Sport Details</a>
                            </li>
                            <li>
                                <a href="sports-ticket">Sport Ticket</a>
                            </li>
                            <li>
                                <a href="sports-checkout">Sport Checkout</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#0">pages</a>
                        <ul class="submenu">
                            <li>
                                <a href="about">About Us</a>
                            </li>
                            <li>
                                <a href="apps-download">Apps Download</a>
                            </li>
                            <li>
                                <a href="sign-in">Sign In</a>
                            </li>
                            <li>
                                <a href="sign-up">Sign Up</a>
                            </li>
                            <li>
                                <a href="404">404</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#0">blog</a>
                        <ul class="submenu">
                            <li>
                                <a href="blog">Blog</a>
                            </li>
                            <li>
                                <a href="blog-details">Blog Single</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="contact">contact</a>
                    </li>
                    <li class="header-button pr-0">
                        <a href="sign-up">join us</a>
                    </li>
                </ul>
                <div class="header-bar d-lg-none">
					<span></span>
					<span></span>
					<span></span>
				</div>
            </div>
        </div>
    </header>
    <!-- ==========Header-Section========== -->

    <!-- ==========Banner-Section========== -->
    <section class="details-banner hero-area bg_img seat-plan-banner" data-background="assets/images/banner/banner04.jpg">
        <div class="container">
            <div class="details-banner-wrapper">
                <div class="details-banner-content style-two">
                    <h3 class="title">${movie.getTitle()}</h3>
                    <div class="tags">
                        <a href="#0">City Walk</a>
                        <a href="#0">English - 2D</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Banner-Section========== -->

    <!-- ==========Page-Title========== -->
    <section class="page-title bg-one">
        <div class="container">
            <div class="page-title-area">
                <div class="item md-order-1">
                    <a href="movie-ticket-plan" class="custom-button back-button">
                        <i class="flaticon-double-right-arrows-angles"></i>back
                    </a>
                </div>
                <div class="item date-item">
                    <span class="date">MON, SEP 09 2020</span>
                    <select class="select-bar">
                        <option value="sc1">09:40</option>
                        <option value="sc2">13:45</option>
                        <option value="sc3">15:45</option>
                        <option value="sc4">19:50</option>
                    </select>
                </div>
                <div class="item">
                    <h5 class="title">05:00</h5>
                    <p>Mins Left</p>
                </div>
            </div>
        </div>
    </section>
    <!-- ==========Page-Title========== -->

    <!-- ==========Movie-Section========== -->
    <div class="seat-plan-section padding-bottom padding-top">
        <div class="container">
            <div class="screen-area">
                <h4 class="screen">screen</h4>
                <div class="screen-thumb">
                    <img src="assets/images/movie/screen-thumb.png" alt="movie">
                </div>
                <h5 class="subtitle">silver plus</h5>
                <div class="screen-wrapper">
                    <ul class="seat-area">
                        <li class="seat-line">
                            <span>G</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>G</span>
                        </li>
                        <li class="seat-line">
                            <span>f</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat seat-free">
                                            <img src="assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f7</span>
                                        </li>
                                        <li class="single-seat seat-free">
                                            <img src="assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f8</span>
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat seat-free">
                                            <img src="assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f9</span>
                                        </li>
                                        <li class="single-seat seat-free">
                                            <img src="assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f10</span>
                                        </li>
                                        <li class="single-seat seat-free">
                                            <img src="assets/images/movie/seat01-free.png" alt="seat">
                                            <span class="sit-num">f11</span>
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat01.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>f</span>
                        </li>
                    </ul>
                </div>
                <h5 class="subtitle">silver plus</h5>
                <div class="screen-wrapper">
                    <ul class="seat-area couple">
                        <li class="seat-line">
                            <span>e</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>e</span>
                        </li>
                        <li class="seat-line">
                            <span>d</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-booked.png" alt="seat">
                                            <span class="sit-num">D7 D8</span>
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>d</span>
                        </li>
                        <li class="seat-line">
                            <span>c</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">f11 f12</span>
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>c</span>
                        </li>
                        <li class="seat-line">
                            <span>b</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">b7 b8</span>
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                        <li class="single-seat">
                                            <img src="assets/images/movie/seat02.png" alt="seat">
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>b</span>
                        </li>
                        <li class="seat-line">
                            <span>a</span>
                            <ul class="seat--area">
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a1 a2</span>
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a3 a4</span>
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a5 a6</span>
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a7 a8</span>
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a9 a10</span>
                                        </li>
                                    </ul>
                                </li>
                                <li class="front-seat">
                                    <ul>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a11</span>
                                        </li>
                                        <li class="single-seat seat-free-two">
                                            <img src="assets/images/movie/seat02-free.png" alt="seat">
                                            <span class="sit-num">a12</span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <span>a</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="proceed-book bg_img" data-background="assets/images/movie/movie-bg-proceed.jpg">
                <div class="proceed-to-book">
                    <div class="book-item">
                        <span>You have Choosed Seat</span>
                        <h3 style="max-width: 400px;" class="title">d9, d10</h3>
                    </div>
                    <div class="book-item">
                        <span>total price</span>
                        <h3 class="title price_total">$150</h3>
                    </div>
                    <div class="book-item">
                        <a href="movie-checkout" class="custom-button button_checkout">proceed</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ==========Movie-Section========== -->

    <!-- ==========Newslater-Section========== -->
    <footer class="footer-section">
        <div class="newslater-section padding-bottom">
            <div class="container">
                <div class="newslater-container bg_img" data-background="assets/images/newslater/newslater-bg01.jpg">
                    <div class="newslater-wrapper">
                        <h5 class="cate">subscribe to Boleto </h5>
                        <h3 class="title">to get exclusive benifits</h3>
                        <form class="newslater-form">
                            <input type="text" placeholder="Your Email Address">
                            <button type="submit">subscribe</button>
                        </form>
                        <p>We respect your privacy, so we never share your info</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="footer-top">
                <div class="logo">
                    <a href="index-1">
                        <img src="assets/images/footer/footer-logo.png" alt="footer">
                    </a>
                </div>
                <ul class="social-icons">
                    <li>
                        <a href="#0">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#0" class="active">
                            <i class="fab fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#0">
                            <i class="fab fa-pinterest-p"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#0">
                            <i class="fab fa-google"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#0">
                            <i class="fab fa-instagram"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="footer-bottom">
                <div class="footer-bottom-area">
                    <div class="left">
                        <p>Copyright © 2020.All Rights Reserved By <a href="#0">Boleto </a></p>
                    </div>
                    <ul class="links">
                        <li>
                            <a href="#0">About</a>
                        </li>
                        <li>
                            <a href="#0">Terms Of Use</a>
                        </li>
                        <li>
                            <a href="#0">Privacy Policy</a>
                        </li>
                        <li>
                            <a href="#0">FAQ</a>
                        </li>
                        <li>
                            <a href="#0">Feedback</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- ==========Newslater-Section========== -->


    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/modernizr-3.6.0.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <script src="assets/js/magnific-popup.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/countdown.min.js"></script>
    <script src="assets/js/odometer.min.js"></script>
    <script src="assets/js/viewport.jquery.js"></script>
    <script src="assets/js/nice-select.js"></script>
    <script src="assets/js/main.js"></script>
    <script>
        //getall span sit
        let sitElement  = Array.from(document.querySelectorAll(".single-seat.seat-free-two"))
        let custom_button = document.querySelector(".button_checkout")
        let titile  = document.querySelector(".book-item h3.title")
        let pricetotal =  document.querySelector(".price_total")
         sitElement.forEach(item => {
             item.addEventListener("click",() => {
                 //update
                 const images = Array.from( document.querySelectorAll('img[src*="assets/images/movie/seat02-booked.png"]'))
                 let arraySeat = [];
                 images.forEach(item =>{
                     arraySeat.push(item.nextElementSibling)
                 })
                 console.log(arraySeat)
                     titile.textContent = "";
                 arraySeat.forEach(item =>{
                     titile.textContent += item.textContent + " ";
                 })

                 //update price
                    Seats = titile.textContent.trim().split(" ")
                  lengthofSeat =  titile.textContent.trim().split(" ").length;
                 if(lengthofSeat == 1){
                     pricetotal.textContent = " ";
                 }else {
                     pricetotal.textContent = "$"+lengthofSeat*50
                 }

             })
         })


        //hanle proceed
        console.log(custom_button);
        custom_button.addEventListener("click",(e) =>{
            e.preventDefault();
            const queryString = window.location.search;
            const params = new URLSearchParams(queryString);
           let Seats = titile.textContent.trim().split(" ")
            if(Seats.length === 1){
                return;
            }
            const data = {
               MovieId: params.get("movieID"),
               Seats : Seats,
            }
            fetch("movie-checkout",{
                method: "POST",
                headers: {
                    "Content-Type" :"application/json",
                },
                body: JSON.stringify(data),
            })
                .then(response =>{
                    if (response.status === 200){
                        console.log("ok");
                    }
                })
        })
    </script>
</body>


<!-- Mirrored from pixner.net/boleto/demo/movie-seat-plan by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 21 Mar 2024 12:43:36 GMT -->
</html>