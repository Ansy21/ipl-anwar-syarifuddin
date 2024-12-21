<?php
// Koneksi ke database
$conn = new mysqli("localhost", "root", "", "dbmodul7");

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Ambil ID pesan dari parameter URL
$idPesan = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($idPesan > 0) {
    // Query untuk menghapus pesan
    $query = "DELETE FROM pesan WHERE idPesan = $idPesan";
    if ($conn->query($query) === TRUE) {
        echo "Pesan berhasil dihapus.<br>";
        echo "<a href='tampilPesan.php'>Kembali ke Daftar Pesan</a>";
    } else {
        echo "Pesan gagal dihapus: " . $conn->error;
    }
} else {
    echo "ID pesan tidak valid.";
}

$conn->close();
?>
