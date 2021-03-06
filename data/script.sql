use master
if exists (select * from sys.databases where name='INF205_GIANGNHPH03986_ASS')
drop database INF205_GIANGNHPH03986_ASS
if not exists (select * from sys.databases where name='INF205_GIANGNHPH03986_ASS')
create database INF205_GIANGNHPH03986_ASS
go
use INF205_GIANGNHPH03986_ASS
-- Table: account
CREATE TABLE account (
    username nvarchar(32)  NOT NULL,
    password nvarchar(255)  NOT NULL,
    email nvarchar(255)  NOT NULL,
    full_name nvarchar(255)  NOT NULL,
    address nvarchar(255)  NOT NULL,
    phone nvarchar(20)  NOT NULL,
    CONSTRAINT pk_account PRIMARY KEY  (username)
);
-- Table: category
CREATE TABLE category (
    cate_ID int  NOT NULL,
    cate_name nvarchar(255)  NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY  (cate_ID)
);
-- Table: product
CREATE TABLE product (
    product_ID int  NOT NULL,
    name nvarchar(255)  NOT NULL,
    price decimal(12,2)  NOT NULL,
    description nvarchar(1000)  NOT NULL,
    img nvarchar(255)  NOT NULL,
    cate_ID int  NOT NULL,
    CONSTRAINT pk_product PRIMARY KEY  (product_ID),
	CONSTRAINT fk_product_category foreign key(cate_ID) references category(cate_ID)
);
-- Table: purchase
CREATE TABLE purchase (
    purchase_ID int  NOT NULL,
    username nvarchar(32)  NOT NULL,
    CONSTRAINT pk_purchase PRIMARY KEY  (purchase_ID),
	CONSTRAINT fk_purchase_account foreign key(username) references account(username)
);
-- Table: purchase_detail
CREATE TABLE purchase_detail (
    purchase_ID int  NOT NULL,
    product_ID int  NOT NULL,
    amount int  NOT NULL,
	CONSTRAINT fk_purchase_detail_purchase foreign key(purchase_ID) references purchase(purchase_ID),
	CONSTRAINT fk_purchase_detail_product foreign key(product_ID) references product(product_ID)
);
insert into account(username,password,email,full_name,address,phone)
values
('LinhGiang','12345678','linhgiang.vn@gmail.com',N'Nguyễn Hữu Giang',N'123 Từ Liêm - Hà Nội','0946039636'),
('NhatLinh','12345678','nhatlinh@gmail.com',N'Nguyễn Hữu Nhật Linh',N'725 Hoàng Cầu - Hà Nội','0909123456'),
('HongNguyen','12345678','hongnguyen@gmail.com',N'Nguyễn Hồng Nguyên',N'223 Long Biên - Hà Nội','0909000000'),
('LyCanh','12345678','mrsly@gmail.com',N'Cảnh Thị Lý',N'365 Gia Lâm - Hà Nội','0979469365'),
('SonDuong','12345678','mrson@gmail.com',N'Dương Văn Sơn',N'128 Hoàng Mai - Hà Nội','0979469365')

insert into category(cate_ID,cate_name)
values
(1,N'Apple'),
(2,N'Samsung'),
(3,N'Sony'),
(4,N'Asus'),
(5,N'Lenovo')

insert into product(product_ID,name,price,description,img,cate_ID)
values
(1,N'Apple iPhone 6S',17990000,N'Apple iPhone 6S quốc tế. Bảo hành 12 tháng.','https://cdn.tgdd.vn/Products/Images/42/73704/iphone-6s-plus-64gb-400-400x450.png',1),
(2,N'Samsung Galaxy A7',6990000,N'Bảo hành chính hãng: thân máy 12 tháng, pin 12 tháng, sạc 6 tháng','https://cdn.tgdd.vn/Products/Images/42/70761/samsung-galaxy-a7-400x460.png',2),
(3,N'Sony Xperia XA',6990000,N'Bảo hành chính hãng: thân máy 12 tháng, pin 12 tháng, sạc 6 tháng','https://cdn.tgdd.vn/Products/Images/42/75245/sony-xperia-xa-1-400x460.png',3),
(4,N'Asus Zenfone Max',4490000,N'Bảo hành chính hãng: thân máy 12 tháng, pin 6 tháng, sạc 6 tháng','https://cdn.tgdd.vn/Products/Images/42/72755/asus-zenfone-max-400x460.png',4),
(5,N'Lenovo P70',4490000,N'Bảo hành chính hãng: thân máy 12 tháng, pin 6 tháng, sạc 6 tháng','https://cdn.tgdd.vn/Products/Images/42/71129/lenovo-p70-400x460.png',5)

insert into purchase(purchase_ID,username)
values
(1,'LinhGiang'),
(2,'NhatLinh'),
(3,'HongNguyen'),
(4,'LyCanh'),
(5,'SonDuong')

insert into purchase_detail(purchase_ID,product_ID,amount)
values
(1,1,1),
(2,2,1),
(3,3,1),
(4,1,1),
(5,2,1)
-- End of file.