<?php
class Profil extends CI_Controller{
	function __construct(){
		parent::__construct();
        $this->load->model('m_pengunjung');
		$this->m_pengunjung->count_visitor();
	}
	function sejarah(){
		$this->load->view('depan/v_sejarah');
	}

	function visimisi(){
		$this->load->view('depan/v_visi_misi');
	}

	function struktur(){
		$this->load->view('depan/v_struktur');
	}

	function mi(){
		$this->load->view('depan/v_profil_mi');
	}
    
    function mts(){
		$this->load->view('depan/v_profil_mts');
	}

    function ma(){
		$this->load->view('depan/v_profil_ma');
	}
}
