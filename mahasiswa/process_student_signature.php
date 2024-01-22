<?php
// Include necessary configurations
require_once '../include/config.php';
include 'assets/navbar.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get form data
    $matkul_id = isset($_POST['matkul_id']) ? $_POST['matkul_id'] : null;
    $id_mahasiswa = isset($_POST['id_mahasiswa']) ? $_POST['id_mahasiswa'] : null;
    $signatureData = isset($_POST['signature']) ? $_POST['signature'] : null;
    $kode_matkul = isset($_POST['kode_matkul']) ? $_POST['kode_matkul'] : null;
    
    $queryAbsens = "SELECT * FROM tanda_tangan_mahasiswa WHERE id_mahasiswa = $id_mahasiswa  AND id_matkul = $matkul_id";
    $resultAbsens= $conn->query($queryAbsens);

    if ($resultAbsens->num_rows > 0) {
        echo "<div class='container mt-5'>
            <h1>Absen sudah terdaftar</h1>
            </div>";
    } else {
        if ($matkul_id && $id_mahasiswa && $signatureData && $kode_matkul ) {
            // Decode the data URL to get the actual signature image
            /*$decodedSignature = base64_decode(str_replace('data:image/png;base64,', '', $signatureData));
            
            // Insert the signature into the tanda_tangan_mahasiswa table
            $insertSignatureQuery = "INSERT INTO tanda_tangan_mahasiswa (id_mahasiswa, id_dosen, id_matkul, tgl_tanda_tangan, tanda_tangan) VALUES (?, NULL, ?, CURDATE(), ?)";
            $stmt = $conn->prepare($insertSignatureQuery);
            $stmt->bind_param('is', $id_mahasiswa, $matkul_id, $decodedSignature);
            $stmt->execute();
            $stmt->close();
            */
            $decodedSignature = base64_decode(str_replace('data:image/png;base64,', '', $signatureData));
    
        // Tentukan path tempat Anda ingin menyimpan gambar di server
            $savePath = __DIR__ . '\ttd/';

        // Pastikan direktori penyimpanan sudah ada
        if (!is_dir($savePath)) {
            mkdir($savePath, 0777, true);
        }
            $currentDateTime = new DateTime();
            $stringDate = $currentDateTime->format('Y-m-d H:i:s');
            // Buat nama file unik untuk gambar
            $fileName = $matkul_id .'_'. $id_mahasiswa .'.png';
    
            // Gabungkan path dengan nama file
            $filePath = $savePath . $fileName;
    
            // Simpan gambar ke path yang telah ditentukan
            file_put_contents($filePath, $decodedSignature);
    
            // Insert the signature into the tanda_tangan_mahasiswa table
            $insertSignatureQuery = "INSERT INTO tanda_tangan_mahasiswa (id_kls, id_mahasiswa, id_dosen, id_matkul, tgl_tanda_tangan, tanda_tangan) VALUES (?,?, 1, ?, NOW(), ?)";
            $stmt = $conn->prepare($insertSignatureQuery);
            $stmt->bind_param('siis', $kode_matkul, $id_mahasiswa,  $matkul_id, $filePath);
            $stmt->execute();
            $stmt->close();
    
            // Query to get course information and count of students present
            $attendanceQuery = "SELECT M.nama_matkul, COUNT(DISTINCT AM.id_mahasiswa) AS jumlah_absensi
                                FROM matkul M
                                LEFT JOIN absensi_mahasiswa AM ON M.id = AM.id_matkul
                                WHERE M.id = ? AND AM.tanggal = CURDATE() AND AM.hadir = TRUE";
            $stmtAttendance = $conn->prepare($attendanceQuery);
            $stmtAttendance->bind_param('i', $matkul_id);
            $stmtAttendance->execute();
            $stmtAttendance->bind_result($nama_matkul, $jumlah_absensi);
            $stmtAttendance->fetch();
            $stmtAttendance->close();
    
            // Query to get course information
            $courseQuery = "SELECT kode_matkul, nama_matkul, kelas, hari, jam_mulai, jam_selesai FROM matkul WHERE id = ?";
            $stmtCourse = $conn->prepare($courseQuery);
            $stmtCourse->bind_param('i', $matkul_id);
            $stmtCourse->execute();
            $stmtCourse->bind_result($kodeMatkul, $namaMatkul, $kelas, $hari, $jamMulai, $jamSelesai);
            $stmtCourse->fetch();
            $stmtCourse->close();
    
            echo "
            <!DOCTYPE html>
            <html lang='en'>
            <head>
                <meta charset='UTF-8'>
                <meta name='viewport' content='width=device-width, initial-scale=1.0'>
                <title>Signature Processed</title>
                <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css'>
            </head>
            <body>
                <div class='container mt-5'>
                    <h1>Signature Processed Successfully</h1>
                    <p>Course: $namaMatkul</p>
                    <p>Class: $kelas</p>
                    <p>Day: $hari</p>
                    <p>Time: $jamMulai - $jamSelesai</p>
                    <p>The digital signature has been stored in the database.</p>
                </div>
            </body>
            </html>";
    
            include 'assets/footer.php'; // Include footer.php
        } else {
            echo "Invalid form data.";
        }
    }
    
} else {
    echo "Invalid Request.";
}

// Close the database connection
$conn->close();
?>
