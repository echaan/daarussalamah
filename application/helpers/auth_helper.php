<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function cek_akses($akses_dibutuhkan) {
    $CI =& get_instance();
    $user_akses = $CI->session->userdata('akses');
    
    if (!in_array($user_akses, $akses_dibutuhkan)) {
        // Arahkan kembali ke halaman login atau halaman error jika akses ditolak
        show_error('Anda tidak memiliki akses ke halaman ini.', 403, 'Akses Ditolak');
    }
}
