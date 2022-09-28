CREATE TABLE Tickets(
	Ticket_ID bigint NOT NULL AUTO_INCREMENT,
	Title VARCHAR(128) NOT NULL,
	Status int DEFAULT 0,
	Description TINYTEXT NULL,
	Assigned_To_ID int NULL,
	Created_By_ID int NULL,
	PRIMAREY KEY(Ticket_ID)
);

CREATE TABLE Status(
	Status_Code int NOT NULL,
	Status_Name VARCHAR(128) NOT NULL
);

CREATE TABLE Users(
	User_ID bigint NOT NULL AUTO_INCREMENT,
	First_Name VARCHAR(128) NOT NULL,
	Last_Name VARCHAR(128) NOT NULL,
	Group_ID int NOT NULL
	Login_ID VARCHAR(128) NOT NULL,
	Encrypted_Password VARCHAR(128) NOT NULL,
	PRIMARY KEY(User_ID)
);

CREATE TABLE Groups(
	Group_ID int NOT NULL AUTO_INCREMENT,
	Group_Name VARCHAR(128) NOT NULL,
	Priviledge_Level int NOT NULL,
	PRIMARY KEY(Group_ID)
);

CREATE TABLE Comments(
	Comment_ID bigint NOT NULL AUTO_INCREMENT,
	Parent_Ticket_ID bigint NOT NULL,
	Parent_Comment_ID bigint NULL,
	Comment_Text TINYTEXT NOT NULL,
	Date_Created datetime NOT NULL,
	Commentor_ID int NOT NULL,
	PRIMARY KEY(Comment_ID)
);