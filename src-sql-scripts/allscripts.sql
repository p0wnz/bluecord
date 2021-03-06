create table Blue_Categories(
   	id int(11) not null primary key AUTO_INCREMENT,
  	CategtoryName varchar(255) not null,
	prevlidge int(1) not null,
	Aurthor varchar(255) not null,
	DateCreated  DATETIME DEFAULT  CURRENT_TIMESTAMP

    );
create table Blue_Group(
   	id int(11) not null primary key AUTO_INCREMENT,
   	_Name varchar(255) not null,
	DateCreated  DATETIME DEFAULT  CURRENT_TIMESTAMP,
		prevlidge int(1) not null

    );
create table Blue_Media(
   	id int(11) not null primary key AUTO_INCREMENT,
   	_Type varchar(255) not null,
   	Aurthor varchar(255) not null,
	Link varchar(255) not null,
	prevlidge int(1) not null,
	DateUploaded  DATETIME DEFAULT  CURRENT_TIMESTAMP

    );
create table Blue_Menu(
   	id int(11) not null primary key AUTO_INCREMENT,
   	id_Pages varchar(1024) not null,
	prevlidge int(1) not null,
	_type varchar(255) not null,
	_name varchar(255) not null,
	DateCreated  DATETIME DEFAULT  CURRENT_TIMESTAMP

    );
create table Blue_Pages(
   	id int(11) not null primary key AUTO_INCREMENT,
   	Title varchar(255) not null,
   	Content_URL varchar(255) not null,
	Aurthor varchar(255) not null,
	prevlidge int(1) not null,
	DateCreated  DATETIME DEFAULT  CURRENT_TIMESTAMP,
	DateModified  DATETIME DEFAULT  CURRENT_TIMESTAMP,
	Views int(11) DEFAULT 0 not null,
	Activated TINYINT(1)  DEFAULT 0 not null,
	ID_READ varchar(255) not null,
	ID_WRITE varchar(255) not null,
	Keywords varchar(255) not null,
	CommentID varchar(255) not null,
	Likes int(11) DEFAULT 0 not null,
	Dislikes int(11) DEFAULT 0 not null,
	isOnRecm TINYINT(1)  DEFAULT 0 not null,
	isOnMenus TINYINT(1)  DEFAULT 0 not null,
	link varchar(255) not null,
	Categories varchar(255) not null
	);
create table Blue_Accounts(
   	id int(11) not null primary key AUTO_INCREMENT,
   	username varchar(255) not null,
   	name varchar(255) not null,
	email varchar(255) not null,
   	password_hash varchar(64) not null,
	profile_url varchar(255) not null DEFAULT '/content/Media/r32_pp.bmp' ,
	prevlidge int(1) not null,
	lastlogindate  DATETIME DEFAULT  CURRENT_TIMESTAMP,
	cookie varchar(255) not null,
	IPAddress varchar(255) not null,
	Activated TINYINT(1)  DEFAULT 0 not null
    );
INSERT INTO `blue_accounts` (`id`, `username`, `name`, `email`, `password_hash`, `profile_url`, `prevlidge`, `lastlogindate`, `cookie`, `IPAddress`, `Activated`) VALUES ('1000000', 'root', 'tororenta', 'tororenta@root.com', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', '/content/Media/r32_pp.bmp', '100', CURRENT_TIMESTAMP, '', '127.0.0.1', '1');
INSERT INTO `blue_categories` (`id`, `CategtoryName`, `prevlidge`, `Aurthor`, `DateCreated`) VALUES ('4000000', 'Essentials', '100', 'root', CURRENT_TIMESTAMP);
INSERT INTO `blue_group` (`id`, `_Name`, `DateCreated`, `prevlidge`) VALUES ('5000000', 'Guest', CURRENT_TIMESTAMP, '1');
INSERT INTO `blue_group` (`id`, `_Name`, `DateCreated`, `prevlidge`) VALUES ('5000001', 'Administrator', CURRENT_TIMESTAMP, '100');
INSERT INTO `blue_media` (`id`, `_Type`, `Aurthor`, `Link`, `prevlidge`, `DateUploaded`) VALUES ('6000000', 'PNG', 'root', 'content/Media/icon_user_gray.svg', '1', CURRENT_TIMESTAMP);
INSERT INTO `blue_pages` (`id`, `Title`, `Content_URL`, `Aurthor`, `prevlidge`, `DateCreated`, `DateModified`, `Views`, `Activated`, `ID_READ`, `ID_WRITE`, `Keywords`, `CommentID`, `Likes`, `Dislikes`, `isOnRecm`, `isOnMenus`, `link`, `Categories`) VALUES ('2000000', 'Homepage', 'bluecord/content/00001.php', 'root', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '0', '0', '0', '0', 'Home Start Homepage Entry begin begining', '000001', '0', '0', '0', '1', '/index.php', 'Essentials');
