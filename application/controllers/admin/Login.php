<?php
class Login extends CI_Controller{
    function __construct(){
        parent:: __construct();
        $this->load->model('m_login');
    }
    function index(){
        // Cek apakah pengguna sudah login
        if ($this->session->userdata('masuk') === TRUE) {
            // Periksa level akses dan arahkan ke dashboard sesuai akses
            $akses = $this->session->userdata('akses');
            
            if ($akses == 1) {
                redirect('admin/dashboard'); // Arahkan ke dashboard untuk akses 1
            } elseif ($akses == 2) {
                redirect('admin/dashboard'); // Arahkan ke dashboard untuk akses 2
            } elseif ($akses == 3) {
                redirect('admin/dashboard'); // Arahkan ke dashboard untuk akses 3
            }
        }

        // Jika belum login, tampilkan form login
        $this->load->view('admin/v_login');
    }

    function auth(){
        $username=strip_tags(str_replace("'", "", $this->input->post('username')));
        $password=strip_tags(str_replace("'", "", $this->input->post('password')));
        $u=$username;
        $p=$password;
        $cadmin=$this->m_login->cekadmin($u,$p);
        echo json_encode($cadmin);
        if($cadmin->num_rows() > 0){
            // Set session dasar
            $this->session->set_userdata('masuk', true);
            $this->session->set_userdata('user', $u);
            
            $xcadmin = $cadmin->row_array();
            $idadmin = $xcadmin['pengguna_id'];
            $user_nama = $xcadmin['pengguna_nama'];
            
            // Simpan idadmin dan nama di session
            $this->session->set_userdata('idadmin', $idadmin);
            $this->session->set_userdata('nama', $user_nama);
            
            // Cek level pengguna dan set akses
            if ($xcadmin['pengguna_level'] == '1') {
                $this->session->set_userdata('akses', '1');
                redirect('admin/dashboard');
            } else if ($xcadmin['pengguna_level'] == '2') {
                $this->session->set_userdata('akses', '2');
                redirect('admin/dashboard');
            } else if ($xcadmin['pengguna_level'] == '3') {
                $this->session->set_userdata('akses', '1');
                redirect('admin/dashboard');
            }else if ($xcadmin['pengguna_level'] == '4') {
                $this->session->set_userdata('akses', '3');
                redirect('admin/dashboard');
            }else if ($xcadmin['pengguna_level'] == '5') {
                $this->session->set_userdata('akses', '1');
                redirect('admin/dashboard');
            }
            
        }else{
        $this->session->set_flashdata('message_login_error', '<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert"><span class="fa fa-close"></span></button> Username Atau Password Salah</div>');
        redirect('admin/login'); 
       }

    }

    function logout(){
        $this->session->sess_destroy();
        redirect('admin/login');
    }

}
