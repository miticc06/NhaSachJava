-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 05, 2019 lúc 04:57 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhasach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `mactdonhang` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masach` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `phantramgiamgia` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ctdonhang`
--

INSERT INTO `ctdonhang` (`mactdonhang`, `madonhang`, `masach`, `soluong`, `dongia`, `phantramgiamgia`) VALUES
(137, 117, 77, 1, 20000, 0),
(141, 120, 77, 1, 20000, 0),
(142, 120, 52, 1, 25000, 0),
(143, 121, 52, 1, 25000, 0),
(147, 124, 62, 3, 100000, 10),
(148, 125, 86, 3, 200000, 0),
(149, 126, 89, 1, 200000, 0),
(150, 126, 88, 1, 200000, 0),
(151, 126, 53, 1, 48000, 35),
(152, 127, 89, 1, 200000, 0),
(153, 127, 88, 1, 200000, 0),
(154, 127, 53, 1, 48000, 35),
(157, 129, 53, 1, 48000, 35),
(158, 130, 53, 1, 48000, 35),
(159, 131, 61, 1, 15700, 50),
(160, 132, 92, 1, 15000, 5),
(161, 133, 92, 20, 15000, 5),
(162, 134, 79, 1, 62000, 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `mactphieunhap` int(11) NOT NULL,
  `maphieunhap` int(11) NOT NULL,
  `masach` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `soluongnhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ctphieunhap`
--

INSERT INTO `ctphieunhap` (`mactphieunhap`, `maphieunhap`, `masach`, `dongia`, `soluongnhap`) VALUES
(14, 11, 62, 140000, 20),
(15, 11, 61, 10000, 10),
(16, 12, 76, 36000, 20),
(17, 13, 77, 19000, 100),
(18, 14, 66, 25000, 10),
(19, 14, 76, 10000, 10),
(20, 15, 86, 15000, 30),
(21, 16, 78, 20000, 20),
(22, 16, 80, 20000, 20),
(23, 16, 81, 20000, 20),
(24, 16, 82, 20000, 20),
(25, 16, 83, 20000, 20),
(26, 16, 84, 20000, 20),
(27, 16, 85, 20000, 20),
(28, 16, 87, 20000, 20),
(29, 16, 88, 20000, 20),
(30, 16, 89, 20000, 20),
(31, 17, 78, 20000, 20),
(32, 17, 80, 20000, 20),
(33, 17, 81, 20000, 20),
(34, 17, 82, 20000, 20),
(35, 17, 83, 20000, 20),
(36, 17, 84, 20000, 20),
(37, 17, 85, 20000, 20),
(38, 17, 87, 20000, 20),
(39, 17, 88, 20000, 20),
(40, 17, 89, 20000, 20),
(41, 18, 62, 16000, 26),
(42, 19, 92, 15000, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madonhang` int(11) NOT NULL,
  `mathanhvien` int(11) DEFAULT NULL,
  `ngaylap` timestamp NULL DEFAULT NULL,
  `tongtien` double NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1' COMMENT 'trạng thái đơn hàng, -1: Chờ xác nhận, 0: bị hủy, 1: đang tiếp nhận, 2: đang giao hàng, 3: đã hoàn tất',
  `diachigiaohang` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `maphiship` int(11) DEFAULT NULL,
  `phiship` double DEFAULT NULL,
  `sodienthoai` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghichu` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`madonhang`, `mathanhvien`, `ngaylap`, `tongtien`, `trangthai`, `diachigiaohang`, `maphiship`, `phiship`, `sodienthoai`, `ghichu`) VALUES
(117, 61, '2019-06-03 17:00:00', 13000, 3, 'ĐH CNTT', 78, 25000, '0358708844', '123'),
(120, 61, '2019-06-03 17:00:00', 45000, 3, 'ĐH CNTT', 142, 40000, '0358708844', ''),
(121, 61, '2019-06-04 17:00:00', 32000, 3, 'ĐH CNTT', 81, 18000, '0358708844', ''),
(124, 68, '2019-06-04 17:00:00', 270000, 0, '612 Lê Đức Thọ, P. 15, Gò Vấp, TP. HCM', 142, 40000, '0909285622', ''),
(125, 68, '2019-06-06 17:23:11', 600000, -1, '', 137, 40000, '0909288952', ''),
(126, 61, '2019-06-07 17:00:00', 451200, 3, 'ĐH CNTT', 142, 20000, '0358708844', ''),
(127, 61, '2019-06-08 17:00:00', 431200, 0, 'ĐH CNTT', 128, 20000, '0358708844', ''),
(129, 46, '2019-06-08 17:00:00', 49200, 0, '243 đường 8,Phường 11, Quận Gò Vấp, Hồ Chí Minh', 72, 18000, '0902519819', ''),
(130, 46, '2019-06-09 17:00:00', 49200, 0, '243 đường 8,Phường 11, Quận Gò Vấp, Hồ Chí Minh', 72, 18000, '0902519819', ''),
(131, 46, '2019-06-09 17:00:00', 25850, 3, '243 đường 8,Phường 11, Quận Gò Vấp, Hồ Chí Minh', 72, 18000, '0902519819', 'giao hàng buổi trưa nhé'),
(132, 47, '2019-06-18 17:00:00', 34250, 0, '243 đường 8,Phường 11, Quận Gò Vấp, Hồ Chí Minh', 126, 20000, '0902519878', 'dsadasd'),
(133, 47, '2019-06-18 17:00:00', 303000, 3, '243 đường 8,Phường 11, Quận Gò Vấp, Hồ Chí Minh', 78, 18000, '0902519878', 'dsadasd'),
(134, 47, '2019-06-18 17:00:00', 57200, 0, '243 đường 8,Phường 11, Quận Gò Vấp, Hồ Chí Minh', 125, 20000, '0902519878', 'dâsâsdsad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `manhacungcap` int(11) NOT NULL,
  `tennhacungcap` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sotienno` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`manhacungcap`, `tennhacungcap`, `diachi`, `sodienthoai`, `sotienno`) VALUES
(28, 'NCC Nguyễn Tây Trung', '243 đường 8,Phường 11111, Quận Gò Vấp, Hồ Chí Minh.', '0902519818', 0),
(29, 'Nhà cung cấp số 1', 'ben tre 1', '0961014106', -36000),
(30, 'NCC Hồ chí minh', 'Quận 1', '09610124106', 450000),
(31, 'NCC Hà Nội', 'TP Hà Nội', '0961014106', 1900000),
(32, 'NCC Tiến', 'Bến Tre', '0961014106', 1916000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `maphanquyen` int(11) NOT NULL,
  `tenquyen` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `qlthanhvien` int(11) NOT NULL DEFAULT '0',
  `qlsach` int(11) NOT NULL DEFAULT '0',
  `qltheloai` int(11) NOT NULL DEFAULT '0',
  `qlphiship` int(11) NOT NULL DEFAULT '0',
  `qlphanquyen` int(11) NOT NULL DEFAULT '0',
  `qlphieunhap` int(11) NOT NULL DEFAULT '0',
  `qlphieuchi` int(11) NOT NULL DEFAULT '0',
  `qlnhacungcap` int(11) NOT NULL DEFAULT '0',
  `qldonhang` int(11) NOT NULL DEFAULT '0',
  `qlbaocao` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`maphanquyen`, `tenquyen`, `qlthanhvien`, `qlsach`, `qltheloai`, `qlphiship`, `qlphanquyen`, `qlphieunhap`, `qlphieuchi`, `qlnhacungcap`, `qldonhang`, `qlbaocao`) VALUES
(1, 'Khách hàng', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Administrator', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(80, 'Nhân viên kế toán', 0, 0, 0, 0, 0, 1, 1, 0, 1, 1),
(81, 'Nhân viên quản lý kho', 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
(82, 'Nhân viên bán hàng', 0, 1, 1, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuchi`
--

CREATE TABLE `phieuchi` (
  `maphieuchi` int(11) NOT NULL,
  `manhacungcap` int(11) NOT NULL,
  `mathanhvien` int(11) NOT NULL COMMENT 'Người lập phiếu chi tiền',
  `tongtien` double NOT NULL,
  `ngaylapphieu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ghichu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieuchi`
--

INSERT INTO `phieuchi` (`maphieuchi`, `manhacungcap`, `mathanhvien`, `tongtien`, `ngaylapphieu`, `ghichu`) VALUES
(91, 31, 46, 2900000, '2019-06-10 02:53:39', 'Trả tiền nhập sách lần 2.'),
(96, 29, 61, 900000, '2019-06-04 15:34:13', ''),
(98, 28, 46, 8350000, '2019-06-10 02:53:29', 'Trả tiền nhập sách 10/6/19'),
(99, 29, 61, 36000, '2019-06-10 02:56:21', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `ngaynhap` datetime NOT NULL,
  `manhacungcap` int(11) NOT NULL,
  `mathanhvien` int(11) NOT NULL COMMENT 'Nhân viên tạo phiếu nhập sách',
  `ghichu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`maphieunhap`, `ngaynhap`, `manhacungcap`, `mathanhvien`, `ghichu`) VALUES
(11, '2019-05-14 00:00:00', 31, 46, 'Nhập lần 1'),
(12, '2019-05-25 00:00:00', 29, 45, ''),
(13, '2019-06-02 00:00:00', 31, 46, ''),
(14, '2019-06-10 00:00:00', 28, 46, '3g12ui3g123dá'),
(15, '2019-06-10 00:00:00', 30, 68, ''),
(16, '2019-06-10 00:00:00', 28, 61, ''),
(17, '2019-06-10 00:00:00', 28, 61, 'nhập lần 1'),
(18, '2019-06-10 00:00:00', 32, 46, 'test'),
(19, '2019-06-19 00:00:00', 32, 46, 'dsadas d');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phiship`
--

CREATE TABLE `phiship` (
  `maphiship` int(11) NOT NULL,
  `tentinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phiship` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phiship`
--

INSERT INTO `phiship` (`maphiship`, `tentinh`, `phiship`) VALUES
(72, 'An Giang', 18000),
(73, 'Bà Rịa - Vũng Tàu', 18000),
(74, 'Bắc Giang', 18000),
(75, 'Bắc Kạn', 18000),
(76, 'Bạc Liêu', 18000),
(77, 'Bắc Ninh', 18000),
(78, 'Bến Tre', 18000),
(79, 'Bình Định', 25000),
(80, 'Bình Dương', 25000),
(81, 'Bình Phước', 25000),
(82, 'Bình Thuận', 25000),
(83, 'Cà Mau', 18000),
(84, 'Cao Bằng', 18000),
(85, 'Đắk Lắk', 18000),
(86, 'Đắk Nông', 25000),
(87, 'Điện Biên', 25000),
(88, 'Đồng Nai', 25000),
(89, 'Đồng Tháp', 40000),
(90, 'Gia Lai', 40000),
(91, 'Hà Giang', 40000),
(92, 'Hà Nam', 40000),
(93, 'Hà Tĩnh', 40000),
(102, 'Hải Dương', 25000),
(103, 'Hậu Giang', 25000),
(104, 'Hòa Bình', 25000),
(105, 'Hưng Yên', 25000),
(106, 'Khánh Hòa', 18000),
(107, 'Kiên Giang', 18000),
(108, 'Kon Tum', 18000),
(109, 'Lai Châu', 18000),
(110, 'Lâm Đồng', 40000),
(111, 'Lạng Sơn', 40000),
(112, 'Lào Cai', 18000),
(113, 'Long An', 18000),
(114, 'Nam Định', 18000),
(115, 'Nghệ An', 18000),
(116, 'Ninh Bình', 18000),
(117, 'Ninh Thuận', 18000),
(118, 'Phú Thọ', 20000),
(119, 'Quảng Bình', 20000),
(120, 'Quảng Nam', 20000),
(121, 'Quảng Ngãi', 20000),
(122, 'Quảng Ninh', 20000),
(123, 'Quảng Trị', 20000),
(124, 'Sóc Trăng', 20000),
(125, 'Sơn La', 20000),
(126, 'Tây Ninh', 20000),
(127, 'Thái Bình', 20000),
(128, 'Thái Nguyên', 20000),
(129, 'Thanh Hóa', 20000),
(130, 'Thừa Thiên Huế', 20000),
(131, 'Tiền Giang', 40000),
(132, 'Trà Vinh', 25000),
(133, 'Tuyên Quang', 25000),
(134, 'Vĩnh Long', 25000),
(135, 'Vĩnh Phúc', 25000),
(136, 'Yên Bái', 40000),
(137, 'Phú Yên', 40000),
(138, 'Cần Thơ', 25000),
(139, 'Đà Nẵng', 25000),
(140, 'Hải Phòng', 25000),
(141, 'Hà Nội', 40000),
(142, 'TP HCM', 40000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `masach` int(11) NOT NULL,
  `matheloai` int(11) DEFAULT NULL COMMENT 'Một cuốn sách có thể chưa được xếp vào thể loại nào',
  `tensach` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nhaxuatban` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `namxuatban` int(4) DEFAULT NULL,
  `giaban` double DEFAULT NULL,
  `mota` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `anhdaidien` varchar(100) DEFAULT NULL,
  `soluongton` int(11) NOT NULL DEFAULT '0',
  `tentacgia` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phantramgiamgia` double DEFAULT NULL,
  `ngaybatdaugiamgia` date DEFAULT NULL,
  `ngayketthucgiamgia` date DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL COMMENT '1 = Bán bth 2 = Xóa 3 = Ngưng kinh doanh'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`masach`, `matheloai`, `tensach`, `nhaxuatban`, `namxuatban`, `giaban`, `mota`, `anhdaidien`, `soluongton`, `tentacgia`, `phantramgiamgia`, `ngaybatdaugiamgia`, `ngayketthucgiamgia`, `trangthai`) VALUES
(52, 3, 'Super Simple 123 Khám Phá Số Học Qua Hình Ảnh', 'Bộ giáo dục và đào tạo', 2019, 25000, '<p><strong>Super Simple 123 Kh&aacute;m ph&aacute; Số Học Qua H&igrave;nh Ảnh</strong>&nbsp;l&agrave; cuốn tập viết bắt mắt, sinh động, gi&uacute;p trẻ mầm non kh&aacute;m ph&aacute; v&agrave; l&agrave;m quen với c&aacute;ch đọc, c&aacute;ch viết chữ số Tiếng Anh cơ bản nhất, từ đ&oacute; tự tin bước v&agrave;o lớp 1.</p>\r\n\r\n<p>Những&nbsp;điểm nổi bật của cuốn s&aacute;ch sẽ gi&uacute;p con học tập dễ d&agrave;ng hơn:</p>\r\n\r\n<ul>\r\n	<li>Con sẽ được học đếm qua những h&igrave;nh ảnh v&ocirc; c&ugrave;ng bắt mắt, sinh động. Con c&ograve;n c&oacute; thể n&acirc;ng cao th&ecirc;m vốn từ vựng qua h&igrave;nh ảnh c&aacute;c đồ vật, con vật quen thuộc k&egrave;m theo mỗi chữ số.</li>\r\n	<li>Con luyện viết số theo hướng dẫn, n&eacute;t chữ đơn giản gi&uacute;p con ghi nhớ dễ d&agrave;ng, nhanh ch&oacute;ng.</li>\r\n	<li>C&aacute;c tr&ograve; chơi đa dạng, sinh động gi&uacute;p con h&agrave;o hứng, th&iacute;ch th&uacute; mỗi khi bắt đầu b&agrave;i học, học như chơi, chơi như học, tập cho con th&oacute;i quen say m&ecirc; học tập từ khi c&ograve;n nhỏ.</li>\r\n	<li>S&aacute;ch in m&agrave;u sắc n&eacute;t, chất lượng giấy in tốt, chống nh&ograve;e v&agrave; hạn chế t&aacute;c hại cho mắt, bảo vệ đ&ocirc;i mắt của con.</li>\r\n</ul>\r\n\r\n<p>Tạo ra niềm y&ecirc;u th&iacute;ch, ham m&ecirc; học tập cho con ngay từ khi c&ograve;n nhỏ l&agrave; bước đệm v&ocirc; c&ugrave;ng quan trọng cho con sau n&agrave;y. H&atilde;y c&ugrave;ng Super Simple 123 Kh&aacute;m ph&aacute; số học qua h&igrave;nh ảnh&nbsp;đồng h&agrave;nh c&ugrave;ng con học tập bố mẹ nh&eacute;!</p>\r\n', 'Upload\\1560131853856_ed2fcaedf7755c59a36db4d5178db9c4.jpg', 30, 'Runkids', 15, '2019-04-06', '2021-04-06', 1),
(53, 3, 'Đọc Sách Thật Vui', 'Nhà Xuất Bản Kim Đồng', 2015, 48000, '<ul>\r\n	<li>ĐỌC S&Aacute;CH VUI &#39;KH&Ocirc;NG TƯỞNG&#39;</li>\r\n	<li>Mỗi buổi học k&eacute;o d&agrave;i trong thời gian 1,5 giờ (90 ph&uacute;t).</li>\r\n	<li>Cấu tr&uacute;c buổi học&nbsp;thường&nbsp;c&oacute; 4 phần:\r\n	<ul>\r\n		<li><em>Khởi động:&nbsp;</em>Tạo kh&ocirc;ng kh&iacute; hứng th&uacute; đầu buổi học, đồng thời dẫn dắt học sinh v&agrave;o b&agrave;i mới.</li>\r\n		<li><em>Đọc s&aacute;ch :&nbsp;</em>GV đọc s&aacute;ch v&agrave; hướng dẫn học sinh một b&iacute; quyết kh&aacute;m ph&aacute; văn bản.</li>\r\n		<li><em>Thực h&agrave;nh:&nbsp;</em>HS &aacute;p dụng kiến thức mới để thực h&agrave;nh dưới sự y&ecirc;u cầu v&agrave; hướng dẫn của gi&aacute;o vi&ecirc;n.</li>\r\n		<li><em>B&agrave;i tập về nh&agrave;: C</em>ủng cố v&agrave; &ocirc;n tập kiến thức vừa học.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>Kh&oacute;a học đầu ti&ecirc;n trong chuỗi kh&oacute;a học Đọc s&aacute;ch, ở đ&oacute; c&aacute;c con sẽ được đọc c&aacute;c c&acirc;u chuyện ngắn, c&aacute;c cuốn s&aacute;ch được chọn lọc ph&ugrave; hợp với lứa tuổi;</p>\r\n\r\n<p>Tham gia c&aacute;c hoạt động nh&oacute;m, thảo luận, tr&igrave;nh b&agrave;y,&hellip; để nhập v&agrave;o thế giới của c&acirc;u chuyện, trải nghiệm những thực tại ảo nhưng cảm x&uacute;c thật được gợi n&ecirc;n qua c&aacute;c nh&acirc;n vật, cốt truyện, bối cảnh.</p>\r\n\r\n<p>----</p>\r\n\r\n<p>Tham khảo b&agrave;i viết:</p>\r\n\r\n<p><a href=\"http://sachoimora.vn/blogs/tai-lieu-cho-giao-vien/doc-da-roi-hay-viet\">Đọc đ&atilde;, rồi h&atilde;y viết</a></p>\r\n\r\n<p><a href=\"http://sachoimora.vn/blogs/tai-lieu-cho-giao-vien/cac-giai-doan-phat-trien-cua-viec-doc\">C&aacute;c giai đoạn ph&aacute;t triển của việc đọc</a></p>\r\n\r\n<p><a href=\"http://sachoimora.vn/blogs/tai-lieu-cho-giao-vien/doc-mot-cach-hieu-qua-de-can-bang-hai-ngon-ngu-o-tre\">Đọc - một c&aacute;ch hiệu quả để c&acirc;n bằng hai ng&ocirc;n ngữ ở trẻ</a></p>\r\n\r\n<p><img src=\"http://file.hstatic.net/1000240687/file/19577085_676023349274211_2182788604910926942_o_2048x2048.png\" style=\"height:315px; width:600px\" /></p>\r\n\r\n<p><img src=\"http://file.hstatic.net/1000240687/file/19577384_676023379274208_5374740665218799289_o_2048x2048.png\" style=\"height:315px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Upload\\1560131925741_1b0f1d1abbe861c190b8497218c6b112 (1).jpg', 16, 'Đặng Minh Tiến', 35, '2019-06-05', '2020-11-05', 1),
(61, 4, 'Kẻ may mắn', 'Bộ giáo dục và đào tạo', 2006, 15700, '<p>&nbsp;</p>\r\n\r\n<p><strong>Kẻ May Mắn</strong></p>\r\n\r\n<p><em><strong>Tr&iacute;ch đoạn:</strong></em></p>\r\n\r\n<p><em>Victor nh&igrave;n chằm chằm v&agrave;o bức ảnh trước khi trả lại n&oacute;. &ldquo;Cậu bảo cậu t&igrave;m thấy thứ n&agrave;y l&uacute;c b&igrave;nh minh hả?&rdquo;</em></p>\r\n\r\n<p><em>&ldquo;Ừ.&rdquo;</em></p>\r\n\r\n<p><em>&ldquo;Khi mặt trời l&ecirc;n l&agrave; qu&atilde;ng thời gian mạnh nhất trong ng&agrave;y đấy.&rdquo;</em></p>\r\n\r\n<p><em>&ldquo;C&aacute;i đấy cậu đ&atilde; n&oacute;i rồi.&rdquo;</em></p>\r\n\r\n<p><em>&ldquo;Đ&oacute; l&agrave; dấu hiệu,&rdquo; Victor n&oacute;i. &ldquo;C&ocirc; ấy l&agrave; b&ugrave;a may mắn của cậu. Thấy c&aacute;i &aacute;o c&ocirc; ấy đang mặcchứ?&rdquo;</em></p>\r\n\r\n<p><em>&ldquo;Chắc chỉ may mắn đ&ecirc;m nay th&ocirc;i.&rdquo;</em></p>\r\n\r\n<p><em>&ldquo;Kh&ocirc;ng chỉ đ&ecirc;m nay đ&acirc;u. Cậu t&igrave;m thấy bức ảnh l&agrave; c&oacute; l&yacute; của n&oacute;. Kh&ocirc;ng ai nhận bức ảnh cũng c&oacute; l&yacute; của n&oacute;. V&agrave; rồi cậu quyết định lấy lại cũng c&oacute; l&yacute; của n&oacute; nốt. C&oacute; nghĩa l&agrave; chỉ duy nhất cậu mới c&oacute; được bức ảnh m&agrave; th&ocirc;i.&rdquo;</em></p>\r\n\r\n<p><em>Thibault muốn n&oacute;i g&igrave; đ&oacute; về người đ&aacute;nh mất bức ảnh v&agrave; anh cảm thấy thế n&agrave;o về chuyện n&agrave;y, nhưng rồi anh quyết định im lặng. Anh nằm xuống giường v&agrave; đan hai b&agrave;n tay k&ecirc; dưới đầu.</em></p>\r\n\r\n<p><em>Victor cũng l&agrave;m như Thibault rồi bổ sung th&ecirc;m, &ldquo;Tớ mừng cho cậu. Từ giờ trở đi, may mắn sẽ lu&ocirc;n ở b&ecirc;n cậu.&rdquo;</em></p>\r\n\r\n<p><em>&ldquo;Tớ cũng mong l&agrave; thế.&rdquo;</em></p>\r\n\r\n<p><em>&ldquo;Nhưng cậu đừng bao giờ để mất bức ảnh.&rdquo;</em></p>\r\n\r\n<p><em>&ldquo;Sao?&rdquo;</em></p>\r\n', 'Upload\\1560133957248_the_lucky_one.jpg', 38, 'Nicholas Sparks', 50, '2019-06-06', '2021-06-04', 1),
(62, 4, '[Nhập môn Phát triển game] Cách làm cầu thang trong game', 'NXB Kiến Thức 24h', 2019, 100000, '<h2>1. Y&ecirc;u cầu cơ bản</h2>\r\n\r\n<p>&ndash; C&oacute; kiến thức cơ bản về lập tr&igrave;nh game</p>\r\n\r\n<p>&ndash; Biết xử l&iacute; va chạm (với đất, c&aacute;c object bằng AABB v&agrave; SweptAABB)</p>\r\n\r\n<p>&ndash; Hiểu cơ bản về xử l&iacute; KeyBoards.</p>\r\n\r\n<p>&ndash; Biết c&aacute;ch l&agrave;m cho nh&acirc;n vật đi (vận tốc, trọng lực, điều khiển ph&iacute;m,&hellip;)</p>\r\n\r\n<h2>2. &Yacute; tưởng c&aacute;ch l&agrave;m cầu thang trong game</h2>\r\n\r\n<p><img alt=\"\" src=\"https://kienthuc24h.com/wp-content/uploads/2018/12/stair1.png\" style=\"height:447px; width:495px\" /></p>\r\n\r\n<p>&ndash; L&agrave;m cầu thang trong game thực chất l&agrave; m&igrave;nh l&agrave;m cho nh&acirc;n vật đi như l&uacute;c đi l&ecirc;n cầu thang, kh&ocirc;ng phải l&agrave; m&igrave;nh l&agrave;m từng bậc thang. Phần sprite về cầu thang bạn c&oacute; thể load v&agrave;o background map hoặc vẽ l&ecirc;n theo c&aacute;ch th&ocirc;ng thường.</p>\r\n\r\n<p>&ndash; Trong b&agrave;i viết n&agrave;y m&igrave;nh sẽ hướng dẫn một c&aacute;ch&nbsp;<strong>l&agrave;m cầu thang</strong>&nbsp;dựa v&agrave;o việc xử l&iacute; giữa&nbsp;<strong>điểm đầu</strong>&nbsp;v&agrave;&nbsp;<strong>cuối của cầu thang</strong>.</p>\r\n\r\n<p>&Yacute; tưởng cụ thể như sau:</p>\r\n\r\n<h3>a. Thiết kế chung</h3>\r\n\r\n<p>&ndash; Mỗi cầu thang sẽ c&oacute; 2 object ẩn (tức l&agrave; object kh&ocirc;ng vẽ l&ecirc;n m&agrave;n h&igrave;nh) c&oacute; BoundingBox k&iacute;ch thước tương đối. Ở dưới ch&acirc;n cầu thang l&agrave; StairBottom, tr&ecirc;n đỉnh cầu thang l&agrave; StairTop.</p>\r\n\r\n<p>&ndash; M&igrave;nh sẽ sử dụng 2 object ẩn n&agrave;y như l&agrave; t&iacute;n hiểu để biết khi n&agrave;o bắt đầu v&agrave;o cầu thang v&agrave; khi n&agrave;o ra.</p>\r\n\r\n<h3>b. Xử l&iacute; bắt đầu đi l&ecirc;n thang</h3>\r\n\r\n<p>&ndash; Như vậy, khi nh&acirc;n vật đứng tr&ecirc;n v&ugrave;ng StairBottom m&agrave; bấm ph&iacute;m UP (mũi t&ecirc;n đi l&ecirc;n) th&igrave; bạn bật trạng th&aacute;i cho nh&acirc;n vật l&agrave; đang tr&ecirc;n cầu thang. Hay n&oacute;i c&aacute;ch kh&aacute;c, khi nh&acirc;n vật bấm ph&iacute;m l&ecirc;n, bạn phải kiểm tra xem nh&acirc;n vật c&oacute; va chạm bằng AABB với StairBottom kh&ocirc;ng? Nếu c&oacute; th&igrave; bắt đầu cho nh&acirc;n vật đi tr&ecirc;n cầu thang.</p>\r\n\r\n<blockquote>\r\n<p>N&oacute;i th&ecirc;m: Trong trường hợp n&agrave;y, m&igrave;nh phải sử dụng AABB thay v&igrave; Swept AABB v&igrave; r&otilde; r&agrave;ng c&oacute; thể nh&acirc;n vật của m&igrave;nh đ&atilde; va chạm với Object ẩn n&agrave;y trước khi bấm l&ecirc;n, n&ecirc;n SweptAABB kh&ocirc;ng kiểm tra được va chạm n&agrave;y. (Hay n&oacute;i c&aacute;ch kh&aacute;c d&ugrave;ng sweptAABB trong khi đ&atilde; overlapping th&igrave; kh&ocirc;ng kiểm tra được)</p>\r\n</blockquote>\r\n\r\n<p>&ndash; Khi đi l&ecirc;n th&igrave; t&ugrave;y v&agrave;o game của bạn, c&oacute; thể thang đều th&igrave; bạn c&oacute; thể cho vận tốc vx, vy đều nhau,&hellip; Như vậy l&agrave; xong phần l&ecirc;n thang.</p>\r\n\r\n<h3>c. Xử l&iacute; bắt đầu đi xuống thang</h3>\r\n\r\n<p>&ndash; Cũng tương tự như việc bắt đầu đi l&ecirc;n thang, bạn kiểm tra nh&acirc;n vật c&oacute; va chạm với&nbsp;StairTop v&agrave; c&oacute; bấm ph&iacute;m xuống hay kh&ocirc;ng? Nếu c&oacute; th&igrave; bật trạng th&aacute;i đang tr&ecirc;n thang.</p>\r\n\r\n<h3>d. Xử l&iacute; đi l&ecirc;n, đi xuống khi đ&atilde; tr&ecirc;n thang</h3>\r\n\r\n<p>&ndash; Sau những xử l&iacute; về bắt đầu l&ecirc;n thang, bắt đầu xuống thang, m&igrave;nh sẽ c&oacute; được trạng th&aacute;i&nbsp;<strong>Đang ở tr&ecirc;n thang,&nbsp;</strong>l&uacute;c n&agrave;y m&igrave;nh chỉ việc kiểm tra, nếu đang tr&ecirc;n thang m&agrave; bấm l&ecirc;n th&igrave; m&igrave;nh cho nh&acirc;n vật đi l&ecirc;n, tương tự bấm xuống th&igrave; đi xuống.</p>\r\n\r\n<p>&ndash; Đồng thời cũng chạy c&aacute;c animation về việc đi đứng tr&ecirc;n thang.</p>\r\n\r\n<h3>e. Xử l&iacute; ra khỏi thang</h3>\r\n\r\n<p>&ndash; Tiếp đến, kết th&uacute;c ra khỏi thang, nếu nh&acirc;n vật của bạn đi l&ecirc;n m&agrave; chạm StairTop th&igrave; bạn c&oacute; thể kết th&uacute;c việc nh&acirc;n vật bạn đang tr&ecirc;n thang.</p>\r\n\r\n<p>&ndash; Việc ra khỏi thang ở dưới ch&acirc;n cầu thang cũng tương tự.</p>\r\n\r\n<p>Tất nhi&ecirc;n l&agrave; phần xử l&iacute; về n&oacute; vẫn l&agrave; 1 vấn đề kh&oacute;, n&ecirc;n m&igrave;nh sẽ n&oacute;i ở phần b&ecirc;n dưới.</p>\r\n\r\n<h2>3. C&aacute;ch c&agrave;i đặt</h2>\r\n\r\n<h3>a. Object StairBottom &amp;&nbsp;StairTop</h3>\r\n\r\n<p>C&aacute;c thuộc t&iacute;nh cần c&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Thuộc t&iacute;nh cơ bản của object như x, y, width, height (C&aacute;i n&agrave;y t&ugrave;y v&agrave;o code của bạn,chủ yếu để x&eacute;t va chạm)</li>\r\n	<li>int Direction.&nbsp; (hướng cầu thang, t&ugrave;y v&agrave;o game ở đ&acirc;y m&igrave;nh sẽ quy ước theo game m&igrave;nh đang l&agrave;m l&agrave;: -1: cầu thang hướng từ phải qua tr&aacute;i t&iacute;nh từ ch&acirc;n cầu thang, 1: hướng từ tr&aacute;i qua phải t&iacute;nh từ ch&acirc;n cầu thang).</li>\r\n</ul>\r\n\r\n<p>C&aacute;c object n&agrave;y c&aacute;c bạn tự tạo v&agrave; th&ecirc;m v&agrave;o game nh&eacute;. V&agrave; cũng lưu &yacute; theo như quy ước tr&ecirc;n th&igrave; 1 cầu thang sẽ c&oacute; đầy đủ StairBottom v&agrave; StairTop, đồng thời sẽ c&oacute; c&ugrave;ng hướng (Direction l&agrave; -1 hoặc 1).</p>\r\n\r\n<h3>b. Object Player</h3>\r\n\r\n<p>&ndash; Theo m&igrave;nh ở object n&agrave;y n&ecirc;n c&oacute;&nbsp;<strong>biến quản l&iacute; hướng cầu thang m&agrave; player đang đi (int&nbsp;directionStair)</strong>. (G&aacute;n hướng cầu thang ngay khi&nbsp;<strong>bắt đầu v&agrave;o thang</strong>&nbsp;từ Top hoặc Bottom. C&aacute;i n&agrave;y bạn c&oacute; thể d&ugrave;ng n&oacute; để load c&aacute;c animation cho ph&ugrave; hợp, m&igrave;nh sẽ kh&ocirc;ng n&oacute;i r&otilde; phần n&agrave;y.</p>\r\n\r\n<p>&ndash; biến quản l&iacute; player c&oacute; đang tr&ecirc;n thang kh&ocirc;ng (<strong>bool&nbsp;isOnStair</strong>).</p>\r\n\r\n<p>&ndash; Phương thức&nbsp;SetSpeed(vx,vy);</p>\r\n\r\n<h3>c. Xử l&iacute; keyboards</h3>\r\n\r\n<p>&ndash; Phần n&agrave;y c&aacute;c bạn c&oacute; thể d&ugrave;y keydown hoặc keystate t&ugrave;y &yacute;, v&igrave; cũng kh&ocirc;ng c&oacute; kh&aacute;i niệm đ&uacute;ng sai r&otilde; r&agrave;ng trong trường hợp n&agrave;y, m&agrave; chỉ c&oacute; thể n&oacute;i l&agrave; bạn chạy được hay kh&ocirc;ng v&agrave; c&oacute; xử l&iacute; hết trường hợp hay kh&ocirc;ng th&ocirc;i.</p>\r\n\r\n<h4>c. 1. khi player bấm UP</h4>\r\n\r\n<p>&ndash; Dựa v&agrave;o m&ocirc; tả &yacute; tưởng b&ecirc;n tr&ecirc;n,&nbsp;<strong>khi player bấm UP</strong>, c&oacute; thể c&oacute; 2 trường hợp.</p>\r\n\r\n<p>Trường hợp thứ nhất: Player&nbsp;<strong>chưa</strong>&nbsp;ở tr&ecirc;n thang (isOnStair == false):</p>\r\n\r\n<ul>\r\n	<li>Kiểm tra bằng AABB xem c&oacute; va chạm với StairBottom n&agrave;o kh&ocirc;ng? Nếu c&oacute; th&igrave;&nbsp;isOnStair&nbsp;=true;&nbsp;v&agrave;&nbsp;&nbsp;player-&gt;directionStair&nbsp;=&nbsp;StairBottom-&gt;Direction;</li>\r\n</ul>\r\n\r\n<p>Trường hợp thứ 2: Player&nbsp;<strong>đ&atilde;</strong>&nbsp;ở tr&ecirc;n thang (isOnStair == true):</p>\r\n\r\n<ul>\r\n	<li>Cấp cho player vận tốc để player c&oacute; thể đi l&ecirc;n. C&aacute;i n&agrave;y phụ thuộc v&agrave;o hướng cầu thang, code bạn c&oacute; đổi trục hay kh&ocirc;ng? v.v..</li>\r\n	<li>player-&gt;SetSpeed(player-&gt;directionStair *&nbsp;PLAYER_SPEED_ON_STAIR,&nbsp;-PLAYER_SPEED_ON_STAIR)</li>\r\n	<li>PLAYER_SPEED_ON_STAIR l&agrave; hằng số quản l&iacute; vận tốc đi tr&ecirc;n thang. Như vậy khi set vx l&agrave;&nbsp;player-&gt;directionStair *&nbsp;PLAYER_SPEED_ON_STAIR&nbsp;bạn sẽ tổng qu&aacute;t được cả cho cầu thang hướng 1 v&agrave; -1. V&iacute; dụ thang hướng -1, nghĩa l&agrave; hướng từ phải sang tr&aacute;i, khi đ&oacute; player đi l&ecirc;n c&oacute; nghĩa l&agrave; trục x của player sẽ giảm n&ecirc;n vx phải &acirc;m, tương tự thang hướng 1 th&igrave; vx phải dương. Phần về vy th&igrave; m&igrave;nh nghĩ c&aacute;c bạn sẽ hiểu.</li>\r\n	<li>Ngo&agrave;i ra bạn cũng cần đổi hướng của player, c&oacute; thể l&agrave; phục vụ cho animation chẳng hạn:&nbsp;player-&gt;SetDirection(player-&gt;directionStair);&nbsp;&nbsp;Hướng mặt player l&agrave; hướng của cầu thang.</li>\r\n</ul>\r\n\r\n<h4>c. 2. khi player bấm DOWN</h4>\r\n\r\n<p>Khi bấm DOWN về cơ bản cũng tương tự c&aacute;ch xử l&iacute; như tr&ecirc;n nhưng c&oacute; khả năng sẽ sinh ra 1 trường hợp kh&aacute;c t&ugrave;y game của bạn.</p>\r\n\r\n<p>Phần chung th&igrave; sẽ c&oacute; 3 trường hợp ch&iacute;nh:</p>\r\n\r\n<p>Trường hợp 1:&nbsp;<strong>Chưa</strong>&nbsp;tr&ecirc;n cầu thang (isOnStair == false):</p>\r\n\r\n<ul>\r\n	<li>Kiểm tra bằng AABB xem c&oacute; va chạm với StairTop n&agrave;o kh&ocirc;ng? Nếu c&oacute; th&igrave;&nbsp;isOnStair&nbsp;=true;&nbsp;v&agrave;&nbsp;&nbsp;player-&gt;directionStair&nbsp;=&nbsp;StairBottom-&gt;Direction;</li>\r\n</ul>\r\n\r\n<p>Trường hợp 2:&nbsp;<strong>Đ&atilde;</strong>&nbsp;tr&ecirc;n cầu thang&nbsp;(isOnStair == true):</p>\r\n\r\n<ul>\r\n	<li>Cấp cho player vận tốc để player c&oacute; thể đi xuống. Về c&aacute;c xử l&iacute; cũng tương tự như tr&ecirc;n.</li>\r\n	<li>player-&gt;SetSpeed(-&nbsp;player-&gt;directionStair *&nbsp;PLAYER_SPEED_ON_STAIR,&nbsp;PLAYER_SPEED_ON_STAIR)</li>\r\n	<li>PLAYER_SPEED_ON_STAIR l&agrave; hằng số quản l&iacute; vận tốc đi tr&ecirc;n thang. Như vậy khi set vx l&agrave;&nbsp;&nbsp;-player-&gt;directionStair *&nbsp;PLAYER_SPEED_ON_STAIR&nbsp;bạn sẽ tổng qu&aacute;t được cả cho cầu thang hướng 1 v&agrave; -1. V&iacute; dụ thang hướng -1, nghĩa l&agrave; hướng từ phải sang tr&aacute;i, khi đ&oacute; player đi&nbsp;<strong>xuống</strong>&nbsp;c&oacute; nghĩa l&agrave; trục x của player sẽ&nbsp;<strong>tăng</strong>&nbsp;n&ecirc;n vx phải&nbsp;<strong>dương</strong>, tương tự thang hướng 1 th&igrave; vx phải &acirc;m. Phần về vy do đi xuống n&ecirc;n m&igrave;nh phải để vy dương.</li>\r\n	<li>Thay đổi hướng mặt của player:&nbsp;player-&gt;SetDirection(-player-&gt;directionStair);</li>\r\n</ul>\r\n\r\n<p>Trường hợp thứ 3: Nh&acirc;n vật ngồi xuống như b&igrave;nh thường.</p>\r\n\r\n<h3>d. Xử l&iacute; trong Update của Player</h3>\r\n\r\n<p>Theo m&igrave;nh th&igrave; trong Update của player sẽ l&agrave; nơi xử l&iacute; c&aacute;c va chạm đất, xử l&iacute; trọng lực nh&acirc;n vật, t&iacute;nh to&aacute;n cập nhật x, y của nh&acirc;n vật dựa v&agrave;o vận tốc&hellip; Ch&iacute;nh v&igrave; vậy m&agrave; phần lớn, xử l&iacute; việc cho nh&acirc;n vật di chuyển tr&ecirc;n thang như thế n&agrave;o, ra thang l&agrave;m sao? đều nằm ở đ&acirc;y.</p>\r\n\r\n<ul>\r\n	<li>Khi player đang tr&ecirc;n thang bạn phải tắt trọng lực, để tr&aacute;nh việc bạn đang đứng tr&ecirc;n thang lại bị k&eacute;o xuống bởi trọng lực.</li>\r\n	<li>Đang tr&ecirc;n thang phải tắt xử l&yacute; va chạm với đất. Tr&aacute;nh trường hợp player sẽ bị vướng lại khi v&ocirc; t&igrave;nh chạm đất.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Player sẽ bị vướng lại tại vị trí Xanh dương do vô tình va chạm với Brick trong lúc đi lên, nếu chưa tắt va chạm đất.\" src=\"https://kienthuc24h.com/wp-content/uploads/2018/12/stair2.png\" style=\"height:356px; width:476px\" /></p>\r\n\r\n<p>Player sẽ bị vướng lại tại vị tr&iacute; Xanh dương do v&ocirc; t&igrave;nh va chạm với Brick trong l&uacute;c đi l&ecirc;n, nếu chưa tắt va chạm đất.</p>\r\n\r\n<p>Nếu player đang tr&ecirc;n thang (isOnStair ==true) th&igrave; bạn x&eacute;t va chạm như sau:</p>\r\n\r\n<h4>d. 1. Trường hợp player đang đi l&ecirc;n</h4>\r\n\r\n<p>&ndash; Kiểm tra xem player c&oacute; chạm StairTop hay kh&ocirc;ng?</p>\r\n\r\n<p>Nếu c&oacute;, nghĩa l&agrave; ra khỏi cầu thang. Tuy nhi&ecirc;n, ngay đ&acirc;y nếu bạn chỉ tắt trạng th&aacute;i đang tr&ecirc;n thang hoặc nếu kh&ocirc;ng kh&eacute;o, player của bạn sẽ overlapping với Brick g&acirc;y ra hiện tượng bị rớt xuống đất ph&iacute;a dưới.</p>\r\n\r\n<p>L&uacute;c n&agrave;y bạn sẽ đặt ra c&acirc;u hỏi, tại sao kh&ocirc;ng k&eacute;o StairTop cao hơn để khi vừa chạm, tắt trạng th&aacute;i tr&ecirc;n thang l&agrave; xong? Tuy nhi&ecirc;n trở về &yacute; tưởng ban đầu m&igrave;nh n&oacute;i, m&igrave;nh sử dụng Bottom v&agrave; Top như 1 t&iacute;n hiệu v&agrave;o v&agrave; ra thang, c&oacute; nghĩa l&agrave; n&oacute; d&ugrave;ng cho cả 2 mục đ&iacute;ch n&agrave;y. N&ecirc;n object top m&igrave;nh chỉ đặt vừa chạm 1 t&iacute; khi player đứng thẳng ở tr&ecirc;n l&agrave; được.</p>\r\n\r\n<p><img alt=\"\" src=\"https://kienthuc24h.com/wp-content/uploads/2018/12/stair3.png\" style=\"height:453px; width:498px\" /></p>\r\n\r\n<p>Đặt StairTop sao cho khi player đứng thằng vẫn vừa chạm được 1 khoảng nhỏ.</p>\r\n\r\n<p>L&uacute;c n&agrave;y bạn lại hỏi, tại sao Object Top lại nằm tr&ecirc;n đầu, m&agrave; kh&ocirc;ng phải ở dưới ngang ch&acirc;n player chẳng hạn?</p>\r\n\r\n<p>M&igrave;nh đặt như vậy, bởi v&igrave; m&igrave;nh muốn khi player chạm Top th&igrave; sẽ đứng ngay tr&ecirc;n đất, nếu theo &yacute; muốn vừa n&oacute;i, m&agrave; đặt Top ở dưới 1 ch&uacute;t, th&igrave; khi player chưa đi hết cầu thang, n&oacute; sẽ&hellip;. đ&ugrave;ng 1 ph&aacute;t đứng ngay tr&ecirc;n đất. (V&ocirc; l&yacute;).</p>\r\n\r\n<p><img alt=\"\" src=\"https://kienthuc24h.com/wp-content/uploads/2018/12/stair4.png\" style=\"height:456px; width:504px\" /></p>\r\n\r\n<p>Nếu theo &yacute; tưởng tr&ecirc;n, đặt ở vj tr&iacute; m&agrave;u đỏ, th&igrave; player đang đi đến đ&oacute;, v&ocirc; t&igrave;nh đầu chạm v&agrave;o BoundingBox Đỏ, n&oacute; sẽ lập tức đứng ngay vị tr&iacute; v&agrave;ng?</p>\r\n\r\n<p>&ndash; Ok sau khi hiểu xong về &yacute; đồ của Object Top, m&igrave;nh sẽ trở lại vấn đề code như thế n&agrave;o để nh&acirc;n vật ra khỏi thang v&agrave; đứng tr&ecirc;n đất tốt nhất. Khi chạm Object tr&ecirc;n, m&igrave;nh sẽ cần sử dụng sweptAABB để player c&oacute; thể đứng được tr&ecirc;n đất. Phần n&agrave;y m&igrave;nh sẽ kh&ocirc;ng giải th&iacute;ch, v&igrave; nếu bạn l&agrave;m player đứng tr&ecirc;n đất được th&igrave; c&oacute; lẽ đ&atilde; hiểu.</p>\r\n\r\n<p>&ndash; Tuy nhi&ecirc;n đời kh&ocirc;ng như mơ, d&ugrave;ng sweptAABB nhưng vẫn lọt, l&agrave; do ngay khi chạm v&agrave;o, player c&oacute; thể đ&atilde; overlapping với đất, do m&igrave;nh đặt Object Top sao cho chạm 1 &iacute;t với player. Vậy l&uacute;c n&agrave;y c&oacute; thể bạn sẽ k&eacute;o player l&ecirc;n (y=y- &hellip;..) để vừa đủ đứng tr&ecirc;n đất.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, k&eacute;o bao nhi&ecirc;u mới l&agrave; đủ?</p>\r\n\r\n<p>Do việc đi đứng c&oacute; phụ thuộc v&agrave;o vận tốc, dt v&agrave; c&oacute; thể mỗi thang bạn đặt Top ở độ cao kh&ocirc;ng l&yacute; tưởng (rất c&oacute; khả năng xui l&agrave; trừ kh&ocirc;ng đủ n&ecirc;n overlapping tiếp, m&agrave; chuyện h&ecirc;n xui trong lập tr&igrave;nh l&agrave; điều tối kị), n&ecirc;n thật sự để x&aacute;c định ch&iacute;nh x&aacute;c l&agrave; kh&aacute; kh&oacute;.</p>\r\n\r\n<p>Để giải quyết, bạn chỉ cần k&eacute;o player l&ecirc;n cao v&iacute; dụ&nbsp;y-=100px&nbsp; sau đ&oacute; cho vận tốc k&eacute;o xuống cực lớn v&iacute; dụ&nbsp;vy&nbsp;=&nbsp;99999.0f&nbsp;sau đ&oacute; d&ugrave;ng sweptAABB để player đứng tr&ecirc;n đất v&agrave; tắt c&aacute;c trạng th&aacute;i tr&ecirc;n thang, kết th&uacute;c qu&aacute; tr&igrave;nh ra khỏi thang. Việc đặt vy cực lớn mục đ&iacute;ch giải quyết vấn đề n&agrave;y ngay trong 1 frame, để kh&ocirc;ng xảy ra cảm gi&aacute;c player nhảy l&ecirc;n rồi rơi xuống từ từ.</p>\r\n\r\n<p>&ndash; Nếu kh&ocirc;ng va chạm Top th&igrave; x, y cập nhật b&igrave;nh thường&nbsp;x+=dx;&nbsp;y+=dy;</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong></p>\r\n\r\n<p>&ndash; Trước khi thay đổi vy bạn phải lưu lại vy hiện tại, v&agrave; kh&ocirc;i phục ngay sau khi kết th&uacute;c việc d&ugrave;ng&nbsp;sweptAABB. Tr&aacute;nh trường hợp ảnh hưởng việc x&eacute;t va chạm của player với c&aacute;c object kh&aacute;c.&nbsp;</p>\r\n\r\n<p>&ndash; Khi thay đổi vy đồng thời phải cập nhật lại dy=vy+dt;</p>\r\n\r\n<h4>d. 2. Trường hợp player đang đi xuống</h4>\r\n\r\n<p>Tương tự như trường hợp player đi l&ecirc;n.</p>\r\n\r\n<p>Bạn chỉ cần kiểm tra nếu đang đi xuống m&agrave; lại chạm Bottom th&igrave; kiểm tra bằng swept xem c&oacute; va chạm đất chưa, nếu va chạm rồi th&igrave; kết th&uacute;c việc đi tr&ecirc;n thang. Trường hợp n&agrave;y chỉ kh&aacute;c ở tr&ecirc;n l&agrave; kh&ocirc;ng cần k&eacute;o player l&ecirc;n.</p>\r\n\r\n<p>&ndash; Nếu kh&ocirc;ng va chạm Top th&igrave; x, y cập nhật b&igrave;nh thường&nbsp;x+=dx;&nbsp;y+=dy;</p>\r\n\r\n<h2>4. Xử l&iacute; n&acirc;ng cao</h2>\r\n\r\n<p>&ndash; Hướng dẫn b&ecirc;n tr&ecirc;n l&agrave; kh&aacute; đơn giản, tuy vậy, để c&oacute; những bước đi mượt v&agrave; đều tr&ecirc;n cầu thang, bạn phải n&acirc;ng cao hơn kh&aacute; nhiều, cụ thể:</p>\r\n\r\n<p>&ndash; Ở game castlevania khi player đứng gần cần thang, ngược hướng, hoặc xung quanh thang m&agrave; bấm ph&iacute;m để v&agrave;o thang, player sẽ tự đi đến mức n&agrave;o đ&oacute; xong mới bước l&ecirc;n thang. L&agrave;m điều n&agrave;y l&agrave; kh&ocirc;ng thừa v&agrave; rất cần thiết, việc neo 1 điểm cố định trước khi l&ecirc;n thang sẽ gi&uacute;p player lu&ocirc;n bắt đầu đi tại vị tr&iacute; đ&oacute;, nếu kh&ocirc;ng sẽ c&oacute; l&uacute;c bạn đi lệch thang, c&oacute; l&uacute;c đi đ&uacute;ng.</p>\r\n\r\n<p>&ndash; N&acirc;ng cao thứ 2, nếu bạn để &yacute; ở game gốc, mỗi lần bấm ph&iacute;m UP player sẽ đi 1 bậc. Như vậy bạn n&ecirc;n l&agrave;m cho player của minh &ldquo;Đi theo lượt&rdquo; mỗi lần bấm đi, player phải đi đ&uacute;ng 1 nấc thang mới được dừng. V&agrave; nếu để &yacute; th&ecirc;m bạn sẽ thấy mỗi bậc thang sẽ c&oacute; k&iacute;ch thước 16px, như vậy nếu chuẩn hơn, bạn n&ecirc;n giới hạn 1 lần đi l&agrave; 16px. Tuy nhi&ecirc;n do phụ thuộc v&agrave;o dt n&ecirc;n đ&ocirc;i khi sẽ lệch trong qu&aacute; tr&igrave;nh đi l&ecirc;n v&agrave; xuống n&ecirc;n nếu 1 lượt đi vượt qu&aacute; 16px bạn h&atilde;y đặt lại vị tr&iacute; player, để bỏ đi phần dư đ&oacute;.</p>\r\n\r\n<p><strong>T&oacute;m lại, bạn c&oacute; thể:</strong></p>\r\n\r\n<p>&ndash; Viết th&ecirc;m h&agrave;m để thiết lập việc tự đi cho player.</p>\r\n\r\n<p>&ndash; Neo vị tr&iacute; khi bắt đầu l&ecirc;n cầu thang để lu&ocirc;n c&oacute; 1 c&aacute;ch đi l&yacute; tưởng nhất.</p>\r\n\r\n<p>&ndash; giới hạn mỗi lượt đi phải đ&uacute;ng 16px, kh&ocirc;ng hơn kh&ocirc;ng k&eacute;m.</p>\r\n\r\n<p>Ngo&agrave;i ra, t&ugrave;y v&agrave;o đặc t&iacute;nh game bạn c&oacute; thể chặn c&aacute;c vấn đề kh&aacute;c như: nhảy tr&ecirc;n thang, đụng tr&uacute;ng enemy tr&ecirc;n thang sẽ kh&ocirc;ng bị văng, hoặc li&ecirc;n quan đến nhiều hoạt động kh&aacute;c (đi, đứng,..). Bạn n&ecirc;n kiểm so&aacute;t chặt điều kiện.</p>\r\n', 'Upload\\1560134150383_stair1.png', 46, 'Đặng Minh Tiến', 10, '2019-05-30', '2021-06-04', 1),
(66, 3, 'Có 2 con mèo ngồi bên cửa sổ', 'Kim Đồng', 2019, 30000, '<p><strong>C&oacute; Hai Con M&egrave;o Ngồi B&ecirc;n Cửa Sổ</strong></p>\r\n\r\n<p>Nh&acirc;n vật ch&iacute;nh thứ nhất t&ecirc;n l&agrave; Gấu.</p>\r\n\r\n<p>Nh&acirc;n vật thứ hai l&agrave; T&iacute; Hon.</p>\r\n\r\n<p>Nh&acirc;n vật thứ ba, t&ecirc;n l&agrave;&hellip;; c&ograve;n nữa, nh&acirc;n vật thứ tư, t&ecirc;n l&agrave;&hellip;</p>\r\n\r\n<p>Để biết tại sao Gấu lại chơi th&acirc;n với T&iacute; Hon, th&igrave; mời bạn h&atilde;y mở s&aacute;ch ra.</p>\r\n\r\n<p>Gấu v&agrave; T&iacute; Hon th&acirc;n nhau đến mức c&oacute; thể chia sẻ từng chuyện vui buồn trong những ph&uacute;t gi&acirc;y mềm yếu, lo lắng v&agrave; chăm s&oacute;c, gi&uacute;p nhau từ miếng ăn đến &ldquo;chiến lược&rdquo; để tồn tại l&acirc;u d&agrave;i.T&igrave;nh bạn l&agrave; g&igrave;? Bạn g&aacute;i l&agrave; g&igrave;? T&igrave;nh y&ecirc;u l&agrave; g&igrave;?<br />\r\nBọn m&egrave;o chuột kể với ch&uacute;ng ta nhiều c&acirc;u chuyện nhỏ, gửi th&ocirc;ng điệp rằng, t&igrave;nh y&ecirc;u c&oacute; sức mạnh tuyệt diệu, c&oacute; thể l&agrave;m n&ecirc;n mọi điều phi thường trong cuộc sống mu&ocirc;n lo&agrave;i.</p>\r\n\r\n<p>Cuốn truyện c&oacute; độ dầy vừa phải, 67 h&igrave;nh vẽ của họa sĩ Đỗ Ho&agrave;ng Tường sinh động đến từng n&eacute;t nũng nịu hay ki&ecirc;u căng của n&agrave;ng m&egrave;o người y&ecirc;u m&egrave;o Gấu, c&acirc;u chuyện th&igrave; hấp dẫn duy&ecirc;n d&aacute;ng điểm những b&agrave;i thơ t&igrave;nh l&atilde;ng mạn nao l&ograve;ng song đọc to l&ecirc;n th&igrave; khiến cười hinh h&iacute;ch&hellip;</p>\r\n\r\n<p>Bạn h&atilde;y đọc nh&eacute;, để thấy, Nguyễn Nhật &Aacute;nh đ&atilde; viết truyện m&egrave;o chuột theo c&aacute;i c&aacute;ch của ri&ecirc;ng m&igrave;nh độc đ&aacute;o như thế n&agrave;o.</p>\r\n', 'Upload\\1560132135021_93351eded0a9ff29538401f76f76c2c1 (1).jpg', 9, 'Nguyễn Nhật Ánh', 34, '2021-06-04', '2021-06-04', 1),
(75, 5, 'Ký Ức Tuổi Thơ Qua Nghệ Thuật Thức Ăn', 'Kim Đồng ', 2005, 19000, '<p><strong>K&yacute; Ức Tuổi Thơ Qua Nghệ Thuật Thức Ăn (B&igrave;a Mềm)</strong></p>\r\n\r\n<p>Bắt đầu từ niềm đam m&ecirc; nghệ thuật, t&aacute;c giả đ&atilde; chia sẻ những bức tranh tự l&agrave;m bằng thức ăn tr&ecirc;n mạng x&atilde; hội Instagram v&agrave; ngay lập tức được sự đ&oacute;n nhận của đ&ocirc;ng đảo bạn b&egrave; ở khắp nơi tr&ecirc;n thế giới. Những t&aacute;c phẩm nghệ thuật s&aacute;ng tạo v&agrave; độc đ&aacute;o, truyền tải nhiều th&ocirc;ng điệp &yacute; nghĩa đ&atilde; chạm v&agrave;o tr&aacute;i tim của bất kỳ ai xem ch&uacute;ng. &Yacute; tưởng l&agrave;m s&aacute;ch đến từ c&ocirc; Alexandra người Đức khi m&agrave; hằng đ&ecirc;m c&aacute;c con của c&ocirc; ấy cứ đ&ograve;i mẹ mở t&agrave;i khoản &quot;yentoodart&quot; của t&aacute;c giả để xem tranh v&agrave; &quot;đọc&quot; cho ch&uacute;ng nghe như l&agrave; những c&acirc;u chuyện trước giờ đi ngủ.</p>\r\n\r\n<p>Quả thật, dưới b&agrave;n tay t&agrave;i hoa v&agrave; sự s&aacute;ng tạo đầy kinh ngạc của t&aacute;c giả Ho&agrave;ng Yến, thức ăn hằng ng&agrave;y đ&atilde; được diễn đạt như l&agrave; ng&ocirc;n ngữ hội họa, kết nối tr&aacute;i tim với tr&aacute;i tim bất chấp ng&ocirc;n ngữ, văn ho&aacute; v&agrave; m&agrave;u da.</p>\r\n', 'Upload\\1560132218506_ky-uc-tuoi-tho.u5425.d20170718.t180038.957808.jpg', 22, 'Hoàng Hải', NULL, NULL, NULL, 1),
(76, 4, 'Truyện Tranh Cổ Tích Việt Nam Tấm Cám', 'Phan Minh Đạo', 2018, 13500, '<p><strong>Truyện Tranh Cổ T&iacute;ch Việt Nam Tấm C&aacute;m</strong></p>\r\n\r\n<p>Bốn ng&agrave;n năm lịch sử đ&atilde; tạo n&ecirc;n một nền văn h&oacute;a đ&aacute;ng tự h&agrave;o, trong đ&oacute;, vốn di sản văn h&oacute;a d&acirc;n gian với kho t&agrave;ng truyện cổ t&iacute;ch hết sức phong ph&uacute;. C&aacute;c truyện cổ t&iacute;ch ấy, truyện n&agrave;o cũng hay, cũng mang nội dung x&atilde; hội, lịch sử s&acirc;u sắc v&agrave; được truyền tụng l&acirc;u d&agrave;i từ đời n&agrave;y sang đời kh&aacute;c.</p>\r\n\r\n<p>Đọc truyện cổ t&iacute;ch cho b&eacute; nghe ngay từ l&uacute;c c&ograve;n nhỏ l&agrave; một trong những c&aacute;ch gi&aacute;o dục tốt. Nghe truyện cổ t&iacute;ch l&agrave; c&aacute;ch gi&uacute;p b&eacute; bồi dưỡng t&acirc;m hồn, tin v&agrave;o những điều tốt đẹp trong đời v&agrave; đồng thời gi&uacute;p r&egrave;n luyện nh&acirc;n c&aacute;ch của b&eacute; ngay từ nhỏ. Truyện Tấm C&aacute;m nằm trong bộ&nbsp;<strong>Truyện Cổ T&iacute;ch Việt Nam Mẹ Kể Cho B&eacute;&nbsp;</strong>do t&aacute;c giả&nbsp;<strong>Phan Minh Đạo</strong>&nbsp;bi&ecirc;n soạn cũng kh&ocirc;ng nằm ngo&agrave;i mục đ&iacute;ch đ&oacute;. Với những h&igrave;nh ảnh minh họa sinh động xe kẽ lời kể, cuốn s&aacute;ch sẽ l&agrave; kho t&agrave;ng kiến thức qu&yacute; gi&aacute; đồng h&agrave;nh c&ugrave;ng những năm th&aacute;ng tuổi thơ của trẻ.</p>\r\n', 'Upload\\1560132358055_mt2.u335.d20160628.t082828.png', 25, 'Minh Lê', NULL, NULL, NULL, 1),
(77, 5, '153 BÀI LÀM VĂN TIẾNG VIỆT LỚP 2', 'ĐH Quốc gia', 2017, 20000, '<p>153 B&agrave;i L&agrave;m Văn Tiếng Việt Lớp 2</p>\r\n\r\n<p>Quyển s&aacute;ch gồm nhiều dạng v&agrave; kiểu b&agrave;i l&agrave;m kh&aacute;c nhau đa dạng v&agrave; phong ph&uacute; gi&uacute;p cho c&aacute;c em dễ học tập, tham khảo v&agrave; r&egrave;n luyện cho m&igrave;nh những kĩ năng đọc, viết v&agrave; l&agrave;m văn hay.</p>\r\n\r\n<p>T&aacute;c giả đ&atilde; nghi&ecirc;n cứu v&agrave; ch&uacute; trọng trong việc cung cấp một số lượng đề v&agrave; b&agrave;i l&agrave;m phong ph&uacute; được chọn lọc một c&aacute;ch chặt chẽ, chuẩn mực nhằm gi&uacute;p c&aacute;c em hiểu s&acirc;u hơn về phương ph&aacute;p học tập, từ đ&oacute; vận dụng c&aacute;c thao t&aacute;c v&agrave; c&aacute;ch diễn đạt một c&aacute;ch s&aacute;ng tạo v&agrave;o b&agrave;i văn của ch&iacute;nh m&igrave;nh ng&agrave;y một hiệu quả hơn.</p>\r\n\r\n<p>Quyển s&aacute;ch l&agrave; một t&agrave;i liệu hữu &iacute;ch trong việc tự học, tự r&egrave;n luyện v&agrave; bồi dưỡng kĩ năng học v&agrave; l&agrave;m văn hay trong chương tr&igrave;nh Tiếng Việt hiện h&agrave;nh.</p>\r\n', 'Upload\\1560133011544_image_119809.jpg', 92, 'Minh Khuê', NULL, NULL, NULL, 1),
(78, 8, 'Hạt vi táo', 'NXB Phụ Nữ', 2007, 67000, '<p>Triết l&yacute;, kh&ocirc; khan v&agrave; ảm đạm - đ&oacute; l&agrave; những từ thường được d&ugrave;ng để mi&ecirc;u tả nền văn học Đức. Song với&nbsp;<strong>Vị hạt t&aacute;o</strong>, cuốn tiểu thuyết đầy sức h&uacute;t của Katharina Hagena, người đọc c&oacute; thể qu&ecirc;n đi ấn tượng ấy. Như tựa s&aacute;ch, hương t&aacute;o v&agrave; vị t&aacute;o vấn v&iacute;t lấy c&acirc;u chuyện về ba thế hệ phụ&nbsp;nữ&nbsp;trong một gia đ&igrave;nh: kh&ocirc;ng nồng gắt nhưng &aacute;m ảnh. Mỗi c&aacute; nh&acirc;n l&agrave; một thế giới nội tại mờ biệt, kh&oacute; l&iacute; giải, ch&iacute;nh v&igrave; vậy khiến ng&ocirc;i nh&agrave; cũng mang vẻ u ẩn.</p>\r\n\r\n<p>Sau khi Bertha - b&agrave; ngoại qua đời, nh&acirc;n vật xưng&nbsp;<em>T&ocirc;i</em>&nbsp;về lại ng&ocirc;i nh&agrave; của gia đ&igrave;nh m&agrave; nay c&ocirc; được thừa kế. Từng bước kh&aacute;m ph&aacute; điền sản n&agrave;y l&agrave; từng bước b&oacute;c t&aacute;ch qu&aacute; khứ l&egrave;n xếp những b&iacute; mật v&agrave; nỗi đau gắn với những thế hệ trước, hoặc người đ&atilde; khuất.&nbsp;<em>T&ocirc;i</em>&nbsp;muốn gọi lại d&ograve;ng k&iacute; ức đang trườn ra khỏi v&ugrave;ng nhớ, để ch&iacute; &iacute;t kh&ocirc;ng bị đẩy xa th&ecirc;m khỏi gia đ&igrave;nh.&nbsp;Ở chiều&nbsp;ngược lại, k&iacute; ức cũng vẫy gọi&nbsp;<em>T&ocirc;i&nbsp;</em>bằng đ&ocirc;i c&aacute;nh mi&ecirc;n man của n&oacute;.</p>\r\n\r\n<p>B&agrave; ngoại Bertha hiện l&ecirc;n trong mối quan hệ với chị g&aacute;i b&agrave; - b&agrave; Anna, với &ocirc;ng ngoại hay &ocirc;ng gi&aacute;o gi&agrave; Lexow.&nbsp;Mẹ&nbsp;<em>T&ocirc;i</em>&nbsp;c&ugrave;ng c&aacute;c d&igrave; được khắc họa th&ocirc;ng qua những suy nghĩ, x&uacute;c cảm d&agrave;nh cho nhau.&nbsp;Tới lượt&nbsp;<em>T&ocirc;i -</em>&nbsp;một c&aacute;ch v&ocirc; t&igrave;nh -&nbsp;tự bộc lộ m&igrave;nh tr&ecirc;n nền mối li&ecirc;n kết với những người&nbsp;<a href=\"http://eva.vn/\">phụ nữ</a>trong gia đ&igrave;nh v&agrave; b&egrave; bạn thuở ấu thơ. Tựu lại, mỗi số phận kh&ocirc;ng được kể ri&ecirc;ng m&agrave; đan&nbsp;c&agrave;i tạo n&ecirc;n lớp lang cho c&acirc;u chuyện, độc giả d&otilde;i theo một nh&acirc;n vật cũng l&agrave; d&otilde;i theo nhiều nh&acirc;n vật kh&aacute;c.</p>\r\n\r\n<p>Dĩ nhi&ecirc;n, b&ecirc;n cạnh ba thế hệ phụ nữ, c&acirc;y t&aacute;o xứng được coi l&agrave; một &ldquo;nh&acirc;n vật&rdquo; - n&oacute; cũng quan s&aacute;t, lắng nghe, l&ecirc;n tiếng, nếu ta lưu t&acirc;m đến thứ hương vị giăng&nbsp;mắc khắp tiểu thuyết. C&acirc;y t&aacute;o biểu hiện r&otilde;&nbsp;n&eacute;t nữ&nbsp;t&iacute;nh trong lối viết của Katharina, sự nữ t&iacute;nh ngay cả khi t&aacute;c giả m&ocirc; tả c&aacute;i u &aacute;m lịch sử như d&ograve;ng chữ về Đức quốc x&atilde; do ai đ&oacute; l&eacute;n khắc l&ecirc;n chuồng g&agrave; nh&agrave;&nbsp;<em>T&ocirc;i</em>.</p>\r\n\r\n<p>C&oacute; thể n&oacute;i,&nbsp;<em>Vị hạt t&aacute;o</em>&nbsp;mang một sức nặng rất tinh nhẹ v&agrave; mềm mại, sự quyết liệt lại ẩn sau vẻ l&atilde;ng đ&atilde;ng, thậm ch&iacute; nỗi đau cũng tới thật từ tốn. T&aacute;c giả&nbsp;Katharina đ&atilde;&nbsp;viết về nỗi đau một c&aacute;ch&nbsp;n&ecirc;n thơ v&ocirc; ngần, đồng thời vẫn&nbsp;c&oacute; những đoạn điểm xuyết n&eacute;t h&oacute;m hỉnh đắt gi&aacute;.</p>\r\n\r\n<p>Nắm bắt tr&ograve;n vẹn tinh thần&nbsp;<em>Vị hạt t&aacute;o</em>&nbsp;ấy, thể hiện hầu như nguy&ecirc;n chất t&iacute;nh-nữ ấy (c&ocirc;ng việc vốn dĩ được chờ đợi nhiều hơn ở một nữ dịch giả), dịch giả L&ecirc; Quang, d&ugrave; l&agrave; một dịch giả h&agrave;ng đầu của văn học Đức, vẫn g&acirc;y bất ngờ với bản chuyển ngữ của &ocirc;ng.&nbsp;</p>\r\n\r\n<p>V&agrave; cuối c&ugrave;ng, việc đọc l&agrave; d&agrave;nh cho độc giả. Kh&ocirc;ng thể đo&aacute;n trước những cảm x&uacute;c m&agrave;&nbsp;Vị hạt t&aacute;omang đến, song c&oacute; thể d&aacute;m chắc nhiều người trong ch&uacute;ng ta sẽ muốn nhớ c&acirc;u chuyện mở đầu bằng l&atilde;ng qu&ecirc;n n&agrave;y.</p>\r\n', 'Upload\\1560133366438_9786045633748.jpg', 40, 'Kim Khoa', 25, '2019-06-10', '2019-06-10', 1),
(79, 3, 'LISTENING & NOTETAKING SKILLS3 STUDENT BOOK ADV LISTEN', 'Cengage Learning, Inc', 2009, 62000, '<p>The new edition of the Listening and Notetaking Skills series incorporates engaging National Geographic content and video featuring authentic interviews and videos with National Geographic Explorers! This unique approach engages learners while enhancing listening comprehension and developing notetaking and study skills.</p>\r\n', 'Upload\\1560134391068_51wdtz.jpg', 25, 'Nickey Mine', 40, '2019-06-07', '2019-06-27', 1),
(80, 5, 'Combo Truyện Kể Trước Khi Ngủ: Can Đảm - Đoàn Kết - Tốt Bụng - Vui Vẻ ', 'Nhà Xuất Bản Mỹ Thuật', 2019, 28000, '<p>Combo Truyện Kể Trước Khi Ngủ: Can Đảm - Đo&agrave;n Kết - Tốt Bụng - Vui Vẻ ( Bộ 04 Cuốn) Mỗi cuốn s&aacute;ch gồm 20-23 chuyện kể. Những c&acirc;u chuyện ngắn, dễ hiểu nhưng đầy t&iacute;nh gi&aacute;o dục v&agrave; hướng thiện gi&uacute;p cho c&aacute;c b&eacute; ở lứa tuổi mầm non v&agrave; mẫu gi&aacute;o được định h&igrave;nh tư duy v&agrave; &yacute; thức ngay từ những năm th&aacute;ng đầu đời. Mục Hỏi con y&ecirc;u ở cuối mỗi cuốn s&aacute;ch sẽ gi&uacute;p phụ huynh kiểm tra v&agrave; củng cố lại kỹ năng tiếp thu, ph&acirc;n t&iacute;ch của b&eacute; sau khi nghe đọc truyện.</p>\r\n', 'Upload\\1560133857656_5bb121ffd8705b8fce246568cbd48418.jpg', 40, 'Nguyễn Tây Trung', 5, '2019-06-03', '2019-06-19', 1),
(81, 8, 'Đắc nhân tâm - Phiên bản đặc biệt dành cho doanh nhân', 'NXB Hồng Đức', 2019, 150000, '<p>Cuốn s&aacute;ch&nbsp;Đắc Nh&acirc;n T&acirc;m&nbsp;của t&aacute;c giả&nbsp;Dale Carnegie&nbsp;do&nbsp;dịch giả Nguyễn Hiến L&ecirc;&nbsp;dịch sang tiếng Việt nằm trong bộ s&aacute;ch&nbsp;Sống sao cho đ&uacute;ng&nbsp;do&nbsp;BizBooks &ndash; Chuy&ecirc;n s&aacute;ch doanh nh&acirc;n độc quyền ph&aacute;t h&agrave;nh tr&ecirc;n thị trường.&nbsp;&nbsp;&ldquo;Đắc Nh&acirc;n T&acirc;m&rdquo; cần được cảm nhận bằng sự hiểu r&otilde; bản th&acirc;n, th&agrave;nh thật với ch&iacute;nh m&igrave;nh, hiểu biết v&agrave; quan t&acirc;m đến những người xung quanh để nh&igrave;n ra, khơi gợi những tiềm năng ẩn khuất nơi họ v&agrave; gi&uacute;p họ ph&aacute;t triển l&ecirc;n một tầm cao mớ</p>\r\n', 'Upload\\1560134270841_png5caee9d82ad12.png', 40, 'Dale Carnegie', 35, '2019-06-10', '2019-06-10', 1),
(82, 17, 'BƯỚC QUA YÊU THƯƠNG (SÁCH DÀNH CHO TUỔI 18+)', 'NXB Văn Học', 2012, 99000, '<p>B</p>\r\n\r\n<p>ước Qua Y&ecirc;u Thương</p>\r\n\r\n<p>T&aacute;c Giả: Ply</p>\r\n\r\n<p>***</p>\r\n\r\n<p>&#39;Bước qua y&ecirc;u thương để đi đến bến bờ hạnh ph&uacute;c&#39;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&iacute;ch Đoạn:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chương 1 - Gia Đ&igrave;nh Mới.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>- Tr&uacute;c Diệp! Ch&agrave;o dượng đi con.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nghe mẹ n&oacute;i vậy. Tr&uacute;c Diệp liền c&uacute;i gập người xuống ch&agrave;o:<br />\r\n<br />\r\n- Con ch&agrave;o dượng!</p>\r\n\r\n<p>&Ocirc;ng Ph&ugrave;ng đi đến bế thốc Tr&uacute;c Diệp l&ecirc;n. Khẽ kh&agrave;ng v&eacute;o chiếc mũi nhỏ xinh của c&ocirc;:<br />\r\n<br />\r\n- Tr&uacute;c Diệp ngoan qu&aacute;. Sau n&agrave;y con sống ở đ&acirc;y nh&eacute;?</p>\r\n\r\n<p>N&oacute;i xong &ocirc;ng khẽ đ&aacute;nh mắt sang ph&iacute;a b&agrave; Hoa mỉm cười. B&agrave; Hoa cũng như hiểu ẩn &yacute; của &ocirc;ng vội v&agrave;ng c&uacute;i mặt xuống che đi niềm hạnh ph&uacute;c. Hai người vừa mới t&aacute;i gi&aacute;, h&ocirc;m nay l&agrave; ng&agrave;y đầu ti&ecirc;n mẹ con Tr&uacute;c Diệp đến đ&acirc;y ở.</p>\r\n\r\n<p>Khi nghe dượng n&oacute;i như vậy, Tr&uacute;c Diệp quay sang hỏi mẹ một c&aacute;ch hồn nhi&ecirc;n:<br />\r\n<br />\r\n- Vậy ch&uacute;ng ta kh&ocirc;ng về nh&agrave; nữa hả mẹ?<br />\r\n<br />\r\nB&agrave; Hoa vội bước đến xoa đầu con g&aacute;i cười hiền hậu:<br />\r\n<br />\r\n- Kh&ocirc;ng. Ch&uacute;ng ta sẽ ở đ&acirc;y. Đ&acirc;y l&agrave; nh&agrave; ch&uacute;ng ta.<br />\r\n<br />\r\nB&agrave; Hoa vừa n&oacute;i xong th&igrave; c&oacute; hai cậu n&ocirc; nhau chạy xuống. Đ&acirc;y l&agrave; hai đứa con sinh đ&ocirc;i của &ocirc;ng Ph&ugrave;ng. Nh&igrave;n tho&aacute;ng qua, ch&uacute;ng giống nhau như đ&uacute;c. Hai cậu b&eacute; n&agrave;y rất dễ thương. B&agrave; Hoa vội bước đến xoa đầu từng đứa nhỏ mỉm cười n&oacute;i:<br />\r\n<br />\r\n- Chắc c&aacute;c con l&agrave; An L&acirc;m v&agrave; Nam L&acirc;m nhỉ?<br />\r\n<br />\r\nMột cậu b&eacute; đứng dậy c&uacute;i người xuống lễ ph&eacute;p:<br />\r\n<br />\r\n- Con ch&agrave;o d&igrave;!<br />\r\n<br />\r\n- Con ngoan qu&aacute;. Thế c&ograve;n con th&igrave; sao?<br />\r\n<br />\r\nCậu b&eacute; n&agrave;y nghe chừng rất ngang bướng. Kh&ocirc;ng những kh&ocirc;ng ch&agrave;o m&agrave; c&ograve;n khoanh tay lại n&oacute;i:<br />\r\n<br />\r\n- Nếu c&ocirc; đo&aacute;n đ&uacute;ng t&ecirc;n của con th&igrave; con sẽ ch&agrave;o v&agrave; gọi c&ocirc; bằng mẹ.<br />\r\n<br />\r\n&Ocirc;ng Ph&ugrave;ng thấy con trẻ như thế th&igrave; kh&ocirc;ng khỏi giận dữ. Vội qu&aacute;t:<br />\r\n<br />\r\n- Nam L&acirc;m! Kh&ocirc;ng được v&ocirc; lễ.<br />\r\n<br />\r\nNam L&acirc;m vẫn l&igrave; mặt. Cậu chu m&ocirc;i l&ecirc;n n&oacute;i:<br />\r\n<br />\r\n- Kh&ocirc;ng t&iacute;nh nữa. Bố con n&oacute;i rồi.&nbsp;<br />\r\n<br />\r\nB&agrave; Hoa tuy c&oacute; hơi thất vọng v&igrave; cậu b&eacute; n&agrave;y nhưng vẫn cười hiền hậu. D&ugrave; sao th&igrave; cậu b&eacute; cũng l&agrave; con của chồng b&agrave;. Sau n&agrave;y n&oacute; cũng sẽ l&agrave; con của b&agrave;. Vả lại, n&oacute; cũng l&agrave; trẻ con, chưa hiểu biết g&igrave;, nếu b&agrave; chấp nhặt cậu b&eacute; th&igrave; h&oacute;a ra b&agrave; cũng chỉ bằng n&oacute;.<br />\r\n<br />\r\nB&agrave; Hoa đi về ph&iacute;a Tr&uacute;c Diệp đang đứng k&eacute;o tay đứa con g&aacute;i của m&igrave;nh đến trước mặt hai cậu b&eacute; cười n&oacute;i:<br />\r\n<br />\r\n- An L&acirc;m, Nam L&acirc;m. Đ&acirc;y l&agrave; em Tr&uacute;c Diệp. C&aacute;c con cho em chơi c&ugrave;ng với nh&eacute;? Sau n&agrave;y Tr&uacute;c Diệp sẽ l&agrave; em g&aacute;i của c&aacute;c con.<br />\r\n<br />\r\nCậu b&eacute; An L&acirc;m vẫn lễ ph&eacute;p như vậy:<br />\r\n<br />\r\n- V&acirc;ng ạ!<br />\r\n<br />\r\nC&ograve;n Nam L&acirc;m th&igrave; chạy đến x&ocirc; ng&atilde; Tr&uacute;c Diệp, h&aacute;ch dịch n&oacute;i:<br />\r\n<br />\r\n- N&oacute; kh&ocirc;ng phải em g&aacute;i con.&nbsp;<br />\r\n<br />\r\nB&agrave; Hoa mặt m&agrave;y t&iacute;m ngắt. Nếu Tr&uacute;c Diệp kh&ocirc;ng thể h&ograve;a đồng với hai đứa trẻ n&agrave;y th&igrave; b&agrave; quả l&agrave; c&oacute; lỗi với c&ocirc; b&eacute;. V&igrave; b&agrave; m&agrave; Tr&uacute;c Diệp phải chuyển đến sống ở một gia đ&igrave;nh xa lạ thế n&agrave;y.<br />\r\n<br />\r\n&Ocirc;ng Ph&ugrave;ng nghe Nam L&acirc;m n&oacute;i thế vội v&agrave;ng chạy đến đ&aacute;nh v&agrave;o m&ocirc;ng Nam L&acirc;m mấy c&aacute;i rồi qu&aacute;t:<br />\r\n<br />\r\n- Sao con lại c&oacute; thể v&ocirc; lễ với mẹ Hoa như thế?<br />\r\n<br />\r\nNam L&acirc;m bị đ&aacute;nh nhưng vẫn kh&ocirc;ng kh&oacute;c. Ngược lại cậu c&ograve;n l&igrave; lợm hơn. &Aacute;nh mắt dần chuyển sang hằn học v&agrave; nh&igrave;n sang ph&iacute;a b&agrave; Hoa. V&igrave; b&agrave; ta v&agrave; con nhỏ kia m&agrave; cậu bị đ&aacute;nh. Bọn họ l&agrave; ai? Sao vừa xuất hiện trong nh&agrave; l&agrave; bố đ&atilde; đ&aacute;nh cậu? Nam L&acirc;m chạy l&ecirc;n ph&ograve;ng. Trước khi đi cậu kh&ocirc;ng qu&ecirc;n n&oacute;i:<br />\r\n<br />\r\n- M&agrave;y kh&ocirc;ng phải em g&aacute;i tao.<br />\r\n<br />\r\nB&agrave; Hoa v&agrave; &ocirc;ng Ph&ugrave;ng chợt thở d&agrave;i. Cũng may l&agrave; vẫn con An L&acirc;m. Cậu b&eacute; rất lễ ph&eacute;p v&agrave; biết chừng mực. Vừa thấy Nam L&acirc;m như vậy liền chạy đến nắm tay Tr&uacute;c Diệp mỉm cười n&oacute;i:<br />\r\n<br />\r\n- Em bao nhi&ecirc;u tuổi rồi?<br />\r\n<br />\r\nTr&uacute;c Diệp bị nụ cười của cậu b&eacute; m&ecirc; hoặc. Khoảnh khắc ấy, như ng&agrave;n c&aacute;nh hoa bay trong gi&oacute;, nhẹ nh&agrave;ng v&agrave; thật dịu d&agrave;ng. C&ocirc; b&eacute; lặng người tận hưởng. Khẽ trả lời:<br />\r\n<br />\r\n- Em 6 tuổi ạ!.<br />\r\n<br />\r\n- Vậy Tr&uacute;c Diệp k&eacute;m anh 3 tuổi. Anh 9 tuổi rồi. Sau n&agrave;y ch&uacute;ng ta sẽ học c&ugrave;ng trường. Em đi học với anh nh&eacute;?<br />\r\n<br />\r\nTr&uacute;c Diệp sao lại c&oacute; thế từ chối được. C&ocirc; b&eacute; cười tươi trả lời:<br />\r\n&nbsp;</p>\r\n\r\n<p>- V&acirc;ng!</p>\r\n\r\n<p>* * *</p>\r\n\r\n<p>Từ đ&oacute;, Tr&uacute;c Diệp đ&atilde; c&oacute; th&ecirc;m một gia đ&igrave;nh mới. C&ocirc; khẽ kh&agrave;ng bước ch&acirc;n v&agrave;o cuộc sống của gia đ&igrave;nh đ&oacute;. H&ograve;a nhập chung một cuộc n&oacute;i chuyện n&agrave;o đ&oacute;, một bữa ăn giản đơn nhưng lại tr&agrave;n ngập tiếng cười, một tr&ograve; chơi của An L&acirc;m v&agrave; Nam L&acirc;m cho d&ugrave; Nam L&acirc;m l&uacute;c n&agrave;o cũng lu&ocirc;n miệng đuổi c&ocirc; ra v&agrave; kh&ocirc;ng cho c&ocirc; chơi. Nhưng c&aacute;i c&ocirc; cần l&agrave; sự quan t&acirc;m của An L&acirc;m chứ kh&ocirc;ng phải l&agrave; Nam L&acirc;m. C&ocirc; kh&ocirc;ng cần hắn. V&igrave; hắn cũng chẳng cần c&ocirc;.</p>\r\n\r\n<p>---------------</p>\r\n\r\n<p>- C&ograve;n! C&ograve;n rất nhiều chuyện m&agrave; em v&agrave; anh cần phải đền b&ugrave; cho nhau.</p>\r\n\r\n<p>Nam L&acirc;m dựa người v&agrave;o th&agrave;nh giường. Tư thế của anh như muốn khi&ecirc;u kh&iacute;ch đối phương, cộng th&ecirc;m đ&ocirc;i l&ocirc;ng m&agrave;y nhếch l&ecirc;n, một vẻ cao ngạo rất đặc trưng của anh. Anh vừa cười nhạt vừa n&oacute;i mỉa mai:</p>\r\n\r\n<p>- C&ograve;n sao? Tưởng đ&atilde; trả hết rồi chứ nhỉ! - Rồi anh ra chiều nghĩ ngợi, sau đ&oacute; &agrave; l&ecirc;n như đ&atilde; nhớ ra: - Hay l&agrave; muốn đ&ograve;i lại c&aacute;i đ&atilde; mất với anh? Em g&aacute;i &agrave;! C&aacute;i đấy c&oacute; thể đ&ograve;i lại được sao? Em ấu trĩ qu&aacute; đấy.</p>\r\n\r\n<p>Đ&atilde; nhiều lần bị Nam L&acirc;m d&ugrave;ng những lời lẽ sỗ s&agrave;ng v&agrave; đay nghiến n&ecirc;n Tr&uacute;c Diệp cũng dần tạo được cho m&igrave;nh lớp ph&ograve;ng bị yếu ớt. Tuy l&agrave; cố tỏ vẻ b&igrave;nh tĩnh bằng một nụ cười nhạt đ&aacute;p trả nhưng giọng n&oacute;i c&ocirc; vẫn run kh&ocirc;ng ngờ:</p>\r\n\r\n<p>- Em kh&ocirc;ng đ&ograve;i lại c&aacute;i đấy.</p>\r\n\r\n<p>- Vậy th&igrave; l&agrave;?</p>\r\n\r\n<p>- Tr&aacute;i tim của anh!</p>\r\n\r\n<p>&hellip;</p>\r\n\r\n<p>Đ&ocirc;i m&ocirc;i Nam L&acirc;m lướt nhẹ từ đ&ocirc;i mắt cho đến bờ m&aacute;, v&agrave;nh tai rồi xuống m&ocirc;i. Hơi thở gấp g&aacute;p n&oacute;ng hổi khiến cho những giọt mồ h&ocirc;i bắt đầu lấm tấm tr&ecirc;n cơ thể. L&uacute;c sau, Nam L&acirc;m rời khỏi m&ocirc;i c&ocirc;, d&ugrave;ng &aacute;nh mắt chan chứa nhất để nh&igrave;n c&ocirc; rồi n&oacute;i giọng kh&agrave;n kh&agrave;n:</p>\r\n\r\n<p>- Tr&uacute;c Diệp. Cả đời n&agrave;y, em chỉ c&oacute; thể l&agrave; của anh th&ocirc;i.</p>\r\n\r\n<p>Tr&uacute;c Diệp mặt mũi ửng hồng giống như một b&ocirc;ng hoa mẫu đơn. Đ&ocirc;i mắt đ&ecirc; m&ecirc; với h&agrave;ng l&ocirc;ng mi rung động khiến bất kỳ ai cũng cảm thấy say đắm. T&acirc;m tr&iacute; c&ocirc; giờ kh&ocirc;ng c&ograve;n nghĩ được g&igrave; nữa, muốn v&ugrave;ng ra nhưng lại kh&ocirc;ng biết c&aacute;ch. Muốn tiếp tục nhưng th&acirc;m t&acirc;m lại kh&ocirc;ng ngừng g&agrave;o th&eacute;t. Cuối c&ugrave;ng c&ocirc; mặc kệ mọi chuyện tr&ocirc;i theo lẽ tự nhi&ecirc;n.</p>\r\n\r\n<p>Mời Bạn Đ&oacute;n Đọc!</p>\r\n', 'Upload\\1560137545057_buocquayeuthuongb1rgb.jpg', 40, 'Ply', NULL, NULL, NULL, 1),
(83, 5, 'TÂY DU KÝ - TẬP 1', 'Vui vẻ', 2019, 20000, '<p>T&aacute;c phẩm&nbsp;<strong>T&Acirc;Y DU K&Yacute;</strong>&nbsp;l&agrave; đỉnh cao s&aacute;ng tạo trong lịch sử ph&aacute;t triển về tiểu thuyết cổ điển của Trung Quốc. Chủ nghĩa l&atilde;ng mạn t&iacute;ch cực l&agrave; đặc sắc nghệ thuật chủ yếu của n&oacute;.</p>\r\n\r\n<p>C&aacute;i được tả trong&nbsp;<strong>T&Acirc;Y DU K&Yacute;</strong>&nbsp;l&agrave; một thế giới thần thoại kỳ diệu. Nh&acirc;n vật trong đ&oacute; tuyệt đại đa số kh&ocirc;ng phải l&agrave; người trong x&atilde; hội hiện thực, m&agrave; m&ocirc;i trường hoạt động của họ cũng kh&ocirc;ng phải l&agrave; ho&agrave;n cảnh của đời sống x&atilde; hội lo&agrave;i người.</p>\r\n\r\n<p><strong>T&Acirc;Y DU K&Yacute;</strong>&nbsp;mở ra thế giới tưởng tượng phong ph&uacute; kh&ocirc;ng g&igrave; s&aacute;nh được, c&oacute; đầy đủ t&igrave;nh tiết truyện đưa người ta v&agrave;o cảnh thắng th&uacute; vị: Đời sống vui vẻ, tự do tự tại của bầy khỉ ở Hoa Quả Sơn, việc đại n&aacute;o thi&ecirc;n cung, địa phủ v&agrave; lang cung, bảy mươi hai ph&eacute;p biến h&oacute;a, t&aacute;m mươi mốt nạn tr&ecirc;n đường; cho đến chỗ chiến trường c&aacute;t bay đ&aacute; lở, sự thần qu&aacute;i đi m&acirc;y về gi&oacute;, cuộc chiến đấu thần diệu kỳ dị... Tất cả những c&aacute;i ấy đ&atilde; đưa người ta tiến v&agrave;o một thế giới ảo tưởng thần diệu. &nbsp;&nbsp;&nbsp;<strong>&nbsp;</strong></p>\r\n', 'Upload\\1560133165731_image_120057.jpg', 40, 'Nguyễn Tây Trung', NULL, NULL, NULL, 1);
INSERT INTO `sach` (`masach`, `matheloai`, `tensach`, `nhaxuatban`, `namxuatban`, `giaban`, `mota`, `anhdaidien`, `soluongton`, `tentacgia`, `phantramgiamgia`, `ngaybatdaugiamgia`, `ngayketthucgiamgia`, `trangthai`) VALUES
(84, 8, 'ĐỪNG NÓI CHUYỆN VỚI CÔ ẤY (TẬP 2)', 'Vui vẻ', 2019, 126000, '<p>Đừng N&oacute;i Chuyện Với C&ocirc; Ấy (Tập 2)<br />\r\n<br />\r\nTuyệt vọng, sụp đổ, tự hủy hoại m&igrave;nh, tự vẫn&hellip;<br />\r\n<br />\r\nĐiều đ&aacute;ng sợ kh&ocirc;ng phải ở chỗ ch&uacute;ng ta đ&atilde; l&agrave;m ra những việc n&agrave;y.<br />\r\n<br />\r\nM&agrave; ở chỗ ch&uacute;ng ta căn bản kh&ocirc;ng biết tại sao m&igrave;nh lại l&agrave;m như vậy.<br />\r\n<br />\r\nD&ugrave;ng t&acirc;m l&yacute; để phạm tội, d&ugrave;ng &yacute; nghĩ để giết người.<br />\r\n<br />\r\nĐ&oacute; ch&iacute;nh l&agrave; sức mạnh đ&aacute;ng sợ của h&agrave;nh vi &ldquo;&aacute;m thị giết người&rdquo;.<br />\r\n<br />\r\nNhững người tự kết liễu cuộc đời m&igrave;nh v&igrave; sự &aacute;m thị của một ai đ&oacute;&hellip; Rốt cuộc đ&acirc;y l&agrave; một sức mạnh thần kỳ v&agrave; khiến người ta kinh sợ tới mức n&agrave;o? N&oacute; gần như đ&atilde; l&agrave;m đảo lộn mọi kh&aacute;i niệm về t&acirc;m l&yacute; học v&agrave; t&acirc;m l&yacute; học tội phạm th&ocirc;ng thường, h&oacute;a ra cao thủ thực sự chỉ cần d&ugrave;ng mấy c&acirc;u n&oacute;i, mấy động t&aacute;c l&agrave; đ&atilde; c&oacute; thể giết người trong v&ocirc; h&igrave;nh; h&oacute;a ra tinh thần chỉ cần đủ mạnh l&agrave; c&oacute; thể đưa người kh&aacute;c v&agrave;o chỗ chết. Thế giới nội t&acirc;m của con người rốt cuộc phức tạp tới mức độ n&agrave;o? E rằng so với vũ trụ m&ecirc;nh mang c&ograve;n bao la rộng lớn v&agrave; s&acirc;u thẳm kh&oacute; lường hơn!<br />\r\n<br />\r\nĐừng n&oacute;i chuyện với c&ocirc; ấy được xem l&agrave; cuốn tiểu thuyết trinh th&aacute;m t&acirc;m l&yacute; tội phạm &ldquo;c&acirc;n n&atilde;o nhất&rdquo; tr&ecirc;n văn đ&agrave;n Trung Quốc. Những triết l&yacute; về ph&acirc;n t&acirc;m học của Sigmund Freud được t&aacute;c giả vận dụng kh&aacute; nhuần nhuyễn trong từng c&acirc;u chữ, do đ&oacute;, độc giả nhất định sẽ bị cuốn h&uacute;t v&agrave;o từng trang s&aacute;ch, sống c&ugrave;ng nh&acirc;n vật với những cảm x&uacute;c hồi hộp, lo lắng v&agrave; sợ h&atilde;i v&ocirc; c&ugrave;ng ngoạn mục. C&oacute; thể n&oacute;i, Đừng n&oacute;i chuyện với c&ocirc; ấy l&agrave; một cuốn b&aacute;ch khoa to&agrave;n thư hữu &iacute;ch cho người mới &ldquo;nhập m&ocirc;n&rdquo; thể loại tiểu thuyết trinh th&aacute;m t&acirc;m l&yacute; tội phạm n&agrave;y.<br />\r\n<br />\r\nTuy nhi&ecirc;n, tất cả những t&igrave;nh tiết được đưa ra trong truyện chỉ l&agrave; những v&iacute; dụ nho nhỏ hư cấu nhằm giải nghĩa một bộ phận triết l&yacute; trong ph&acirc;n t&acirc;m học, kh&ocirc;ng mang t&iacute;nh x&aacute;c thực v&agrave; chỉ c&oacute; nhiệm vụ l&agrave;m tăng th&ecirc;m độ hấp dẫn cho t&aacute;c phẩm. Thể theo nguyện vọng của đa số độc giả, Ban Bi&ecirc;n tập xin được giữ nguy&ecirc;n c&aacute;c t&igrave;nh tiết v&agrave; c&acirc;u từ của t&aacute;c giả, để bạn đọc c&oacute; thể phần n&agrave;o hiểu r&otilde; hơn về c&aacute;c l&yacute; thuyết ph&acirc;n t&acirc;m học của Sigmund Freud.</p>\r\n', 'Upload\\1560133276682_image_95752.jpg', 40, 'Nguyễn Đức Vinh', 29, '2019-06-03', '2019-06-26', 1),
(85, 8, 'Con gái của mẹ', 'NXB Phụ Nữ', 2019, 26900, '<p><strong>Con G&aacute;i Của Mẹ</strong></p>\r\n\r\n<p>&ldquo;Khi t&ocirc;i nh&igrave;n thấy khu&ocirc;n mặt b&eacute; con của m&igrave;nh lần đầu ti&ecirc;n, t&ocirc;i đ&atilde; cố gắng hết sức để lưu giữ h&igrave;nh ảnh ấy khắc s&acirc;u v&agrave;o trong tim. Khi con b&eacute; bị đưa đi, t&ocirc;i sẽ kh&ocirc;ng bao giờ nh&igrave;n thấy n&oacute; nữa&hellip;&rdquo;</p>\r\n\r\n<p>38 năm sau</p>\r\n\r\n<p>Sabina, c&ocirc; g&aacute;i nhỏ b&eacute; năm n&agrave;o mang thai thi&ecirc;n thần của ri&ecirc;ng m&igrave;nh v&agrave; c&ocirc; kh&ocirc;ng hiểu sao một người mẹ lại c&oacute; thể bỏ rơi đứa con của m&igrave;nh v&agrave; tại sao bố mẹ c&ocirc; lại giữ b&iacute; mật về chuyện đ&oacute;.</p>\r\n\r\n<p>Sabina quyết t&acirc;m t&igrave;m kiếm người phụ nữ đ&atilde; từng vứt bỏ m&igrave;nh. Nhưng những thứ c&ocirc; kh&aacute;m ph&aacute; ra lại khiến mọi thứ thay đổi, ngoại trừ việc người phụ nữ ấy vẫn đau đ&aacute;u nhớ thương c&ocirc; suốt những năm qua.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Upload\\1560133798415_e1402b54-af2a-11e7-9167-cac091044fd5.jpg', 40, 'Daniel Kahneman', 2, '2019-06-09', '2019-06-09', 1),
(86, 19, 'Nuôi Dạy Gia Súc Gia Cầm - Nuôi Chó Kiểng (Tái Bản 2016)', 'NXB Thanh Hóa', 2016, 23000, '<p><strong>Nu&ocirc;i Dạy Gia S&uacute;c Gia Cầm - Nu&ocirc;i Ch&oacute; Kiểng</strong></p>\r\n\r\n<p>Cuốn s&aacute;ch&nbsp;<strong>Nu&ocirc;i dạy gia s&uacute;c gia cầm - nu&ocirc;i ch&oacute; kiểng</strong>&nbsp;giới thiệu c&ugrave;ng bạn đọc những nội dung sau:</p>\r\n\r\n<p>- Ch&oacute; Kiểng v&agrave; nghề nu&ocirc;i ch&oacute; Kiểng</p>\r\n\r\n<p>- Những giống ch&oacute; Kiểng được nu&ocirc;i nhiều nhất ở nước ta</p>\r\n\r\n<p>- C&aacute;ch thuần h&oacute;a v&agrave; nu&ocirc;i dưỡng ch&oacute; Kiểng</p>\r\n\r\n<p>- Thức ăn của ch&oacute;</p>\r\n\r\n<p>- Sinh sản</p>\r\n\r\n<p>- Chăm s&oacute;c ch&oacute; c&aacute;i trong thời kỳ mang thai</p>\r\n\r\n<p>- Chăm s&oacute;c ch&oacute; mẹ v&agrave; ch&oacute; con sau khi sanh</p>\r\n\r\n<p>- Chăm s&oacute;c ch&oacute; Kiểng</p>\r\n\r\n<p>- C&aacute;ch nu&ocirc;i ch&oacute; con</p>\r\n\r\n<p>- C&aacute;ch cho uống nước v&agrave; c&aacute;ch ch&iacute;ch thuốc cho ch&oacute;</p>\r\n\r\n<p>- C&aacute;c bệnh của ch&oacute; v&agrave; c&aacute;ch điều trị.</p>\r\n', 'Upload\\1560134026475_img758.u335.d20160420.t085644.jpg', 27, 'Daniel Kahneman', NULL, NULL, NULL, 1),
(87, 5, 'Vạn Vật Vận Hành Như Thế Nào?', 'Nhà Xuất Bản Kim Đồng', 2019, 600000, '<p><strong>Vạn Vật Vận H&agrave;nh Như Thế N&agrave;o?</strong></p>\r\n\r\n<p>Vạn vật vận h&agrave;nh như thế n&agrave;o? m&ocirc; tả phần lớn c&aacute;c ph&aacute;t minh của thế giới hiện đại, gi&uacute;p ta c&oacute; c&aacute;i nh&igrave;n s&acirc;u hơn về cơ chế hoạt động của c&aacute;c vật dụng tưởng chừng rất tầm thường. Được lồng gh&eacute;p với một nh&acirc;n vật th&ocirc; kệch m&agrave; dễ thương (voi ma-m&uacute;t l&ocirc;ng), dưới lời dẫn truyện của một nh&agrave; ph&aacute;t minh ngờ nghệch nhưng đầy tham vọng thời tiền sử, cuốn s&aacute;ch n&agrave;y hứa hẹn l&agrave; t&aacute;c phẩm gần gũi với mọi lứa tuổi độc giả đam m&ecirc; t&igrave;m t&ograve;i v&agrave; c&oacute; &oacute;c phi&ecirc;u lưu h&agrave;i hước.</p>\r\n\r\n<p>Đ&acirc;y sẽ l&agrave; m&oacute;n qu&agrave; tặng tuyệt vời cho mọi độ tuổi, miễn l&agrave; c&oacute; đam m&ecirc; t&igrave;m t&ograve;i học hỏi về khoa học, kỹ thuật, cơ kh&iacute;, điện tử, hoặc những độc giả ch&aacute;n chường với những cuốn s&aacute;ch kh&ocirc; khan về c&aacute;c lĩnh vực tr&ecirc;n. Ta c&oacute; thể bắt đầu đọc ở bất kỳ nơi n&agrave;o của s&aacute;ch.</p>\r\n', 'Upload\\1560133629176_1_Van_vat.jpg', 39, 'David Macaulay', 10, '2019-06-02', '2019-06-10', 1),
(88, 8, 'Bốn Mùa Cuộc Sống - Châm Ngôn Cuộc Sống (Tái Bản)', 'USA', 2019, 72300, '<p>Tư Duy Nhanh V&agrave; Chậm (T&aacute;i Bản 2017)</p>\r\n\r\n<p>Ch&uacute;ng ta thường tự cho rằng con người l&agrave; sinh vật c&oacute; l&yacute; tr&iacute; mạnh mẽ, khi quyết định hay đ&aacute;nh gi&aacute; vấn đề lu&ocirc;n kĩ lưỡng v&agrave; l&yacute; t&iacute;nh. Nhưng sự thật l&agrave;, d&ugrave; bạn c&oacute; cẩn trọng tới mức n&agrave;o, th&igrave; trong cuộc sống h&agrave;ng ng&agrave;y hay trong vấn đề li&ecirc;n quan đến kinh tế, bạn vẫn c&oacute; những quyết định dựa tr&ecirc;n cảm t&iacute;nh chủ quan của m&igrave;nh. &ldquo;Tư duy nhanh v&agrave; chậm&rdquo;, cuốn s&aacute;ch nổi tiếng tổng hợp tất cả nghi&ecirc;n cứu được tiến h&agrave;nh qua nhiều thập kỷ của nh&agrave; t&acirc;m l&yacute; học từng đạt giải Nobel Kinh tế Daniel Kahneman sẽ cho bạn thấy những sư hợp l&yacute; v&agrave; phi l&yacute; trong tư duy của ch&iacute;nh bạn. Cuốn s&aacute;ch được đ&aacute;nh gi&aacute; l&agrave; &ldquo;kiệt t&aacute;c&rdquo; trong việc thay đổi h&agrave;nh vi của con người, Tư duy nhanh v&agrave; chậm đ&atilde; d&agrave;nh được v&ocirc; số giải thưởng danh gi&aacute;, lọt v&agrave;o Top 11 cuốn s&aacute;ch kinh doanh hấp dẫn nhất năm 2011. Alpha Books đ&atilde; mua bản quyền v&agrave; sẽ xuất bản cuốn s&aacute;ch trong Qu&yacute; 1 năm nay. Tư duy nhanh v&agrave; chậm d&ugrave; l&agrave; cuốn s&aacute;ch c&oacute; t&iacute;nh h&agrave;n l&acirc;m cao nhưng v&ocirc; c&ugrave;ng bổ &iacute;ch với tất cả mọi người v&agrave; đặc biệt rất dễ hiểu v&agrave; vui nhộn.</p>\r\n\r\n<p>Đ&atilde; c&oacute; rất nhiều cuốn s&aacute;ch n&oacute;i về t&iacute;nh hợp l&yacute; v&agrave; phi l&yacute; của con người trong tư duy, trong việc đ&aacute;nh gi&aacute; v&agrave; ra quyết định, nhưng Tư duy nhanh v&agrave; chậm được Tạp ch&iacute; T&agrave;i ch&iacute;nh Mỹ đ&aacute;nh gi&aacute; l&agrave; &ldquo;kiệt t&aacute;c&rdquo;.</p>\r\n\r\n<p>Bạn nghĩ rằng bạn tư duy nhanh, hay chậm? Bạn tư duy v&agrave; suy nghĩ theo lối &ldquo;tr&ocirc;ng mặt bắt h&igrave;nh dong&rdquo;, đ&aacute;nh gi&aacute; mọi vật nhanh ch&oacute;ng bằng cảm quan, quyết định dựa theo cảm x&uacute;c hay tư duy một c&aacute;ch cẩn thận, chậm r&atilde;i nhưng logic hợp l&yacute; về một vấn đề. Tư duy nhanh v&agrave; chậm sẽ đưa ra v&agrave; l&yacute; giải hai hệ thống tư duy t&aacute;c động đến con đường nhận thức của bạn. Kahneman gọi đ&oacute; l&agrave;: hệ thống 1 v&agrave; hệ thống 2. Hệ thống 1, c&ograve;n gọi l&agrave; cơ chế nghĩ nhanh, tự động, thường xuy&ecirc;n được sử dụng, cảm t&iacute;nh, rập khu&ocirc;n v&agrave; tiềm thức. Hệ thống 2, c&ograve;n gọi l&agrave; cơ chế nghĩ chậm, đ&ograve;i hỏi &iacute;t nỗ lực, &iacute;t được sử dụng, d&ugrave;ng logic c&oacute; t&iacute;nh to&aacute;n v&agrave; &yacute; thức. Trong một loạt th&iacute; nghiệm t&acirc;m l&yacute; mang t&iacute;nh ti&ecirc;n phong, Kahneman v&agrave; Tversky chứng minh rằng, con người ch&uacute;ng ta thường đi đến quyết định theo cơ chế nghĩ nhanh hơn l&agrave; ghĩ chậm. Phần lớn nội dung của cuốn s&aacute;ch chỉ ra những sai lầm của con người khi suy nghĩ theo hệ thống 1. Kahneman chứng minh rằng ch&uacute;ng ta tệ hơn những g&igrave; ch&uacute;ng ta tưởng: đ&oacute; l&agrave; ch&uacute;ng ta kh&ocirc;ng biết những g&igrave; ch&uacute;ng ta kh&ocirc;ng biết!</p>\r\n\r\n<p>Bộ S&aacute;ch Jim Rohn: Bốn M&ugrave;a Cuộc Sống - Ch&acirc;m Ng&ocirc;n Cuộc Sống</p>\r\n\r\n<p>&ldquo;Đừng đi trước t&ocirc;i, c&oacute; khi t&ocirc;i sẽ chẳng theo sau,</p>\r\n\r\n<p>Đừng đi sau lưng t&ocirc;i, c&oacute; lẽ t&ocirc;i sẽ kh&ocirc;ng dẫn dắt,</p>\r\n', 'Upload\\1560133517929_93603f06c21498c1aa027072b137f682.jpg', 41, 'Daniel Kahneman', 0, NULL, NULL, 1),
(89, 8, 'Vũ trụ trong vỏ hạt dẻ', 'USA', 2019, 200000, '<p>S&aacute;ch n&oacute;i về thuyết tương đối v&agrave; c&aacute;ch vũ trụ vận h&agrave;nh</p>\r\n', 'Upload\\1560133429049_909ca2322e0903fb5ceaaac41d16e986.jpg', 40, 'Stephen Hawsking', 5, '2018-06-01', '2018-06-09', 1),
(91, 8, 'Tiền Trong Túi Tình Trong Tim', 'NXB Phụ Nữ', 2019, 99000, '<p dir=\"ltr\">Ai m&agrave; bảo m&igrave;nh kh&ocirc;ng gặp vấn đề về tiền bạc đều l&agrave; đang n&oacute;i dối - hoặc c&oacute; thể chỉ đang ảo tưởng m&agrave; th&ocirc;i. Tiền hiện diện khắp nơi trong đời sống song lại hiếm khi được thảo luận s&acirc;u hơn đến nỗi ch&uacute;ng ta thậm ch&iacute; kh&ocirc;ng hiểu được t&aacute;c động của n&oacute; đối với bản th&acirc;n m&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\">C&oacute; mối quan hệ tốt đẹp với tiền bạc l&agrave; một việc kh&ocirc;ng hề dễ d&agrave;ng &ndash; cho d&ugrave; bạn c&oacute; h&agrave;ng triệu đ&ocirc; trong t&agrave;i khoản ng&acirc;n h&agrave;ng hay chỉ c&oacute; v&agrave;i đồng trong v&iacute;. Tại sao ư? V&igrave; như bao mối quan hệ kh&aacute;c, cuộc sống v&agrave; tiền bạc c&oacute; l&uacute;c thăng l&uacute;c trầm, c&oacute; thắt c&oacute; mở, c&oacute; hợp c&oacute; tan. V&agrave; như bao mối quan hệ kh&aacute;c, việc sống hạnh ph&uacute;c với tiền bạc thật sự phụ thuộc v&agrave;o t&igrave;nh y&ecirc;u &ndash; đ&oacute; l&agrave; l&yacute; do t&igrave;nh y&ecirc;u l&agrave; nền tảng trong quyển s&aacute;ch &ldquo;Tiền Trong T&uacute;i &ndash; T&igrave;nh Trong Tim&rdquo; của chuy&ecirc;n gia t&agrave;i ch&iacute;nh Kate Northrup.</p>\r\n\r\n<p dir=\"ltr\">Sau khi l&agrave;m B&agrave;i Kiểm Tra Mức Độ Y&ecirc;u Tiền để xem x&eacute;t t&igrave;nh trạng hiện tại của mối quan hệ với tiền bạc của bạn đang ở mức n&agrave;o &ndash; đ&acirc;u đ&oacute; ở giữa &ldquo;đang bất h&ograve;a&rdquo; v&agrave; &ldquo;t&igrave;nh y&ecirc;u đ&iacute;ch thực!&rdquo; &ndash; Northrup đưa bạn v&agrave;o một chuyến đi vui nhộn để bạn hiểu r&otilde; hơn về bản th&acirc;n v&agrave; t&agrave;i ch&iacute;nh của m&igrave;nh.</p>\r\n\r\n<ul>\r\n	<li>C&aacute;c b&agrave;i tập sẽ từng bước giải quyết cả kh&iacute;a cạnh thực tiễn lẫn kh&iacute;a cạnh cảm x&uacute;c trong đời sống t&agrave;i ch&iacute;nh, gi&uacute;p bạn hiểu được quan điểm của ch&iacute;nh bạn về tiền bạc cũng như về sự gi&agrave;u c&oacute; v&agrave; l&agrave;m thế n&agrave;o để cải thiện n&oacute;.</li>\r\n	<li>Bạn sẽ ph&aacute;t hiện ra những lối tư duy đang ngăn cản bạn thu về những g&igrave; bạn xứng đ&aacute;ng hoặc tiết kiệm những g&igrave; bạn c&oacute; thể tiết kiệm.</li>\r\n	<li>Bạn sẽ học c&aacute;ch lập biểu đồ đời sống t&agrave;i ch&iacute;nh hiện tại v&agrave; kế hoạch đạt đến mục ti&ecirc;u &ndash; d&ugrave; kế hoạch đ&oacute; l&agrave; kiếm đủ tiền sống trong một căn hộ ở Manhattan hay một căn nh&agrave; gỗ trong d&atilde;y n&uacute;i Rocky.</li>\r\n</ul>\r\n\r\n<p>Sử dụng c&aacute;c c&acirc;u chuyện của kh&aacute;ch h&agrave;ng v&agrave; c&acirc;u chuyện từ m&oacute;n nợ 20 ng&agrave;n đ&ocirc; đến tự do t&agrave;i ch&iacute;nh ở tuổi 28 của ch&iacute;nh m&igrave;nh, Northrup đ&oacute;ng vai tr&ograve; l&agrave; người hướng dẫn trong h&agrave;nh tr&igrave;nh t&igrave;m kiếm tự do t&agrave;i ch&iacute;nh của ri&ecirc;ng bạn. C&ocirc; ấy sẽ chỉ cho bạn c&aacute;ch thay đổi niềm tin về tiền bạc, lập ng&acirc;n s&aacute;ch, chi ti&ecirc;u tương xứng với gi&aacute; trị, tho&aacute;t nợ, v&agrave; nhiều hơn thế nữa. T&oacute;m lại, c&ocirc; ấy sẽ gi&uacute;p bạn học c&aacute;ch y&ecirc;u qu&yacute; đồng tiền để từ đ&oacute;, bạn c&oacute; thể y&ecirc;u qu&yacute; cuộc đời m&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\"><strong>Cảm nhận của độc giả:</strong></p>\r\n\r\n<p dir=\"ltr\">&quot;Quyển s&aacute;ch tuyệt đẹp n&agrave;y l&agrave; sự kết hợp ho&agrave;n hảo giữa l&yacute; thuyết v&agrave; thực h&agrave;nh. Bạn cần một c&acirc;u chuyện t&igrave;nh với tiền của ri&ecirc;ng m&igrave;nh, v&agrave; những trang s&aacute;ch n&agrave;y sẽ đưa bạn đến bến bờ hạnh ph&uacute;c.&quot;</p>\r\n\r\n<p dir=\"ltr\">Chris Guillebeau, t&aacute;c giả s&aacute;ch b&aacute;n chạy The $100 Startup</p>\r\n', 'Upload\\1560137420911_a28295cdd21c94048547b3710ad9c9d5.jpg', 0, 'Kate Northrup', 25, '2019-06-10', '2019-06-18', 1),
(92, 3, 'Đời Ngắn Đừng Ngủ Dài', 'NXB KIm đồng', 2016, 15000, '<p><strong>Đời Ngắn Đừng Ngủ D&agrave;i</strong></p>\r\n\r\n<p>&ldquo;Mọi lựa chọn đều gi&aacute; trị. Mọi bước đi đều quan trọng. Cuộc sống vẫn diễn ra theo c&aacute;ch của n&oacute;, kh&ocirc;ng phải theo c&aacute;ch của ta. H&atilde;y ki&ecirc;n nhẫn. Tin tưởng. H&atilde;y giống như người thợ cắt đ&aacute;, đều đặn từng nhịp, ng&agrave;y qua ng&agrave;y. Cuối c&ugrave;ng, một nh&aacute;t cắt duy nhất sẽ ph&aacute; vỡ tảng đ&aacute; v&agrave; lộ ra vi&ecirc;n kim cương. Người tr&agrave;n đầy nhiệt huyết v&agrave; tận t&acirc;m với việc m&igrave;nh l&agrave;m kh&ocirc;ng bao giờ bị chối bỏ. Sự thật l&agrave; thế.&rdquo;</p>\r\n\r\n<p>Bằng những lời chia sẻ thật ngắn gọn, dễ hiểu về những trải nghiệm v&agrave; suy ngẫm trong đời,&nbsp;<strong>Robin Sharma&nbsp;</strong>tiếp tục phong c&aacute;ch viết của &ocirc;ng từ cuốn s&aacute;ch Điều vĩ đại đời thường để mang đến cho độc giả những b&agrave;i viết như lời t&acirc;m sự, vừa ch&acirc;n th&agrave;nh vừa s&acirc;u sắc.</p>\r\n', 'Upload\\1560912316317_xxxxx.jpg', 80, 'Robin Sharm', 5, '2019-06-18', '2019-06-27', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `mathanhvien` int(11) NOT NULL,
  `tendangnhap` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maphanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`mathanhvien`, `tendangnhap`, `matkhau`, `hoten`, `diachi`, `sodienthoai`, `email`, `maphanquyen`) VALUES
(45, 'trung12300', '6c715e1c71fb3a233f979cd34c2c98d9', 'Nguyễn Tây Trung', '243 đường 8,Phường 11, Quận Gò Vấp, Hồ Chí Minh', '0993950185', 'trun55g1998@mail.ru4', 81),
(46, 'miticc06', 'a5af7081a4f75bf5450b2a1b7ada5c36', 'Đặng Minh Tiến', '243 đường 8,Phường 11, Quận Gò Vấp, Hồ Chí Minh', '0902519819', 'dangminhtien06@gmail.com', 2),
(47, 'slamdunk98', '2c0c6011f0934395ee8734f0c599e8ad', 'Nguyễn Huỳnh Thanh Tâm', '243 đường 8,Phường 11, Quận Gò Vấp, Hồ Chí Minh', '0902519878', 'slam.dunk98@gmail.com', 1),
(61, '1', 'c4ca4238a0b923820dcc509a6f75849b', 'Tiến Minh', 'ĐH CNTT', '0358708844', '16521215@gm.uit.edu.vn', 2),
(68, 'tamnht', 'c4ca4238a0b923820dcc509a6f75849b', 'Thanh Tâm', 'Vũ Hán, Trung Quốc', '0909288952', 'tam@gmail.com', 2),
(71, 'miticc06miticc06', 'c4ca4238a0b923820dcc509a6f75849b', 'TIến Minh', 'ajsabdja kdasjb djkas bjka sdl\'a sd lámd', '01235552656', 'aca@gamicl.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `matheloai` int(11) NOT NULL,
  `tentheloai` varchar(200) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`matheloai`, `tentheloai`) VALUES
(3, 'Sách Giáo Khoa'),
(4, 'Thiếu nhi'),
(5, 'Văn học'),
(6, 'Kinh tế'),
(8, 'Tâm lý'),
(9, 'Tiểu sử'),
(13, 'Tôn giáo'),
(14, 'Âm nhạc'),
(15, 'Mỹ thuật'),
(16, 'Thời trang'),
(17, 'Người lớn'),
(18, 'Làm vườn'),
(19, 'Thú nuôi'),
(20, 'Giáo trình');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`mactdonhang`),
  ADD KEY `fk_cthoadon_hoadon1_idx` (`madonhang`),
  ADD KEY `fk_cthoadon_sach1_idx` (`masach`);

--
-- Chỉ mục cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD PRIMARY KEY (`mactphieunhap`),
  ADD KEY `fk_ctphieunhap_phieunhap1_idx` (`maphieunhap`),
  ADD KEY `fk_ctphieunhap_sach1_idx` (`masach`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `fk_hoadon_phiship1_idx` (`maphiship`),
  ADD KEY `fk_hoadon_thanhvien1_idx` (`mathanhvien`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`manhacungcap`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`maphanquyen`);

--
-- Chỉ mục cho bảng `phieuchi`
--
ALTER TABLE `phieuchi`
  ADD PRIMARY KEY (`maphieuchi`),
  ADD KEY `fk_phieuchi_nhacungcap1_idx` (`manhacungcap`),
  ADD KEY `fk_phieuchi_thanhvien1_idx` (`mathanhvien`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`),
  ADD KEY `fk_phieunhap_nhacungcap_idx` (`manhacungcap`),
  ADD KEY `fk_phieunhap_thanhvien1_idx` (`mathanhvien`);

--
-- Chỉ mục cho bảng `phiship`
--
ALTER TABLE `phiship`
  ADD PRIMARY KEY (`maphiship`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`masach`),
  ADD KEY `fk_sach_theloai1_idx` (`matheloai`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`mathanhvien`),
  ADD UNIQUE KEY `tendangnhap_UNIQUE` (`tendangnhap`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_thanhvien_phanquyen1_idx` (`maphanquyen`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`matheloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  MODIFY `mactdonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  MODIFY `mactphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `manhacungcap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `maphanquyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `phieuchi`
--
ALTER TABLE `phieuchi`
  MODIFY `maphieuchi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `phiship`
--
ALTER TABLE `phiship`
  MODIFY `maphiship` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `masach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `mathanhvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `matheloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD CONSTRAINT `fk_cthoadon_hoadon1` FOREIGN KEY (`madonhang`) REFERENCES `donhang` (`madonhang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cthoadon_sach1` FOREIGN KEY (`masach`) REFERENCES `sach` (`masach`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD CONSTRAINT `fk_ctphieunhap_phieunhap1` FOREIGN KEY (`maphieunhap`) REFERENCES `phieunhap` (`maphieunhap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ctphieunhap_sach1` FOREIGN KEY (`masach`) REFERENCES `sach` (`masach`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_hoadon_phiship1` FOREIGN KEY (`maphiship`) REFERENCES `phiship` (`maphiship`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hoadon_thanhvien1` FOREIGN KEY (`mathanhvien`) REFERENCES `thanhvien` (`mathanhvien`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieuchi`
--
ALTER TABLE `phieuchi`
  ADD CONSTRAINT `fk_phieuchi_nhacungcap1` FOREIGN KEY (`manhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_phieuchi_thanhvien1` FOREIGN KEY (`mathanhvien`) REFERENCES `thanhvien` (`mathanhvien`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_phieunhap_nhacungcap` FOREIGN KEY (`manhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_phieunhap_thanhvien1` FOREIGN KEY (`mathanhvien`) REFERENCES `thanhvien` (`mathanhvien`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `fk_sach_theloai1` FOREIGN KEY (`matheloai`) REFERENCES `theloai` (`matheloai`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD CONSTRAINT `fk_thanhvien_phanquyen1` FOREIGN KEY (`maphanquyen`) REFERENCES `phanquyen` (`maphanquyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
