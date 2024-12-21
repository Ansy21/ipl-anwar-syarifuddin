<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Pesan</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>

<body>
    <h1>Daftar Pesan</h1>
    <?php
    // Koneksi ke database
    $conn = new mysqli("localhost", "root", "", "dbmodul7");

    // Cek koneksi
    if ($conn->connect_error) {
        die("Koneksi gagal: " . $conn->connect_error);
    }

    // Query untuk mendapatkan data pesan
    $query = "SELECT * FROM pesan";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        echo "<table>";
        echo "<tr><th>ID Pesan</th><th>ID Penerima</th><th>ID Pengirim</th><th>Judul</th><th>Isi Pesan</th><th>Waktu</th><th>Aksi</th></tr>";

        // Tampilkan data pesan dalam tabel
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['idPesan'] . "</td>";
            echo "<td>" . $row['idPenerima'] . "</td>";
            echo "<td>" . $row['idPengirim'] . "</td>";
            echo "<td>" . $row['Judul'] . "</td>";
            echo "<td>" . $row['TextPesan'] . "</td>";
            echo "<td>" . $row['WktPesan'] . "</td>";
            echo "<td><a href='hapusPesan.php?id=" . $row['idPesan'] . "'>Hapus</a></td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "<p>Tidak ada pesan.</p>";
    }

    $conn->close();
    ?>
</body>

</html>
