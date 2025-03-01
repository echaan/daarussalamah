<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Yayasan Daarussalamah | Log in</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link rel="shortcut icon" href="<?php echo base_url().'theme/images/icon3.png'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/css/bootstrap.min.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/AdminLTE.min.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/iCheck/square/blue.css'?>">
  <style>
    /* Center the login page with flexbox */
    .login-page {
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
      margin: 0;
      overflow: hidden;
    }
    .login-box {
      max-width: 400px;
    }
    .login-logo img {
      width: 20%;
    }
    .login-logo h3 {
      font-size: 24px;
      font-weight: bold;
      margin-top: 15px;
    }
    #loginErrorMessage {
      color: red;
      text-align: center;
      margin-bottom: 15px;
    }
  </style>
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <img src="<?php echo base_url().'theme/images/icon3.png'?>" alt="logo-sekolah">
    <h3>Yayasan Pondok Pesantren Daarussalamah</h3>
  </div>
  <div class="login-box-body">
    <div id="loginErrorMessage">
      <p><?php echo $this->session->flashdata('message_login_error');?></p>
    </div>
    <form action="<?php echo site_url().'admin/login/auth'?>" method="post">
      <div class="form-group has-feedback">
        <input type="text" name="username" class="form-control" placeholder="Username" required>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" name="password" class="form-control" placeholder="Password" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <button type="submit" class="btn btn-success btn-block btn-flat">Login</button>
        </div>
      </div>
    </form>
    <hr/>
    <p class="text-center">Copyright &copy; <?php echo date('Y');?> by Daarussalamah. All rights reserved.</p>
  </div>
</div>

<script src="<?php echo base_url().'assets/plugins/jQuery/jquery-2.2.3.min.js'?>"></script>
<script src="<?php echo base_url().'assets/bootstrap/js/bootstrap.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/iCheck/icheck.min.js'?>"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
  $(document).ready(function(){
    setTimeout(function(){
      $("#loginErrorMessage").fadeOut('slow');
    }, 3000);
  });
</script>
</body>
</html>
