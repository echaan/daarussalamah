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
        <p>Visi Yayasan Daarussalamah dibentuk berdasarkan Qur’an Surah Al-Mujaddalah ayar 11, yakni unggul dalam pengenalan dan keyakinan kepada Allah, terdepan dalam ibadah dan akhlakul karimah.</p>
        </div>
        <br>
    </section>

    <!-- Misi -->

    <section>
        <div class="container struktur" style="text-align: left;">
            <h3>Misi</h3>
        </div>
        <br>
        <div class="kepengurusan container d-flex justify-content-left align-items-left">
        <div>
            <p>Misi Madrasah Yayasan Daarussalamah adalah sebagai berikut:</p>
            <ol>
                <li>Menngantarkan para siswa memiliki kemantapan akidah, ke dalam spiritual, keluruhan akhlak dan keluasan ilmu agama.</li>
                <li>Memberikan pelayanan terhadap penggalian ilmu-ilmu keislaman, terutama yang berhubungan dengan keimanan dan ibadah.</li>
                <li>Memberikan keteladanan dalam kehidupan atas dasar nilai - nilai keislaman.</li>
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