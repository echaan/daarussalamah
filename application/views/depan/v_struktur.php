<!DOCTYPE html>
<html lang="en">
<head>
    <?php include 'head2.php'?>
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/magnific-popup.css'?>">
    <!-- Image Hover CSS -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'theme/css/normalize.css'?>" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'theme/css/set2.css'?>" />

    <!-- Masonry Gallery -->
    <link href="<?php echo base_url().'theme/css/animated-masonry-gallery.css'?>" rel="stylesheet" type="text/css" />
  
</head>
<body>
<!-- Profil -->
    <?php include 'v_header.php'?>
    <section class="clearfix about about-style2 about_bg">
        <h2 style="color: rgb(56, 159, 73); text-align: center;" class="about_bg">Struktur Kepengurursan</h2>
    </section>

<!-- Struktur -->
<section>
    <div class="container struktur">
    </div>
    <br><br>
    <div class="kepengurusan container d-flex justify-content-center align-items-center">
        <a href="<?php echo base_url().'theme/images/tes2.png'?>" class="image-link2">
            <img src="<?php echo base_url().'theme/images/tes2.png'?>" alt="Gambar Struktur" />
        </a>
    </div>
    <br><br>
</section>

<!-- Detailde Chart -->
 <?php 
    include "v_detailed_chart.php"
 ?>



<?php 
        include 'footer.php';
    ?>
        
    <!--//END FOOTER -->
    <!-- jQuery, Bootstrap JS. -->
    <script src="<?php echo base_url().'theme/js/jquery.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/tether.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>
    <!-- Plugins -->
    <script src="<?php echo base_url().'theme/js/slick.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/waypoints.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/counterup.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/owl.carousel.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/validate.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/tweetie.min.js'?>"></script>
    <!-- Subscribe -->
    <script src="<?php echo base_url().'theme/js/subscribe.js'?>"></script>

    <script src="<?php echo base_url().'theme/js/jquery-ui-1.10.4.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/jquery.isotope.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/animated-masonry-gallery.js'?>"></script>
    <!-- Magnific popup JS -->
    <script src="<?php echo base_url().'theme/js/jquery.magnific-popup.js'?>"></script>
    <!-- Script JS -->
    <script src="<?php echo base_url().'theme/js/script.js'?>"></script>
</body>
</html>