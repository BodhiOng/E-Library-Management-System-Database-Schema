CREATE TABLE Author (
	AuthorID CHAR(10) PRIMARY KEY,
	AuthorName NVARCHAR(255) NOT NULL
);

CREATE TABLE Genre (
	GenreID CHAR(10) PRIMARY KEY,
	GenreName NVARCHAR(50) NOT NULL
);

CREATE TABLE Category (
	CategoryID CHAR(10) PRIMARY KEY,
	CategoryName NVARCHAR(50) NOT NULL,
	LoanPeriod INT NOT NULL,
	[FineRates(RM)] INT
);

CREATE TABLE Publisher (
	PublisherID CHAR(20) PRIMARY KEY,
	PublisherName NVARCHAR(50) NOT NULL,
	Address NVARCHAR(255) NOT NULL
);

CREATE TABLE Book (
	ISBN CHAR(20) PRIMARY KEY, 
	Title NVARCHAR(255) NOT NULL,
	GenreID CHAR(10) NOT NULL FOREIGN KEY REFERENCES Genre(GenreID),
	CategoryID CHAR(10) NOT NULL FOREIGN KEY REFERENCES Category(CategoryID),
	PublisherID CHAR(20) NOT NULL FOREIGN KEY REFERENCES Publisher(PublisherID),
	Description NVARCHAR(MAX),
	Status NVARCHAR(50) NOT NULL,
	Cost DECIMAL(5,2) NOT NULL
);

CREATE TABLE BookCopy (
	BookID CHAR(20) PRIMARY KEY,
	ISBN CHAR(20) FOREIGN KEY REFERENCES Book(ISBN)
);

CREATE TABLE BookAuthors (
	BookAuthorID NVARCHAR(10) PRIMARY KEY,
	ISBN CHAR(20) FOREIGN KEY REFERENCES Book(ISBN),
	AuthorID CHAR(10) FOREIGN KEY REFERENCES Author(AuthorID)
);

CREATE TABLE Member (
	MemberID CHAR(10) PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Address NVARCHAR(255) NOT NULL,
	Phone NVARCHAR(50) NOT NULL,
	Status NVARCHAR(10) NOT NULL,
	OverduePaymentsCount INT NOT NULL,
	TotalDueAmount DECIMAL(5,2) NOT NULL,
	Gender CHAR(10) NOT NULL
);

CREATE TABLE Loan (
	LoanID CHAR(10) PRIMARY KEY,
	MemberID CHAR(10) NOT NULL FOREIGN KEY REFERENCES Member(MemberID),
	BookID CHAR(20) NOT NULL FOREIGN KEY REFERENCES BookCopy(BookID),
	LoanDate DATE NOT NULL,
	DueDate DATE NOT NULL,
	ReturnDate DATE NOT NULL,
	Fine DECIMAL(10,2) NOT NULL
);

CREATE TABLE Room (
	RoomID CHAR(10) PRIMARY KEY,
	RoomNumber INT NOT NULL,
	Status NVARCHAR(50) NOT NULL
);

CREATE TABLE PresentationRoomBooking (
	BookingID CHAR(10) PRIMARY KEY,
	MemberID CHAR(10) NOT NULL FOREIGN KEY REFERENCES Member(MemberID),
	Date DATE NOT NULL,
	RoomID CHAR(10) NOT NULL FOREIGN KEY REFERENCES Room(RoomID)
);