<?php
// Include configuration file and connect to the database
require_once '../include/config.php';
include 'assets/navbar.php';

// Function to sanitize input data
function sanitizeInput($data)
{
    global $conn;
    return mysqli_real_escape_string($conn, trim($data));
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get data from the form
    $matkul_id = sanitizeInput($_POST['matkul_id']);

    // Check if id_mahasiswa is set in the session
    if(isset($_POST['id_mahasiswa'])) {
        $id_mahasiswa = $_POST['id_mahasiswa'];
        
        // Assuming you have a session variable for student ID
        $signature_data = $_POST['signature'];
        $decodedSignature = base64_decode(str_replace('data:image/png;base64,', '', $signature_data));
        $savePath = __DIR__ . '/mahasiswa/ttd/';

        // Pastikan direktori penyimpanan sudah ada
        if (!is_dir($savePath)) {
            mkdir($savePath, 0777, true);
        }
        // Buat nama file unik untuk gambar
        $fileName = $matkul_id .'_'. $id_mahasiswa.'.png';

        // Gabungkan path dengan nama file
        $filePath = $savePath . $fileName;

        // Simpan gambar ke path yang telah ditentukan
        file_put_contents($filePath, $decodedSignature);
        // Insert signature into the tanda_tangan_mahasiswa table
        $query = "INSERT INTO tanda_tangan_mahasiswa (id_mahasiswa, id_matkul, tgl_tanda_tangan, tanda_tangan)
                  VALUES ($id_mahasiswa, $matkul_id, 'time', '$filePath')";
        
        $result = mysqli_query($conn, $query);
        
    } else {
        // If id_mahasiswa is not set in the session
        echo "User ID not found in session.";
    }
} else {
    // If the form is not submitted via POST method
    echo "Invalid request.";
}
?>
