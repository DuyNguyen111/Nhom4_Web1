-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th9 26, 2018 lúc 09:33 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'Apple', ''),
(2, 'Xiaomi', ''),
(3, 'Samsung ', ''),
(4, 'OPPO', ''),
(5, 'SONY', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `manu_ID` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `name`, `price`, `image`, `description`, `manu_ID`, `type_ID`) VALUES
(1, 'Điện thoại iPhone 6s Plus 32GB', 12990000, 'iphone6s.jpg', 'Điện thoại iPhone 6s Plus 32 GB được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6 Plus), camera cho tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt', 1, 1),
(2, 'Điện thoại Xiaomi Redmi Note 5', 5690000, 'xiaominote5.jpg', 'Thiết kế quen thuộc\r\nChiếc điện thoại Xiaomi này sở hữu ngôn ngữ thiết kế khá quen thuộc với khung viền kim loại cùng hai dải nhựa hỗ trợ thu phát sóng tốt hơn.', 2, 1),
(3, 'Điện thoại Samsung Galaxy A6 (2018)', 5490000, 'samsung.jpg', 'Samsung Galaxy A6 (2018) là chiếc smartphone tầm trung vừa được ra mắt của Samsung bên cạnh chiếc Samsung Galaxy A6+ (2018).\r\nThiết kế kim loại nguyên khối\r\nMáy được hoàn thiện từ kim loại nguyên khối, kết hợp với mặt kính cong nhẹ 2.5D cho cảm giác vuốt chạm thoải mái hơn.', 3, 1),
(4, 'Laptop Apple Macbook Pro Touch MR9Q2SA/A i5 2.3GHz/8GB/256GB (2018)', 15490000, 'laptop01.jpg', 'Samsung Galaxy A6 (2018) là chiếc smartphone tầm trung vừa được ra mắt của Samsung bên cạnh chiếc Samsung Galaxy A6+ (2018).\r\nThiết kế kim loại nguyên khối\r\nMáy được hoàn thiện từ kim loại nguyên khối, kết hợp với mặt kính cong nhẹ 2.5D cho cảm giác vuốt chạm thoải mái hơn.', 1, 2),
(5, 'Điện thoại OPPO A3s', 3690000, 'oppo01.jpg', 'OPPO A3s 16GB là một chiếc smartphone giá rẻ hiếm hoi trên thị trường sở hữu những tính năng khá hấp dẫn trong năm 2018 đó là camera kép ở mặt lưng và màn hình tai thỏ ở mặt trước.', 4, 1),
(6, 'Điện thoại OPPO A83 2018 16GB', 3690000, 'oppo02.jpg', 'OPPO A83 16GB 2018 (phiên bản không tai nghe và ốp) là chiếc smartphone dòng A đầu tiên sở hữu cho mình màn hình tràn viền và cùng với đó là camera với khả năng làm đẹp bằng AI nổi tiếng của OPPO.', 4, 1),
(7, 'Sony MDR - ZX110AP', 490000, 'tainghe01.jpg', ' Ứng dụng nghe nhạc mặc định: ngừng/chơi nhạc, ấn nút tròn 2 lần để chuyển bài, nhận cuộc gọi.\r\n- Ứng dụng nhạc online: thực hiện tương tự nhưng bạn không thể ấn để chuyển bài.', 5, 3),
(8, 'Tai nghe chụp tai Sony MDR-XB550AP\r\n', 990000, 'tainghe02.jpg', 'Bạn sẽ cảm nhận sự khác biệt khi trải nghiệm qua Sony MDR-XB550AP khi tai nghe có thể xử lý nốt nhạc cho dù nhỏ nhất vẫn có thể nghe được, như bạn đang được ngồi trực tiếp trong phòng thu âm.\r\n\r\n', 5, 3),
(9, 'Điện thoại Sony Xperia XZ Dual', 9900000, 'dienthoaisony01.jpg', 'Sony Xperia XZ Dual với thiết kế cực đẹp, cùng camera chất lượng hơn, nhiều tính năng tiện ích hơn.\r\nThiết kế sang trọng\r\nCải tiến hơn so với thiết kế truyền thống của dòng điện thoại Sony, Xperia XZ mang trên mình diện mạo mới - đẹp hơn, sang trọng hơn. ', 5, 1),
(10, 'Tai nghe EP Sony MDR-XB55AP\r\n', 799000, 'tainghesony02.jpg', 'Tai nghe Sony MDR-XB55AP có thể mang đến cho bạn những bài hát với bass sâu rất tốt, bạn có thể nghe thử những bài như Believer, Thunder... để cảm nhận.\r\n\r\nBộ màng loa Neodymium 12 mm với độ nhạy cao lên đến 112dB/mW, cho âm thanh mạnh mẽ mà không bị méo khi mở mức âm lượng cao.\r\n\r\n', 5, 3),
(11, 'Điện thoại iPhone X 256GB Silver', 34790000, 'iphoneX.jpg', 'Là phiên bản kỉ niệm của Apple nhân dịp 10 năm ra đời iPhone đầu tiên, iPhone X đã chính thức ra mắt vào ngày 12/9 với nhiều tính năng đột phá như màn hình tai thỏ Super Retina cực mỏng, nhận diện khuôn mặt Face ID, sạc pin nhanh hay sạc không dây cao cấp.', 1, 1),
(12, 'Điện thoại iPhone 8 256GB', 25790000, 'iphone8.jpg', 'Theo truyền thống, tiếp sau chiếc iPhone 7 thì Apple sẽ cho ra mắt chiếc iPhone 7s nhưng năm nay \"táo khuyết\" đã tạo ra ngoại lệ khi giới thiệu đến người dùng chiếc iPhone 8 không có nhiều thay đổi về ngoại hình nhưng có sự cải tiến về hiệu năng.', 1, 1),
(13, 'Tai nghe Bluetooth AirPods Apple MMEF2', 4990000, 'taingheiphone.jpg', 'Airpods sở hữu thiết kế thời trang và nhỏ gọn, trọng lượng cũng rất nhẹ, mọi chi tiết đều được hoàn thiện, cải thiện thêm nhiều tính năng độc đáo.', 1, 3),
(14, 'Điện thoại Samsung Galaxy S9+ 128GB', 24490000, 'dienthoaisamsung01.jpg', '\r\nSamsung Galaxy S9 Plus 128Gb, siêu phẩm smartphone hàng đầu trong thế giới Android đã ra mắt với màn hình vô cực, camera chuyên nghiệp như máy ảnh và hàng loạt những tính năng cao cấp đầy hấp dẫn.', 3, 1),
(15, 'Điện thoại Samsung Galaxy Note 8', 19990000, 'dienthoaisamsung02.jpg', 'Galaxy Note 8 là niềm hy vọng vực lại dòng Note danh tiếng của điện thoại Samsung với diện mạo nam tính, sang trọng. Máy trang bị camera kép xóa phông thời thượng, màn hình vô cực như trên S8 Plus, bút S Pen cùng nhiều tính năng mới và nhiều công nghệ được ưu ái.', 3, 1),
(16, 'Điện thoại Samsung Galaxy J8', 6290000, 'dienthoaisamsung03.jpg', 'Sau nhiều thông tin rò rỉ thì Samsung Galaxy J8 đã chính thức được ra mắt với nhiều trang bị cao cấp với màn hình tràn viền, camera kép xóa phông cùng một hiệu năng ổn định.', 3, 1),
(17, 'Tai nghe nhét trong Samsung EG920B\r\n', 280000, 'tainghesamsung01.jpg', 'Các phím chức năng được tích hợp trên dây, thuận lợi cho người dùng.\r\nMicro tích hợp có khả năng lọc tiếng ồn.\r\nĐệm tai nghe êm ái, dễ chịu khi sử dụng thời gian dài.', 3, 3),
(18, 'Điện thoại Xiaomi Mi A2 Lite', 4390000, 'xiaomi02.jpg', 'Kế thừa sự thành công từ người đàn anh Xiaomi Mi A1 thì Xiaomi tiếp tục giới thiệu tới người dùng phiên bản kế nhiệm là Xiaomi Mi A2 Lite và Xiaomi Mi A2 với nhiều cải tiến đáng giá.', 2, 1),
(19, 'Tai nghe dây Xiaomi In-Ear Pro QTER01JY\r\n', 500000, 'tainghexiaomi.jpg', 'Thiết kế đơn giản, sang trọng\r\nTai nghe Xiaomi In-Ear Pro QTER01JY có thiết kế đơn giản nhưng không kém phần sang trọng. Màng tai nghe được hoàn thiện từ kim loại cao cấp mang lại chất âm tốt.\r\n\r\nNgoài ra, dây cũng được làm từ dây cao su chống rối thuận tiện trong quá trình sử dụng.', 2, 3),
(20, 'Loa Bluetooth Xiaomi MI BASIC 2 ', 459000, 'loa01.jpg', 'Loa Bluetooth Xiaomi Mi Bluetooth #Speaker #Basic2 #FXR4066GL mang một hình ảnh sang trọng, hiện đại, tương đương với một hộp đựng bút chì thông thường, phù hợp với người dùng thường xuyên phải đi xa đang muốn tìm kiếm cho mình một chiếc loa nhỏ gọn. Mi Bluetooth Speaker Basic 2 chỉ mỏng 25,5mm và nặng chỉ 237g. #Gọn nhẹ, dễ mang theo một tay hoặc bỏ trong túi.', 2, 5),
(21, 'LOA OPPO SONICA WI-FI', 799000, 'loa02.jpg', 'Loa Wireless Hi-Res băng tần kép 2.4/5GHz chuẩn 802.11ac\r\nKết nối AirPlay cho phép truyền nhạc không dây 24bit/192kHz với các định dạng FLAC, WAV và ALAC\r\nLoa Sonica cũng có thể tự động chơi nhạc lưu ở ổ cứng di động hay ổ NAS, dịch vụ trực tuyến TIDAL, Spotify\r\nCó thể sử dụng như một phần của hệ thống loa đa phòng multiroom', 4, 5),
(22, 'Laptop Xiaomi Mi Notebook Pro JYU4036CN', 22990000, 'notebook01.jpg', 'aptop Xiaomi Mi Notebook Pro JYU4036CN ngoài những tính năng mang lại những trải nghiệm tuyệt vời khi giải trí và làm việc trên Xiaomi Mi Notebook Pro với thiết kế có độ mỏng chỉ 15.9mm. Máy trang bị vỏ magie nguyên khối cứng cáp được thiết kế các cạnh được bo tròn mềm mại kết hợp với trọng lượng khá nhẹ chỉ 1.95kg, giúp mang lại sự thuận tiện khi cầm nắm cũng như giúp người dùng có thể dễ dàng bỏ máy vào trong túi xách, balo và mang theo bên mình để làm việc mà không cảm thấy vướng víu khó chịu.', 2, 4),
(23, 'Điện thoại OPPO F9 6GB', 8490000, 'dienthoaioppo04.jpg', 'Là chiếc điện thoại OPPO được nâng cấp cấu hình, cụ thể là RAM lên tới 6 GB, OPPO F9 6GB còn trang bị nhiều tính năng đột phá như sở hữu công nghệ sạc VOOC mới nhất, mặt lưng chuyển màu độc đáo, màn hình tràn viền giọt nước và camera chụp chân dung tích hợp trí tuệ nhân tạo A.I hoàn hảo.', 4, 1),
(24, 'Laptop Apple Macbook 12\" MNYK2SA/A Core M 1.2GHz/8GB/256GB (2017)', 33400000, 'notebook02.jpg', 'Apple Macbook 12\" MNYK2SA/A (2017) là một thiết bị sẽ phù hợp với những người làm công việc văn phòng, không yêu cầu một thiết bị quá mạnh mẽ nhưng nhỏ gọn, dễ dàng di chuyển cùng một thời gian sử dụng pin ấn tượng.', 1, 2),
(25, 'Điện thoại OPPO Find X', 20990000, 'dienthoiaoppo04.jpg', 'OPPO Find X tạo nên một cú hích lớn trong làng smartphone hiện nay khi mang trong mình nhiều tính năng đột phá mà nổi bật nhất đến từ thiết kế sáng tạo và một hiệu năng đỉnh cao.', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prototypes`
--

DROP TABLE IF EXISTS `prototypes`;
CREATE TABLE IF NOT EXISTS `prototypes` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `prototypes`
--

INSERT INTO `prototypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'Smartphone', ''),
(2, 'Laptop', ''),
(3, 'Headphone', ''),
(4, 'Notebook', ''),
(5, 'Speaker', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
