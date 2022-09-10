CREATE DATABASE QL_BanTra
USE QL_BanTra
GO

CREATE TABLE KhachHang
(
  HoTen nvarchar(MAX),
  TaiKhoan nchar(50) PRIMARY KEY not null,
  MatKhau nchar(50),
  DienThoai nchar(10),
  GioiTinh nvarchar(10),
  DiaChi nvarchar(MAX),
  Email nchar(50)
)

CREATE TABLE Loai
(
  MaLoai nchar(10) PRIMARY KEY not null,
  TenLoai nvarchar(MAX)
)

CREATE TABLE SanPham
(
  MaSP int PRIMARY KEY not null,
  TenSP nvarchar(MAX),
  DuongDan nvarchar(MAX),
  KhoiLuong nchar(10),
  Gia int,
  MoTa nvarchar(MAX),
  MaLoai nchar(10)
  CONSTRAINT FK_SanPham_Loai FOREIGN KEY(MaLoai) REFERENCES Loai(MaLoai)
)





INSERT INTO KhachHang
VALUES('Admin', 'admin', 'admin', NULL, NULL, NULL, NULL)


INSERT INTO Loai
VALUES 
('L01',N'Cổ Điển'),
('L02',N'Thảo Mộc'),
('L03',N'Phiên Bản Đặc Biệt')


INSERT INTO SanPham
VALUES
(01, N'Trà Xám Bá Tước', 'XamBaTuocCoDien.PNG' , '250Gr',150000  , N'Trà xám bá tước là thức uống rất phổ biến bởi hương thơm tinh tế, mùi vị dễ chịu. Bên cạnh đó, loại trà này còn đem lại nhiều công dụng tốt cho sức khỏe.', 'L01 '),
(02, N'Trà Hoa Oải Hương', 'HoaOaiHuongCoDien.PNG' , '250Gr', 170000 , N'Hoa Lavender, còn gọi là hoa Oải hương, không chỉ được dùng để trang trí, mùi hương của nó được đặt trong tủ quần áo có thể lưu giữ được đến hàng tháng. Lavender (Oải hương) còn được dùng để làm nước hoa, tinh dầu, sữa tắm,… Hơn thế nữa, Oải hương còn có tác dụng như một loại thuốc điều trị bệnh đau nửa đầu. Do có tác dụng bổ thần kinh nên oải hương thường được dùng làm trà như là 1 loại thảo dược điều trị bệnh đau đầu, suy nhược, cảm nắng. ', 'L01 '),
(03, N'Trà Hoa Dâm Bụt', 'HoaDamButThaoMoc.PNG' , '250Gr', 170000 , N'Thành phần dinh dưỡng trong hoa dâm bụt rất giàu vitamin A, B1, C, D, E, F và các axit hữu cơ khác. Những chất dinh dưỡng này có khả năng kháng viêm, kháng nấm, kháng khuẩn, tăng cường chức năng hệ tiêu hóa, ức chế quá trình hình thành sỏi tiết niệu, tăng cường và nâng đỡ chức năng gan, mật. ', 'L02 '),
(04, N'Trà Lá Mâm Xôi', 'LaMamXoiThaoMoc.PNG' , '250Gr' , 180000, N'Trà lá mâm xôi là loại thực phẩm tốt cho phụ nữ mang thai. Có nhiều bằng chứng khoa học cho thấy chúng có tác dụng làm rút ngắn thời gian chuyển dạ và biến chứng sản khoa. Ngoài ra, trà lá mâm xôi đỏ còn là thực phẩm giàu vitamin và khoáng chất. ', 'L02 '),
(05, N'Trà Hoa Cúc', 'TraHoaCucThaoMoc.PNG' , '250Gr' , 180000, N'Đây là một loại trà thảo mộc có thành phần chính từ hoa cúc khô. Theo nhiều nghiên cứu, hoa cúc dùng làm trà có tên khoa học là Chrysanthemum Indicum, họ Asteraceae, có vị đắng, cay, tính mát, tác dụng thanh nhiệt, giải độc, bổ não và chữa suy nhược thần kinh. ', 'L02 '),
(06, N'Trà Hương Thảo Đặc Biệt', 'HuongThaoDacBietThaoMoc.PNG' , '250Gr' , 130000, N'Trà hương thảo là một thức uống thân thiện với sức khỏe nhờ vào các thành phần lành tính hữu ích, đem đến nhiều tác dụng tuyệt vời. Không chỉ được dùng như một loại gia vị trong nhà bếp, mà hương thảo còn có thể được dùng như một loại trà để bạn thưởng thức sau một ngày dài mỏi mệt ', 'L02 '),
(07, N'Trà Hạnh Nhân', 'HanhNhanDacBiet.PNG' , '250Gr' , 300000, N'Bạn hãy thêm trà này vào danh sách đồ uống trong những ngày nghỉ lễ của bạn bởi nó đậm và điệu đà. Trà đen được kết hợp với hương của socola, các hạt nướng từ mảnh quả ca cao và hạnh nhân gợi nhớ tới mùi gỗ Thích. Nước trà có màu hổ phách với vị trà nhuần nhuyễn, đậm đà và ngọt thanh. Bạn sẽ rất hài lòng khi thưởng thức trà bên bếp lửa đêm đông. Đây không những là món đồ uống tuyệt vời vào dịp lễ giáng sinh mà còn là món quà tặng rất ý nghĩa cho bạn bè và người thân. ', 'L03 '),
(08, N'Trà Xanh Hương Bạc Hà', 'HonHopBacHa&MelissaDacBiet.PNG' , '250Gr' , 300000, N'Thành phần tự nhiên của trà xanh Trung Quốc và các loại thảo mộc thơm - bạc hà và chanh. Green Melissa Hương vị dễ chịu, tinh tế của trà xanh kết hợp với nguyên liệu tươi mát của bạc hà và vỏ chanh tự nhiên của dầu chanh. ', 'L03 '),
(09, N'Trà Hoa Hồng', 'HoaHongDacBiet.PNG' , '250Gr' , 270000, N'Hoa hồng không chỉ có tác dụng trang trí mà còn có nhiều công dụng rất tốt cho sức khỏe. Với nhiều vitamin C và khoáng chất cần thiết, loại trà hoa này chính là một thảo dược có thể mang lại cho bạn nhiều lợi ích.', 'L03 ')

