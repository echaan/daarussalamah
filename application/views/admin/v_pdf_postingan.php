<!DOCTYPE html>
<html>
<head>
    <title>Daftar Berita</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h2>Daftar Berita</h2>
    <table>
        <thead>
            <tr>
                <th>Gambar</th>
                <th>Judul</th>
                <th>Tanggal</th>
                <th>Author</th>
                <th>Baca</th>
                <th>Kategori</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data as $i): ?>
            <tr>
                <td><img src="<?php echo base_url('assets/images/' . $i->tulisan_gambar); ?>" width="90"></td>
                <td><?php echo $i->tulisan_judul; ?></td>
                <td><?php echo $i->tulisan_tanggal; ?></td>
                <td><?php echo $i->tulisan_author; ?></td>
                <td><?php echo $i->tulisan_views; ?></td>
                <td><?php echo $i->tulisan_kategori_nama; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
