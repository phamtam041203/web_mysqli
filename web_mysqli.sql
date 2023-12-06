-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2023 lúc 12:33 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'webmysqli', '25f9e794323b453885f5181f1b624d0b', 1),
(2, 'adminn', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(11) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(39, 11, '1048', 1, '2022-02-06 11:53:02', 'tienmat', 2),
(40, 11, '6315', 1, '2022-02-06 11:53:14', 'chuyenkhoan', 2),
(41, 11, '4559', 1, '2022-02-06 11:53:35', 'paypal', 2),
(42, 11, '9554', 1, '2022-02-06 11:54:52', 'momo', 2),
(43, 11, '2844', 1, '2022-02-06 11:55:05', 'vnpay', 2),
(44, 11, '9487', 1, '2022-02-06 12:47:17', 'tienmat', 2),
(45, 11, '3066', 1, '2022-02-06 12:47:20', 'chuyenkhoan', 2),
(46, 11, '6962', 1, '2022-02-06 12:47:46', 'paypal', 2),
(47, 11, '6140', 1, '2022-02-06 12:48:05', 'vnpay', 2),
(48, 11, '3872', 1, '2022-02-06 12:50:35', 'momo', 2),
(49, 11, '1161', 1, '2022-02-16 16:48:43', 'momo', 2),
(50, 11, '1323', 1, '2022-02-18 14:08:51', 'vnpay', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(54, '1048', 12, 1),
(55, '6315', 12, 1),
(56, '4559', 12, 1),
(57, '9554', 12, 1),
(58, '2844', 12, 1),
(59, '9487', 12, 1),
(60, '3066', 12, 1),
(61, '6962', 12, 1),
(62, '6140', 12, 1),
(63, '3872', 12, 1),
(64, '1161', 7, 1),
(65, '1323', 8, 2),
(66, '1323', 6, 3),
(67, '1323', 11, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(33, 'pham thanh tam', 'lmhttam123@gmail.com', '1331/3/1G Lê Đức Thọ, phường 13, gò vấp, hồ chí minh', '81dc9bdb52d04dc20036dbd8313ed055', '0337629737'),
(34, '', '', '', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(35, 'pham tam', 'lmhttam123@gmail.com', '1331/3/1G Lê Đức Thọ, phường 13, gò vấp, hồ chí minh', '81dc9bdb52d04dc20036dbd8313ed055', '0337629737'),
(36, '', '', '', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(37, 'pham thanh tam', 'tam@gmail.com', '0123', '81dc9bdb52d04dc20036dbd8313ed055', '0123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Nghệ thuật tối giản', 1),
(2, 'Đơn giản mà sang', 2),
(3, 'Space', 3),
(4, 'Phụ kiện thời trang', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ol>\r\n	<li>\r\n	<h3>Số điện thoại :<strong> </strong>0986551625 - TQT SHOP</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Zalo : 0337629737 - B&ugrave;i Trọng Tấn</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Fb :<a href=\"http://facebook.com/emdunggboanh\"> Pham Tam</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3>Instagram : <a href=\"http://instagram.com/nguyenhongquang\">/hongquangg</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3>Youtube : <a href=\"https://www.youtube.com/@t.solitude\" target=\"_blank\">youtube.com/@t.solitude</a></h3>\r\n	</li>\r\n</ol>\r\n\r\n<h3><strong>Shop TQT chuy&ecirc;n cung cấp những đồ thời trang hot nhất v&agrave; đẹp nhất hiện tại</strong></h3>\r\n\r\n<p><strong><img alt=\"\" src=\"https://saigonamthuc.vn/wp-content/uploads/2023/03/Cua-hang-thoi-trang-Yame-gan-day-nhat-5.jpg\" style=\"height:363px; width:400px\" /><img alt=\"\" src=\"https://saigonamthuc.vn/wp-content/uploads/2023/03/Cua-hang-thoi-trang-Yame-gan-day-nhat-1.jpg\" style=\"height:363px; width:400px\" /><img alt=\"123\" src=\"https://scontent.fsgn2-10.fna.fbcdn.net/v/t39.30808-6/244605248_4435501773198556_2398667555809586604_n.jpg?_nc_cat=110&amp;ccb=1-7&amp;_nc_sid=5f2048&amp;_nc_ohc=9G6sK_tz_ZsAX_tIS1O&amp;_nc_ht=scontent.fsgn2-10.fna&amp;oh=00_AfA9m59mxMzm6DZc2NrVSOuvTLSh9JdZxyJIPOENSuxNYQ&amp;oe=6564F8AC\" style=\"height:363px; width:484px\" /></strong></p>\r\n\r\n<h3><strong>&nbsp;</strong></h3>\r\n\r\n<h3><strong>&nbsp;</strong></h3>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_momo`
--

CREATE TABLE `tbl_momo` (
  `id_momo` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `order_info` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(10, 'Dây ngọc 1', '005', '99000', 10, '1610015549_dayngoc.jpg', 'fsdfs', 'fsdfdsfsdf', 1, 5),
(12, 'ốp lung 1', '001', '250000', 3, '1633710055_dayngoc.jpg', '<ul>\n	<li>C&aacute;c t&iacute;nh năng:</li>\n	<li>100% Nguy&ecirc;n Bản mới chất lượng cao.</li>\n	<li>Thiết kế s&aacute;ng tạo để bảo vệ ho&agrave;n hảo m&aacute;y ảnh của điện thoại.</li>\n	<li>Vỏ bảo vệ chất lượng cao, thời trang v&agrave; chất lượng cao.</li>\n	<li>Bảo vệ điện thoại chống m&agrave;i m&ograve;n v&agrave; che c&aacute;c vết trầy xước, bụi, dấu v&acirc;n tay</li>\n	<li>Dễ d&agrave;ng c&agrave;i đặt v&agrave; gỡ bỏ</li>\n	<li>Cho ph&eacute;p truy cập v&agrave;o tất cả c&aacute;c cổng, cảm biến v&agrave; đầu v&agrave;o</li>\n	<li>Ho&agrave;n hảo để sử dụng trong mọi hoạt động ngo&agrave;i trời hoặc du lịch để bảo vệ điện thoại của bạn</li>\n	<li>Dễ d&agrave;ng c&agrave;i đặt</li>\n	<li>Ho&agrave;n to&agrave;n ph&ugrave; hợp cho điện thoại của bạn.</li>\n</ul>\n', '<p><strong>M&ocirc; tả sản phẩm:</strong><br />\r\n100% mới v&agrave; chưa sử dụng<br />\r\nThiết kế cạnh vu&ocirc;ng cổ điển như Iphone 12 trong tương lai.<br />\r\nDễ th&aacute;o lắp.<br />\r\nCấp thực phẩm silicon, an to&agrave;n v&agrave; cảm gi&aacute;c tay tốt nhất.<br />\r\nThiết kế thời trang gi&uacute;p điện thoại của bạn trở n&ecirc;n độc đ&aacute;o.<br />\r\nĐược l&agrave;m bằng vật liệu chống sốc v&agrave; chống trầy xước.<br />\r\nD&acirc;y buộc miễn ph&iacute; để bảo vệ chống lại những giọt v&ocirc; t&igrave;nh.<br />\r\nTất cả c&aacute;c n&uacute;t chức năng hoạt động ngay khi điện thoại của bạn trong trường hợp n&agrave;y.<br />\r\n<br />\r\n<strong>T&iacute;nh năng:</strong><br />\r\nChất liệu: được l&agrave;m bằng Silicone lỏng mềm chất lượng cao.<br />\r\n<br />\r\n<strong>Nội dung đ&oacute;ng g&oacute;i:</strong><br />\r\n1 x Ốp silicon họa tiết viền<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://my-live-05.slatic.net/p/78a3b632eb7f92e8b80bd063124e464f.jpg_2200x2200q80.jpg_.webp\" style=\"height:600px; width:600px\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n', 1, 5),
(13, 'HG17', '001', '250000', 1000, '1700725439_HG17(1).jpg', '<p>RAYON FABRIC</p>\r\n', '<p>Chuẩn form, t&ocirc;n d&aacute;ng</p>\r\n\r\n<p>Mềm nhẹ</p>\r\n\r\n<p>Phi&ecirc;n bản clasic</p>\r\n', 1, 1),
(14, 'M4', '002', '300000', 1000, '1700725542_M4(1).jpg', '<p>TICI C&Aacute; SẤU</p>\r\n', '<p>Tho&aacute;ng m&aacute;t, Co gi&atilde;n tối ưu</p>\r\n', 1, 1),
(15, 'M4.1', '003', '270000', 1000, '1700725634_M4.1(1).jpg', '<p>C&Aacute; SẤU TICI 4C</p>\r\n', '<p>Co d&atilde;n, thoải m&aacute;i, phi&ecirc;n bản Classic</p>\r\n', 1, 1),
(16, 'M4.2', '004', '300000', 800, '1700725785_M4.2(1).jpg', '<p>CAF&Eacute; FABRIC</p>\r\n', '<p>Kiểm so&aacute;t m&ugrave;i hiệu quả, Chống UV, phi&ecirc;n bản Classic</p>\r\n', 1, 1),
(17, 'M10', '005', '350000', 515, '1700725851_M10(1).jpg', '<p>FORD COTTON POLY</p>\r\n', '<p>Tho&aacute;ng kh&iacute;, mềm nhẹ, phi&ecirc;n bản Sporty</p>\r\n', 1, 1),
(18, 'M11', '006', '300000', 1200, '1700725918_M11(1).jpg', '<p>MODAL SUPERFINE</p>\r\n', '<p>Mềm mại</p>\r\n\r\n<p>&Iacute;t nhăn, dễ ủi</p>\r\n\r\n<p>Phi&ecirc;n bản Sporty</p>\r\n', 1, 1),
(19, 'M11.1', '007', '240000', 900, '1700725986_M11.1(1).jpg', '<p>COTTON COMPACT</p>\r\n', '<p>100% COTTON co d&atilde;n 2 chiều, thấm h&uacute;t</p>\r\n', 1, 1),
(20, 'M13', '008', '210000', 100, '1700726075_M13(1).jpg', '<p>COTTON COMPACT 2C</p>\r\n', '<p>Tho&aacute;ng m&aacute;t</p>\r\n\r\n<p>Mềm mại</p>\r\n\r\n<p>Phi&ecirc;n bản Clasic</p>\r\n', 1, 1),
(21, 'VER5', '009', '315000', 350, '1700726139_VER5(1).jpg', '<p>KATI COTTON 100</p>\r\n', '<p>Năng động</p>\r\n\r\n<p>Tho&aacute;ng m&aacute;t</p>\r\n\r\n<p>Phi&ecirc;n bản Sporty</p>\r\n', 1, 1),
(22, 'Thắc lưng', '001', '200000', 400, '1700729644_1.jpg', '<p>Thắc lưng da 100%</p>\r\n', '<p>Thắc lưng da mang đến cảm gi&aacute;c tuyệt vời cho người sử dụng</p>\r\n', 1, 4),
(23, 'Ví da', '002', '450000', 300, '1700729783_2.jpg', '<p>V&iacute; da thật 100%</p>\r\n', '<p>V&iacute; da cao cấp đẹp, bền bỉ theo thời gian</p>\r\n', 1, 4),
(24, 'Vớ giày lười', '003', '50000', 500, '1700729838_3.jpg', '<p>NOW-SHOW SOCKS</p>\r\n', '<p>Vớ kh&ocirc;ng cổ</p>\r\n\r\n<p>Cổ vớ giấu thấp</p>\r\n\r\n<p>Tiện dụng cho c&aacute;c mẫu gi&agrave;y lười</p>\r\n', 1, 4),
(25, 'Mũ lưỡi tranh', '004', '100000', 600, '1700729880_4.jpg', '<p>Mũ lưỡi trai m&agrave;u Be</p>\r\n', '<p>Mũ bền bỉ theo thời gian mang lại cảm gi&aacute;c &ocirc;m đầu cho người mang</p>\r\n', 1, 4),
(26, 'Vớ cổ cao', '005', '30000', 700, '1700729927_7.jpg', '<p>CREW SOCKS</p>\r\n', '<p>Cổ vớ cao</p>\r\n\r\n<p>Thuận tiện cho hoạt động thể thao</p>\r\n', 1, 4),
(27, 'Mũ len ', '006', '150000', 700, '1700730275_9.jpg', '<p>LEN ACRYLIC Y_ORIGINAL</p>\r\n', '<p>Chi tiết th&ecirc;u tinh tế, co gi&atilde;n</p>\r\n', 1, 4),
(28, 'COTTON SPANDEX', '001', '250000', 600, '1700730514_1.jpg', '<p>COTTON SPANDEX</p>\r\n', '<p>Thoải m&aacute;i</p>\r\n\r\n<p>Co d&atilde;n</p>\r\n', 1, 3),
(29, 'KAKI NHUNG', '002', '400000', 700, '1700730560_2.jpg', '<p>KAKI NHUNG</p>\r\n', '<p>&Aacute;o sweater co d&atilde;n thoải m&aacute;i</p>\r\n', 1, 3),
(30, 'COTTON SPANDEX 2', '003', '250000', 200, '1700730601_3.jpg', '<p>COTTON SPANDEX 2</p>\r\n', '<p>Thiết kế độc đ&aacute;o mới lạ</p>\r\n', 1, 3),
(31, 'BAMBO FABRIC', '004', '250000', 300, '1700731714_4.jpg', '<p>BAMBO FABRIC</p>\r\n', '<p>Hoạ tiết bắt mắt, chất liệu vải v&ocirc; c&ugrave;ng tho&aacute;ng m&aacute;t</p>\r\n', 1, 3),
(32, 'DÙ POLYESTER', '005', '250000', 650, '1700732052_5.jpg', '<p>D&Ugrave; POLYESTER</p>\r\n', '<p>&Aacute;o d&ugrave; tho&aacute;ng m&aacute;t, c&aacute; t&iacute;nh thời trang</p>\r\n', 1, 3),
(33, 'COTTON COMPACT', '006', '200000', 1500, '1700732233_6.jpg', '<p>COTTON COMPACT</p>\r\n', '<p>Sản phẩm đẹp chất lượng cao</p>\r\n', 1, 3),
(34, 'COTTON DOUBLE FACE', '001', '250000', 700, '1701075238_1.jpg', '<p>COTTON DOUBLE FACE</p>\r\n', '<p>Cấu tr&uacute;c vải 2 mặt</p>\r\n\r\n<p>Độ bền cao</p>\r\n', 1, 2),
(35, 'COTTON COMPACT 4C', '002', '200000', 400, '1701075275_2.2.jpg', '<p>COTTON COMPACT 4C</p>\r\n', '<p>Co d&atilde;n</p>\r\n\r\n<p>Thoải m&aacute;i</p>\r\n', 1, 2),
(36, 'KAKI COTTON SPANDEX', '003', '150000', 800, '1701075312_3.jpg', '<p>KAKI COTTON SPANDEX</p>\r\n', '<p>Co d&atilde;n nhẹ</p>\r\n\r\n<p>Thoải m&aacute;i</p>\r\n', 1, 2),
(38, 'COTTON COMPACT', '004', '200000', 800, '1701075366_4.jpg', '<p>COTTON COMPACT</p>\r\n', '<p>Mềm mại</p>\r\n\r\n<p>Tho&aacute;ng m&aacute;t</p>\r\n', 1, 2),
(39, 'COTTON SPANDEX', '005', '250000', 500, '1701075406_5.jpg', '<p>COTTON SPANDEX</p>\r\n', '<p>Thoải m&aacute;i</p>\r\n\r\n<p>Co d&atilde;n</p>\r\n', 1, 2),
(40, 'POLY RAYON SPANDEX', '006', '300000', 1000, '1701075449_6.jpg', '<p>POLY RAYON SPANDEX</p>\r\n', '<p>POLY RAYON SPANDEX&nbsp;</p>\r\n\r\n<p>FORM: BAGGY</p>\r\n', 1, 2),
(41, 'COTTON COMPACT HORUS', '007', '250000', 1000, '1701075477_7.jpg', '<p>COTTON COMPACT HORUS</p>\r\n', '<p>COTTON COMPACT HORUS</p>\r\n', 1, 4),
(42, 'COTTON COMPACT HORU NÂUS', '008', '250000', 700, '1701075503_8.jpg', '<p>COTTON COMPACT HORUS</p>\r\n', '<p>COTTON COMPACT HORUS</p>\r\n', 1, 2),
(43, 'JEAN COTTON SPANDEX', '009', '200000', 1000, '1701075529_9.jpg', '<p>JEAN COTTON SPANDEX</p>\r\n', '<p>JEAN COTTON SPANDEX</p>\r\n', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(8, 'Mikenko.solitude Music', '0337629737', '44 Nguyễn Văn Dung, Phường 6, Gò Vấp', '', 37);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vnpay`
--

CREATE TABLE `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankCode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_vnpay`
--

INSERT INTO `tbl_vnpay` (`id_vnpay`, `vnp_amount`, `vnp_bankCode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `code_cart`) VALUES
(4, '25000000', 'NCB', '20220206115602', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206115533', 'UD2KZW06', '13682669', '2844'),
(5, '25000000', 'NCB', '20220206124857', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206124854', 'UD2KZW06', '13682671', '6140');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
