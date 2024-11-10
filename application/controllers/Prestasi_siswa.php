<?php
class Prestasi_siswa extends CI_Controller{
	function __construct(){
		parent::__construct();
		cek_akses([]);

	}

	function index(){
		echo "<script>alert('Coming Soon!')</script>";
	}

}