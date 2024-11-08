<!-- Menghitung jumlah pesan Inbox yang belum dibaca dan jumlah komentar yang belum diproses -->
<?php
error_reporting(0); // Mengabaikan pesan error
$query = $this->db->query("SELECT * FROM tbl_inbox WHERE inbox_status='1'"); // Mengambil data pesan baru
$query2 = $this->db->query("SELECT * FROM tbl_komentar WHERE komentar_status='0'"); // Mengambil data komentar baru
$jum_comment = $query2->num_rows(); // Menghitung jumlah komentar baru
$jum_pesan = $query->num_rows(); // Menghitung jumlah pesan baru
?>

<!DOCTYPE html>
<html>
<head>
  <!-- Pengaturan dasar halaman -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Daarussalamah | Dashboard</title>
  <link rel="shorcut icon" href="<?php echo base_url().'theme/images/icon3.png'?>">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  
  <!-- Menyertakan CSS -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/css/bootstrap.min.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/AdminLTE.min.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/skins/_all-skins.min.css'?>">

  <?php
  // Mengambil data pengunjung untuk membuat grafik
  foreach($visitor as $result){
      $bulan[] = $result->tgl; // Menyimpan tanggal sebagai label bulan
      $value[] = (float) $result->jumlah; // Menyimpan jumlah pengunjung per tanggal
  }
  ?>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <?php $this->load->view('admin/v_header'); ?> <!-- Memuat header dari file terpisah -->

  
  <!-- Content Wrapper -->
  <div class="content-wrapper">
    <section class="content-header">
      <h1>Dashboard</h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Konten utama -->
    <section class="content">
      <!-- Kotak informasi -->
      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Pengunjung bulan ini</h3>
            </div>
            <div class="box-body">
              <div class="col-md-12">
                <canvas id="canvas" width="1000" height="280"></canvas> <!-- Grafik Pengunjung -->
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Baris utama -->
      <div class="row">
        <!-- Postingan Populer -->
        <div class="col-md-8">
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Posting Populer</h3>
              <table class="table">
                <?php
                  // Mengambil data postingan populer
                  $query = $this->db->query("SELECT * FROM tbl_tulisan ORDER BY tulisan_views DESC");
                  foreach ($query->result_array() as $i):
                      $tulisan_id = $i['tulisan_id'];
                      $tulisan_judul = $i['tulisan_judul'];
                      $tulisan_views = $i['tulisan_views'];
                ?>
                <tr>
                  <td><?php echo $tulisan_judul; ?></td>
                  <td><?php echo $tulisan_views.' Views'; ?></td>
                </tr>
                <?php endforeach; ?>
              </table>
            </div>
          </div>
        </div>

        <!-- Statistik Pengunjung Bulan Lalu dan Bulan Ini -->
        <div class="col-md-4">
          <!-- Pengunjung Bulan Lalu -->
          <div class="info-box bg-red">
            <span class="info-box-icon"><i class="fa fa-users"></i></span>
            <?php
            $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE DATE_FORMAT(pengunjung_tanggal,'%m%y')=DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 MONTH),'%m%y')");
            $jml = $query->num_rows();
            ?>
            <div class="info-box-content">
              <span class="info-box-text">Pengunjung Bulan Lalu</span>
              <span class="info-box-number"><?php echo number_format($jml); ?></span>
              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
              <span class="progress-description">Pengunjung</span>
            </div>
          </div>

          <!-- Pengunjung Bulan Ini -->
          <div class="info-box bg-aqua">
            <span class="info-box-icon"><i class="fa fa-users"></i></span>
            <?php
            $query = $this->db->query("SELECT * FROM tbl_pengunjung WHERE DATE_FORMAT(pengunjung_tanggal,'%m%y')=DATE_FORMAT(CURDATE(),'%m%y')");
            $jml = $query->num_rows();
            ?>
            <div class="info-box-content">
              <span class="info-box-text">Pengunjung Bulan Ini</span>
              <span class="info-box-number"><?php echo number_format($jml); ?></span>
              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
              <span class="progress-description">Pengunjung</span>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <!-- Footer -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">Version 1.0</div>
    <strong>© 2024 Daarussalamah.</strong> All rights reserved.
  </footer>
</div>

<!-- Menyertakan JavaScript -->
<script src="<?php echo base_url().'assets/plugins/jQuery/jquery-2.2.3.min.js'?>"></script>
<script src="<?php echo base_url().'assets/bootstrap/js/bootstrap.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/chartjs/Chart.min.js'?>"></script>

<!-- Kode untuk membuat grafik menggunakan Chart.js -->
<script>
var lineChartData = {
  labels: <?php echo json_encode($bulan);?>,
  datasets: [
    {
      fillColor: "rgba(60,141,188,0.9)",
      strokeColor: "rgba(60,141,188,0.8)",
      pointColor: "#3b8bba",
      pointStrokeColor: "rgba(60,141,188,1)",
      pointHighlightFill: "#fff",
      pointHighlightStroke: "rgba(60,141,188,1)",
      data: <?php echo json_encode($value);?>
    }
  ]
};

var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(lineChartData);
</script>
</body>
</html>
