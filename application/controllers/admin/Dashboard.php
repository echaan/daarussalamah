<?php
class Dashboard extends CI_Controller{
	function __construct(){
		parent::__construct();
		cek_akses([1, 2, 3]); // Akses 1, 2, dan 3 dapat mengakses dashboard
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_pengunjung');
	}
	function index(){
		if($this->session->userdata('akses')=='1'){
			$x['visitor'] = $this->m_pengunjung->statistik_pengujung();
			$this->load->view('admin/v_dashboard',$x);
		}elseif($this->session->userdata('akses')=='2'){
			$x['visitor'] = $this->m_pengunjung->statistik_pengujung();
			$this->load->view('admin/v_dashboard',$x);
		}elseif($this->session->userdata('akses')=='3'){
			$x['visitor'] = $this->m_pengunjung->statistik_pengujung();
			$this->load->view('admin/v_dashboard',$x);
		}else{
			redirect('administrator');
		}
	
	}
	
}