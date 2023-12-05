<?php
require('../../../carbon/autoload.php');
include('../../config/config.php');
use Carbon\Carbon;
use Carbon\CarbonInterval;

// Function to sanitize input for SQL queries
function sanitizeInput($input, $mysqli) {
    return mysqli_real_escape_string($mysqli, $input);
}

$now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

if (isset($_GET['code'])) {
    $code_cart = sanitizeInput($_GET['code'], $mysqli);

    // Update cart status
    $sql_update = "UPDATE tbl_cart SET cart_status=0 WHERE code_cart='$code_cart'";
    $query = mysqli_query($mysqli, $sql_update);

    if (!$query) {
        die("Error updating cart status: " . mysqli_error($mysqli));
    }

    // Thong ke doanh thu
    $sql_lietke_dh = "SELECT * FROM tbl_cart_details, tbl_sanpham WHERE tbl_cart_details.id_sanpham=tbl_sanpham.id_sanpham AND tbl_cart_details.code_cart='$code_cart' ORDER BY tbl_cart_details.id_cart_details DESC";
    $query_lietke_dh = mysqli_query($mysqli, $sql_lietke_dh);

    $soluongmua = 0;
    $doanhthu = 0;

    while ($row = mysqli_fetch_array($query_lietke_dh)) {
        $soluongmua += $row['soluongmua'];
        $doanhthu += $row['giasp'];
    }

    // Thong ke update
    $sql_thongke = "SELECT * FROM tbl_thongke WHERE ngaydat='$now'";
    $query_thongke = mysqli_query($mysqli, $sql_thongke);

    if (mysqli_num_rows($query_thongke) == 0) {
        // Insert new record if no record for the current date
        $sql_update_thongke = mysqli_query($mysqli, "INSERT INTO tbl_thongke (ngaydat, soluongban, doanhthu, donhang) VALUES ('$now', '$soluongmua', '$doanhthu', 1)");
    } else {
        // Update existing record if there is a record for the current date
        $row_tk = mysqli_fetch_array($query_thongke);
        $soluongban = $row_tk['soluongban'] + $soluongmua;
        $doanhthu += $row_tk['doanhthu'];
        $donhang = $row_tk['donhang'] + 1;

        $sql_update_thongke = mysqli_query($mysqli, "UPDATE tbl_thongke SET soluongban='$soluongban', doanhthu=doanhthu+'$doanhthu', donhang='$donhang' WHERE ngaydat='$now'");
    }

    header('Location:../../index.php?action=quanlydonhang&query=lietke');
}
?>
