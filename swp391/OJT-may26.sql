DROP DATABASE OJTMay26Management;
GO

CREATE DATABASE OJTMay26Management
USE OJTMay26Management
GO

SET DATEFORMAT dmy

CREATE TABLE tblRoles(
roleID NVARCHAR(10) NOT NULL,
roleName NVARCHAR(30) NOT NULL,
CONSTRAINT PK_TBLROLES PRIMARY KEY(roleID)
)

CREATE TABLE tblUsers(
userID NVARCHAR(10) NOT NULL,
password NVARCHAR(30) NOT NULL,
fullName NVARCHAR(50) NOT NULL,
email NVARCHAR(30) NULL,
address NVARCHAR(50) NOT NULL,
roleID NVARCHAR(10) NOT NULL,
image NVARCHAR(300) NULL,
phone NVARCHAR(30) NULL,
status BIT NULL,
CONSTRAINT PK_TBLUSERS PRIMARY KEY CLUSTERED (userID ASC) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, 
	IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
ALTER TABLE tblUsers ADD CONSTRAINT FK01_TBLUSERS FOREIGN KEY(roleID) REFERENCES tblRoles(roleID)


CREATE TABLE tblNotification(
notificationID NVARCHAR(10) NOT NULL,
text NVARCHAR(50) NOT NULL,
userID NVARCHAR(10) NOT NULL,
CONSTRAINT PK_TBLNOTIFICATION PRIMARY KEY(notificationID)
)
ALTER TABLE tblNotification ADD CONSTRAINT FK01_TBLNOTIFICATION FOREIGN KEY(userID) REFERENCES tblUsers(userID)

CREATE TABLE tblAdmin(
adminID NVARCHAR(10) NOT NULL,
CONSTRAINT PK_TBLADMIN PRIMARY KEY(adminID)
)
ALTER TABLE tblAdmin ADD CONSTRAINT FK01_TBLADMIN FOREIGN KEY(adminID) REFERENCES tblUsers(userID)

CREATE TABLE tblRecruiters(
recruiterID NVARCHAR(10) NOT NULL,
website NVARCHAR(50) NOT NULL,
CONSTRAINT PK_TBLRECRUITERS PRIMARY KEY(recruiterID)
)
ALTER TABLE tblRecruiters ADD CONSTRAINT FK01_TBLRECRUITERS FOREIGN KEY(recruiterID) REFERENCES tblUsers(userID)

CREATE TABLE tblMajor(
majorID NVARCHAR(10) NOT NULL,
majorName NVARCHAR(30) NOT NULL,
CONSTRAINT PK_TBLMAJOR PRIMARY KEY(majorID)
)

CREATE TABLE tblJob(
jobID NVARCHAR(10) NOT NULL,
title NVARCHAR(50) NOT NULL,
price NVARCHAR(30) NOT NULL,
description NVARCHAR(50) NOT NULL,
duration NVARCHAR(50) NOT NULL,
startDate DATE NULL,
bussinessID NVARCHAR(10) NOT NULL,
CONSTRAINT PK_TBLJOB PRIMARY KEY(jobID)
)
ALTER TABLE tblJob ADD CONSTRAINT FK01_TBLJOB FOREIGN KEY(bussinessID) REFERENCES tblRecruiters(recruiterID)

CREATE TABLE tblRequestMajor(
requestMajorID NVARCHAR(10) NOT NULL,
majorID NVARCHAR(10) NOT NULL,
jobID NVARCHAR(10) NOT NULL,
CONSTRAINT PK_TBLRQMAJOR PRIMARY KEY(requestMajorID)
)
ALTER TABLE tblRequestMajor ADD CONSTRAINT FK01_TBLRQMAJOR FOREIGN KEY(majorID) REFERENCES tblMajor(majorID)
ALTER TABLE tblRequestMajor ADD CONSTRAINT FK02_TBLRQMAJOR FOREIGN KEY(jobID) REFERENCES tblJob(jobID)

CREATE TABLE tblStudents(
studentID NVARCHAR(10) NOT NULL,
name NVARCHAR(50) NOT NULL,
bio NVARCHAR(50) NOT NULL,
majorID NVARCHAR(10) NOT NULL,
certificate NVARCHAR(50) NOT NULL,
CV NVARCHAR(50) NOT NULL,
currentTermNo INT NOT NULL,
CONSTRAINT PK_TBLSTUDENTS PRIMARY KEY(studentID)
)
ALTER TABLE tblStudents ADD CONSTRAINT FK01_TBLSTUDENTS FOREIGN KEY(studentID) REFERENCES tblUsers(userID)
ALTER TABLE tblStudents ADD CONSTRAINT FK02_TBLSTUDENTS FOREIGN KEY(majorID) REFERENCES tblMajor(majorID)

CREATE TABLE tblFeedback(
feedbackID NVARCHAR(10) NOT NULL,
content NVARCHAR(50) NOT NULL,
rating NVARCHAR(10) NOT NULL,
userID NVARCHAR(10) NOT NULL,
bussinessID NVARCHAR(10) NOT NULL,
status BIT NULL,
CONSTRAINT PK_TBLFEEDBACK PRIMARY KEY(feedbackID)
)
ALTER TABLE tblFeedback ADD CONSTRAINT FK01_TBLFEEDBACK FOREIGN KEY(userID) REFERENCES tblStudents(studentID)
ALTER TABLE tblFeedback ADD CONSTRAINT FK02_TBLFEEDBACK FOREIGN KEY(bussinessID) REFERENCES tblRecruiters(recruiterID)

CREATE TABLE tblJobApplication(
jobApplicationID NVARCHAR(10) NOT NULL,
studentID NVARCHAR(10) NOT NULL,
jobID NVARCHAR(10) NOT NULL,
status BIT NULL,
CONSTRAINT PK_TBLJOBAPPLICATION PRIMARY KEY(jobApplicationID)
)
ALTER TABLE tblJobApplication ADD CONSTRAINT FK01_TBLJOBAPPLICATION FOREIGN KEY(studentID) REFERENCES tblStudents(studentID)
ALTER TABLE tblJobApplication ADD CONSTRAINT FK02_TBLJOBAPPLICATION FOREIGN KEY(jobID) REFERENCES tblJob(jobID)

CREATE TABLE tblPostType(
postTypeID NVARCHAR(10) NOT NULL,
name NVARCHAR(50) NOT NULL,
CONSTRAINT PK_TBLPOSTTYPE PRIMARY KEY(postTypeID)
)

CREATE TABLE tblPosts(
postID NVARCHAR(10) NOT NULL,
image NVARCHAR(300) NOT NULL,
content NVARCHAR(500) NOT NULL,
postTypeID NVARCHAR(10) NOT NULL,
adminID NVARCHAR(10) NOT NULL,
creatingDate DATE NULL,
CONSTRAINT PK_TBLPOSTS PRIMARY KEY(postID)
)
ALTER TABLE tblPosts ADD CONSTRAINT FK01_TBLPOSTS FOREIGN KEY(postTypeID) REFERENCES tblPostType(postTypeID)
ALTER TABLE tblPosts ADD CONSTRAINT FK02_TBLPOSTS FOREIGN KEY(adminID) REFERENCES tblAdmin(adminID)

CREATE TABLE tblContract(
contractID NVARCHAR(10) NOT NULL,
duration NVARCHAR(50) NOT NULL,
status BIT NULL,
recruiterID NVARCHAR(10) NOT NULL,
studentID NVARCHAR(10) NOT NULL,
CONSTRAINT PK_TBLCONTRACT PRIMARY KEY(contractID)
)
ALTER TABLE tblContract ADD CONSTRAINT FK01_TBLCONTRACT FOREIGN KEY(recruiterID) REFERENCES tblRecruiters(recruiterID)
ALTER TABLE tblContract ADD CONSTRAINT FK02_TBLCONTRACT FOREIGN KEY(studentID) REFERENCES tblStudents(studentID)

INSERT tblRoles(roleID, roleName) VALUES(N'AD', N'Admin')
INSERT tblRoles(roleID, roleName) VALUES(N'ST', N'Student')
INSERT tblRoles(roleID, roleName) VALUES(N'RE', N'Recruiter')

INSERT [dbo].[tblUsers] ([userID], [password], [fullName], [email], [address], [roleID], [image], [phone], [status]) 
	VALUES (N'AD', N'1', N'Trần Phương Thái', N'adne@gmail.com', N'Biên Hoà', N'AD', 
	N'https://sieupet.com/sites/default/files/hinh_anh_meo_dep.jpg', N'123456', 1)
INSERT [dbo].[tblUsers] ([userID], [password], [fullName], [email], [address], [roleID], [image], [phone], [status]) 
	VALUES (N'RE', N'1', N'Nguyễn Quốc Sỹ', N'recruiterne@gmail.com', N'Vũng Tàu', N'RE', 
	N'https://sieupet.com/sites/default/files/hinh_anh_meo_dep2.jpg', N'123457', 1)
INSERT [dbo].[tblUsers] ([userID], [password], [fullName], [email], [address], [roleID], [image], [phone], [status]) 
	VALUES (N'SE123456', N'1', N'Hoàng Nhã Thy', N'studentne@gmail.com', N'Long Thành', N'ST', 
	N'https://i.pinimg.com/736x/cf/65/00/cf6500a347a0d46668895439a9d12dff.jpg', N'123458', 1)

INSERT [dbo].[tblNotification] ([notificationID], [text], [userID])
	VALUES (N'TBAD', N'hehe', N'AD')
INSERT [dbo].[tblNotification] ([notificationID], [text], [userID])
	VALUES (N'TBRE', N'hehe', N'RE')
INSERT [dbo].[tblNotification] ([notificationID], [text], [userID])
	VALUES (N'TBST', N'hehe', N'SE123456')

INSERT tblAdmin(adminID) VALUES(N'AD')

INSERT tblRecruiters(recruiterID, website) VALUES(N'RE', N'recruiter.com')

INSERT tblMajor(majorID, majorName)
	VALUES ('SE', N'Kỹ thuật phần mềm'),('IA', N'An toàn thông tin'),
	('AI', N'Trí tuệ nhân tạo'),('IS', N'Hệ thống thông tin'),
	('IoT', N'Internet vạn vật'),('GD', N'Thiết kế đồ họa'),
	('MC', N'Truyền thông đa phương tiện'),('BA', N'Quản trị kinh doanh'),
	('DM', N'Digital Marketing'),('IB', N'Kinh doanh quốc tế'),
	('HM', N'Quản trị khách sạn'),('HT', N'Quản trị du lịch và lữ hành'),
	('EL', N'Ngôn ngữ Anh'),('JP', N'Ngôn ngữ Nhật'),('KR', N'Ngôn ngữ Hàn')

INSERT [dbo].[tblJob] ([jobID], [title], [price], [description], [duration], [startDate], [bussinessID]) 
	VALUES (N'1', N'tester', N'1000', N'tester', N'6 months', CAST(N'2022-03-10' AS Date), N'RE')
INSERT [dbo].[tblJob] ([jobID], [title], [price], [description], [duration], [startDate], [bussinessID]) 
	VALUES (N'2', N'BA', N'1500', N'BA', N'6 months', CAST(N'2022-03-10' AS Date), N'RE')
INSERT [dbo].[tblJob] ([jobID], [title], [price], [description], [duration], [startDate], [bussinessID]) 
	VALUES (N'3', N'dev', N'2000', N'dev', N'6 months', CAST(N'2022-03-10' AS Date), N'RE')

INSERT [dbo].[tblRequestMajor] ([requestMajorID], [majorID], [jobID])
	VALUES (N'RQ1', N'SE', N'1')
INSERT [dbo].[tblRequestMajor] ([requestMajorID], [majorID], [jobID])
	VALUES (N'RQ2', N'IA', N'2')
INSERT [dbo].[tblRequestMajor] ([requestMajorID], [majorID], [jobID])
	VALUES (N'RQ3', N'JP', N'3')

INSERT [dbo].[tblStudents] ([studentID], [name], [bio], [majorID], [certificate], [CV], [currentTermNo])
	VALUES (N'SE123456', N'Nhã Thy', N'cutexinkgai', N'SE', N'coursera', N'xink', '5')

INSERT [dbo].[tblFeedback] ([feedbackID], [content], [rating], [userID], [bussinessID], [status])
	VALUES (N'1', N'good', N'9/10', N'SE123456', N'RE', '1')

INSERT [dbo].[tblJobApplication] ([jobApplicationID], [studentID], [jobID], [status])
	VALUES (N'1', N'SE123456', N'2', N'1')

INSERT tblPostType(postTypeID, name)
	VALUES ('IN1', N'Giới thiệu về đại học FPT'), ('IN2', N'Giới thiệu các ngành đào tạo'), ('IN3', N'Giới thiệu các đối tác'),
	('AC1', N'Tin hoạt động quan hệ doanh nghiệp'), ('AC2', N'Tin hoạt động về hoạt động hướng nghiệp'), ('AC3', N'Tin hoạt động tham quan doanh nghiệp'),
	('AC4', N'Tin hoạt động sinh viên khởi nghiệp'), ('AC5', N'Tin hoạt động về hoạt động cộng đồng'),
	('BS1', N'Giới thiệu chương trình OJT'), ('BS2', N'Quy định OJT'), ('BS3', N'Thông báo OJT'),  ('BS4', N'Đăng ký OJT')

INSERT [dbo].[tblContract] ([contractID], [duration], [status], [recruiterID], [studentID])
	VALUES (N'CT1', N'3 months', N'1', N'RE', N'SE123456')

INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P1', N'https://career-hcmuni.fpt.edu.vn/images/2020/11/YS2WRNMdfmIpTmoc.jpg', 
	N'Trường Đại học FPT chính thức thành lập ngày 08/09/2006 theo quyết định số 208/2006/QĐ-TTg của Thủ tướng Chính phủ. 
	Thời điểm đó, Đại học FPT là trường đại học đầu tiên của Việt Nam do một doanh nghiệp thành lập với 100% vốn đầu tư từ 
	Công ty Cổ phần FPT - tập đoàn tiên phong trong lĩnh vực Công nghệ thông tin của Việt Nam.', N'IN1', N'AD', CAST(N'2022-03-11' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P2', N'https://career-hcmuni.fpt.edu.vn/images/2020/11/zzPbnidRctubp3Mm.jpg', 
	N'Chương trình đào tạo của trường Đại học FPT được thiết kế dựa trên sự tham vấn của chuyên gia, chú trọng thực hành, 
	phù hợp với nhu cầu mà nhà tuyển dụng tìm kiếm ở nguồn nhân lực thế hệ mới.', N'IN2', N'AD', CAST(N'2022-03-11' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P3', N'https://daihoc.fpt.edu.vn/media/2016/12/3-fpt-hcm.jpg', 
	N'Thông tin đang được cập nhật.', N'IN3', N'AD', CAST(N'2022-03-11' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P4', N'https://career-hcmuni.fpt.edu.vn/images/2022/05/Tw5mKafsEBCmHjyo.jpg', 
	N'Sáng ngày 18.5.2022, Ông Huỳnh Anh Dũng - Cố vấn chiến lược, đại diện Công ty TNHH Cloud ACE đã đến thăm và làm việc tại campus ĐH FPT HCM. 
	Đón tiêp doanh nghiệp có Thầy Hồ Hải – Chủ nhiệm Bộ môn An toàn thông tin và Thầy Nguyễn Trần Phước Bảo – Trưởng phòng Quan hệ Doanh nghiệp.', 
	N'AC1', N'AD', CAST(N'2022-05-19' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P5', N'https://career-hcmuni.fpt.edu.vn/images/2022/05/S3nGQldaPWoTucCC.jpg', 
	N'Bên cạnh chương trình StarCamp vẫn đang diễn ra từng quý (batch tiếp theo dự kiến vao tháng 10), NAB hiện đang triển khai song song 
	chương trình đào tạo Part-time WeCamp để hỗ trợ kiến thức cũng như thời gian đào tạo linh động hơn để các bạn sinh viên có thể tham gia.', 
	N'AC2', N'AD', CAST(N'2022-05-09' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P6', N'https://career-hcmuni.fpt.edu.vn/images/2022/03/NIMonA1RdwJVbJdu.jpg', 
	N'Ngày 16-17.03.2022 vừa qua, hơn 50 sinh viên ngành Thiết kế đồ họa đã có chuyến tham quan học tập thực tế tại 
	CÔNG TY TNHH QUẢ TRỨNG THỦY TINH (GLASS EGG COMPANY LIMITED). Dẫn đoàn là Thầy Phan Nhật Trung - Giảng viên ngành Thiết kế đồ họa. 
	Chuyến đi đã diễn ra trong không khí hòa hứng của tất cả sinh viên ngày hôm đó.', 
	N'AC3', N'AD', CAST(N'2022-03-28' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P7', N'https://career-hcmuni.fpt.edu.vn/images/2021/01/R4Pjf37EamIXFT0B.jpg', 
	N'Mình từng là một cậu học sinh chuyên Toán của trường Lương Thế Vinh - Biên Hòa, may mắn nhận được học bổng của ĐH FPT trong một 
	cuộc thi học bổng dành cho học sinh lớp 12. Mình muốn kể cho các bạn nghe về hành trình của một chàng trai rất sợ nói tiếng Anh, 
	từng xem ngoại ngữ này là điều gì đó thật đáng sợ đã vượt qua rào cản đó như thế nào để đạt được thành tích sinh viên xuất sắc nhất 
	của chương trình Quản trị kinh doanh Đại học FPT TP. HCM năm 2018.', 
	N'AC4', N'AD', CAST(N'2021-01-21' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P8', N'https://career-hcmuni.fpt.edu.vn/images/2022/01/umwkGYY25Aq6PQFK.jpg', 
	N'***Mỗi km chạy tích lũy được từ các runner, KMS sẽ góp 2,022VNĐ vào quỹ thưởng Tết “Merit Slots Reward" dành tặng riêng cho 
	sinh viên ngành Công Nghệ Thông Tin cả nước có thành tích học tập vượt trội trong năm 2021 - một năm nhiều biến động và không ít khó khăn.', 
	N'AC5', N'AD', CAST(N'2022-01-25' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P9', N'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg', 
	N'Tên tiếng Việt: Học kỳ tại doanh nghiệp
	Tên tiếng Anh: On the Job Training (Viết tắt: OJT)
	Là một học kỳ chính khóa (Học kỳ thứ 6) mang tính bắt buộc, có đánh giá kết quả hoàn thành dành cho tất cả các sinh viên.', 
	N'BS1', N'AD', CAST(N'2022-05-26' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P10', N'https://career-hcmuni.fpt.edu.vn/images/2021/07/0fTSRSO9jJCetA81.jpg', 
	N'Quy định OJT', 
	N'BS1', N'AD', CAST(N'2022-05-26' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P11', N'https://career-hcmuni.fpt.edu.vn/images/2022/04/PrqCnZp234e5zjwQ.jpg', 
	N'Thông báo OJT', 
	N'BS2', N'AD', CAST(N'2022-05-26' AS Date))
INSERT [dbo].[tblPosts] ([postID], [image], [content], [postTypeID], [adminID], [creatingDate])
	VALUES (N'P12', N'https://goldenapple.com.vn/wp-content/uploads/bfi_thumb/Khong-gian-Ngoc-Mai-Do-31-30zue2ugqjy4ec2ldv8268.jpg', 
	N'[OJT - SUMMER 2022] CÔNG TY CỔ PHẦN GOLDEN APPLE
	TÊN CÔNG TY
	GOLDEN APPLE CORPORATION', 
	N'BS3', N'AD', CAST(N'2022-05-26' AS Date))