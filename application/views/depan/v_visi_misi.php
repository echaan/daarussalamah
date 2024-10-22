<!DOCTYPE html>
<html lang="en">
    
<?php include 'head.php'?>

<body>
    
    <?php include 'v_header.php'?>
    <section class="clearfix about about-style2 about_bg">
        <h2 style="color: rgb(56, 159, 73); text-align: center;" class="about_bg">Visi & Misi</h2>
    </section>
    <br><br>    
    <!--============================= Visi =============================-->
    <section>
        <div class="container struktur" style="text-align: left;">
            <h3>Visi</h3>
        </div>
        <br>
        <div class="kepengurusan container d-flex justify-content-center align-items-center">
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Explicabo veniam quidem reprehenderit sit obcaecati adipisci quisquam saepe aliquam reiciendis laborum?</p>
        </div>
        <br>
    </section>

    <!-- Misi -->

    <section>
        <div class="container struktur" style="text-align: left;">
            <h3>Misi</h3>
        </div>
        <br>
        <div class="kepengurusan container d-flex justify-content-center align-items-center">
        <div>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Explicabo veniam quidem reprehenderit sit obcaecati adipisci quisquam saepe aliquam reiciendis laborum?</p>
            <ol>
                <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vel, cumque.</li>
                <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vel, cumque.</li>
                <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vel, cumque.</li>
                <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vel, cumque.</li>
                <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vel, cumque.</li>
            </ol>
        </div>
        </div>
        <br>
    </section>
    

<?php
    include "v_detailed_chart.php";
?>
 
    <!--============================= FOOTER =============================-->

    <?php 
        include 'footer.php';
    ?>
        
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
    <!-- Script JS -->
    <script src="<?php echo base_url().'theme/js/script.js'?>"></script>
</body>
</html>