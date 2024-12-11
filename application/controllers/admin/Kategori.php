<?php
class Kategori extends CI_Controller{
	function __construct(){
		parent::__construct();
		cek_akses([1, 2, 3]);
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_kategori');
		$this->load->library('upload');
		$this->load->library('session');


	}


	function index(){
		$x['data']=$this->m_kategori->get_all_kategori();
		$x['msg'] = $this->session->flashdata('msg');
		$this->load->view('admin/v_kategori',$x);
	}

	function simpan_kategori(){
		$kategori=strip_tags($this->input->post('xkategori'));
		$this->m_kategori->simpan_kategori($kategori);
		$this->session->set_flashdata('msg','success');
		redirect('admin/kategori');
	}

	function update_kategori(){
		$kode=strip_tags($this->input->post('kode'));
		$kategori=strip_tags($this->input->post('xkategori'));
		$this->m_kategori->update_kategori($kode,$kategori);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/kategori');
	}
	function hapus_kategori() {
    $kode = strip_tags($this->input->post('kode'));

    // Cek apakah kategori digunakan di tabel tulisan
    $kategori_digunakan = $this->db->where('tulisan_kategori_id', $kode)->count_all_results('tbl_tulisan');
    
	echo ($kategori_digunakan);
    if ($kategori_digunakan > 0) {
        // Jika kategori digunakan, berikan pesan kesalahan
        $this->session->set_flashdata('msg', 'gagal-hapus');
        
		
    } else {
        // Jika kategori tidak digunakan, hapus kategori
        $this->m_kategori->hapus_kategori($kode);
		$this->session->set_flashdata('msg', 'success-hapus');

    }

	redirect('admin/kategori');
    
}


}
