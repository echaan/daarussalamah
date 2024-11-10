<?php
defined('BASEPATH') OR exit('No direct script access allowed');

// Gunakan autoload dari Composer jika dompdf di-install menggunakan Composer
require_once FCPATH . 'vendor/autoload.php';

use Dompdf\Dompdf;
use Dompdf\Options;

class Pdf
{
    public function generate($html, $filename = '', $paper = 'A4', $orientation = 'portrait')
    {
        // Set opsi dompdf
        $options = new Options();
        $options->set('isHtml5ParserEnabled', true);
        $options->set('isRemoteEnabled', true);

        // Inisialisasi dompdf dengan opsi
        $dompdf = new Dompdf($options);
        $dompdf->loadHtml($html);
        $dompdf->setPaper($paper, $orientation);
        $dompdf->render();

        // Output file PDF ke browser
        $dompdf->stream($filename, array("Attachment" => false));
    }
}
