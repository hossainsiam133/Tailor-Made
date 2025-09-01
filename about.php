<?php
    include 'connection.php';
    session_start();
    $user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : null;
    // $user_id=$_SESSION['user_id'];

    // if(!isset($user_id)){
    //    header('location:login.php');
    // }
    if(isset($_POST['logout'])){
        session_destroy();
        header('location:login.php');
    }
    
?>
<style type="text/css">
   <?php
      include 'main.css';
    ?>
</style>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <title>about info page</title>
</head>
<body>
<?php include 'header.php'; ?>
<div class="banner">
      <div class="banner">
        <div class="detail">
                <h1>about us</h1>
                <p>Tailor Made has crafted stylish, high-quality clothing since 1981</p>
                <a href="index.php">home</a><span>/ about us</span>
            </div> 
</div>
<div class="line"></div>
<!-- about us -->
<div class="line2"></div>
<div class="about-us">
    <div class="row">
        <div class="box">
            <div class="title">
                 <span>ABOUT OUR ONLINE STORE</span>
                 <h1>Hello, With 25 years of experience</h1>
            </div>
            <p align="justify">Welcome to our online store! With over 25 years of experience in the industry, we are committed to delivering high-quality products and exceptional customer service. Our journey began with a simple mission: to provide customers with reliable, affordable, and innovative products that meet their everyday needs.
Over the years, we have grown and adapted to changing market trends while maintaining a strong focus on quality and customer satisfaction. Whether you are shopping for essentials or looking for the latest trends, our store offers a wide selection to suit every taste and budget.</p>
        </div>
        <div class="img-box">
             <img src="img/experience.png">
        </div>
    </div>
</div>
<div class="line3"></div>
<!-- feature -->
<div class="line4"></div>
<div class="features">
    <div class="title">
        <h1>Complete Customer Ideas</h1>
        <span>best features</span>
    </div>
    <div class="row">
        <div class="box">
            <img src="img/2.png">
            <h4>24 X 7</h4>
            <p>Online Support 24/7</p>
        </div>
        <div class="box">
            <img src="img/cashback.png">
            <h4>Money Back Guarantee</h4>
            <p>100% Secure Payment</p>
        </div>
        <div class="box">
            <img src="img/gift.png">
            <h4>Special Gift Card</h4>
            <p>Give The Perfect Gift</p>
        </div>
        <div class="box">
            <img src="img/0.png">
            <h4>All Over Bangladesh Shipping</h4>
            <p>Super Fast Delivary</p>
        </div>
    </div>
</div>
<div class="line"></div>
<!-- team section -->
<div class="line2"></div>
<div class="team">
    <div class="title">
        <h1>Our Workable Team</h1>
        <span>best team</span>
    </div>
    <div class="row">
        <div class="box">
            <div class="img-box">
                <!-- <img src="img/employee1.png"> -->
                <img src="img/siam.jpg">
                </div>
            <div class="detail1">
                <span>Developer</span>
                <h4>Siam Hossain</h4>
                <div class="icons">
               <i class="bi bi-instagram"></i>
               <i class="bi bi-twitter"></i>
               <i class="bi bi-envelope"></i>
               <i class="bi bi-behance"></i>
               <i class="bi bi-whatsapp"></i>
               </div>
               
        </div>
        </div>
       <div class="box">
            <div class="img-box">
            <img src="img/rakib.jpg">
            </div>
            <div class="detail1">
                <span>Quality Controller</span>
                <h4>Rakib Hossain</h4>
                <div class="icons">
               <i class="bi bi-instagram"></i>
               <i class="bi bi-twitter"></i>
               <i class="bi bi-envelope"></i>
               <i class="bi bi-behance"></i>
               <i class="bi bi-whatsapp"></i>
               </div>
               
        </div>
        </div>
        <div class="box">
            <div class="img-box">
            <img src="img/soyad.jpg">
            </div>
            <div class="detail1">
                <span>Market Analyst</span>
                <h4>Soyad Rahman</h4>
                <div class="icons">
               <i class="bi bi-instagram"></i>
               <i class="bi bi-twitter"></i>
               <i class="bi bi-envelope"></i>
               <i class="bi bi-behance"></i>
               <i class="bi bi-whatsapp"></i>
               </div>
               
            </div>
        </div>
        <div class="box">
            <div class="img-box">
            <img src="img/talha.jpg">
            </div>
            <div class="detail1">
                <span>UI/UX Designer</span>
                <h4>Talha Mahmud</h4>
                <div class="icons">
               <i class="bi bi-instagram"></i>
               <i class="bi bi-twitter"></i>
               <i class="bi bi-envelope"></i>
               <i class="bi bi-behance"></i>
               <i class="bi bi-whatsapp"></i>
               </div>
            
            </div>
        </div>  
    </div>
</div>
<div class="line3"></div>
<div class="line4"></div>
<!-- project -->
<div class="project">
    <div class="title">
        <h1>Our Best Project</h1>
        <span>how it works</span>
    </div>
    <div class="row">
         <div class="box">
             <img src="img/team.png">
         </div>
         <div class="box">
             <img src="img/team.png">
         </div>
    </div>
</div>

<div class="line"></div>
<div class="line2"></div>
<!-- ideas -->
<div class="ideas">
<div class="title">
        <h1>We And Our Client Are Happy To Cooperate With Our Company</h1>
        <span>our features</span>
    </div>
    <div class="row">
    <div class="box">
             <i class="bi bi-stack"></i>
             <!-- <div class="detail"> -->
                 <h2>What We Really Do</h2>
                 <p align="justify">We connect you with quality products that improve your daily life. Our goal is to make shopping easy, reliable, and enjoyable with fast delivery and excellent support.</p>
             <!-- </div> -->
         </div>
         <div class="box">
             <i class="bi bi-grid-1x2-fill"></i>
             <!-- <div class="detail"> -->
                 <h2>History of Beginning</h2>
                 <p align="justify">We began 25 years ago with a simple goal: delivering quality products and great service. From a small store, we’ve grown to serve customers online worldwide.</p>
             <!-- </div> -->
         </div>
         <div class="box">
             <i class="bi bi-tropical-storm"></i>
             <!-- <div class="detail"> -->
                 <h2>Our Vision</h2>
                 <p align="justify">To be the most trusted online store, delivering quality products and exceptional service that enrich our customers’ lives every day.</p>
             <!-- </div> -->
         </div>
    </div>
</div>
<div class="line3"></div>
<!-- footer -->
<?php include 'footer.php'; ?>
<script src="script.js"></script>
</body>
</html>