<?php
class Sambutan extends CI_Controller{
	function __construct(){
		parent::__construct();
		cek_akses([]);
		$this->load->model('m_pengunjung');
		$this->m_pengunjung->count_visitor();
	}
	function index(){
		$this->load->view('depan/v_sambutan');
	}

}
