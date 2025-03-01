<!DOCTYPE html>
<html lang="en">
    
<?php include 'head.php'?>

<body>
    
    <?php include 'v_header.php'?>

    <section class="clearfix about about-style2 about_bg">
        <h2 style="color: rgb(56, 159, 73); text-align: center;" class="about_bg">Sejarah</h2>
    </section>
    <!--============================= SEJARAH =============================-->
    <section class="clearfix about about-style2 sejarah">
        <div class="container">
            <div class="image-container">
                <img src="<?php echo base_url().'theme/images/icon3.png'?>" class="img-fluid about-img" alt="#">
            </div>
            <p class="justify-text">Yayasan Daarussalamah adalah sebuah lembaga yang berfokus pada penyelenggaraan pendidikan berbasis nilai-nilai Islam, didirikan pada tahun 2005 di Desa Bangun Jaya, Kecamatan Tambusai Utara, Kabupaten Rokan Hulu. Yayasan ini lahir dari inisiatif masyarakat setempat bersama Kiyai Ahmad Faqih Al Asy'ari, seorang tokoh agama dari Pondok Pesantren Daarussalamah Lampung. Yayasan Daarussalamah mengelola tiga jenjang pendidikan formal, yaitu Madrasah Ibtidaiyah Swasta (MIS), Madrasah Tsanawiyah Swasta (MTsS), dan Madrasah Aliyah Swasta (MAS).</p>

            <p class="justify-text">Madrasah Ibtidaiyah Swasta (MIS) Daarussalamah, dengan NPSN 60704468, berdiri berdasarkan SK Nomor Kd.04.9/3/MI/PP.00/1280/2010 tanggal 2 Agustus 2010. Madrasah Tsanawiyah Swasta (MTsS) Daarussalamah, dengan NPSN 69754572, didirikan melalui SK Nomor 191 Tahun 2007 tanggal 29 Oktober 2006. Sementara itu, Madrasah Aliyah Swasta (MAS) Daarussalamah, yang memiliki NPSN 69941594, beroperasi berdasarkan SK Nomor KW.04.2/5/PP.00.11/614/2015 tanggal 28 Agustus 2015. Ketiga madrasah tersebut beralamat di Jl. KH. Hasyim Asy'ari, Desa Bangun Jaya, dan masing-masing melayani jenjang pendidikan berbeda, mulai dari pendidikan dasar berbasis Islam di MIS, pendidikan menengah pertama yang mengintegrasikan kurikulum nasional dengan nilai-nilai keislaman di MTsS, hingga pendidikan menengah atas dengan penekanan pada pengembangan intelektual dan spiritual siswa di MAS.</p>
            
            <p class="justify-text">Dengan semangat dakwah dan pendidikan, Yayasan Daarussalamah terus berkontribusi dalam mencetak generasi berakhlak mulia dan berprestasi di Kabupaten Rokan Hulu dan sekitarnya.</p>

        </div>
    </section>

    <!-- Detailed Chart -->
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