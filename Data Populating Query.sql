INSERT INTO Author VALUES
('A194', 'Scott Westerfeld'),
('A721', 'Susanna Clarke'),
('A999', 'Neil Gaiman'),
('A888', 'Margaret Atwood'),
('A542', 'George R.R. Martin'),
('A271', 'J.K. Rowling'),
('A123', 'Scott Lynch'),
('A456', 'Brandon Sanderson'),
('A567', 'John Doe'), 
('A678', 'Jane Doe'), 
('A789', 'Mary Smith');

INSERT INTO Genre VALUES
('GENRE394', 'Fantasy'),
('GENRE123', 'Science Fiction'),
('GENRE567', 'Mystery'),
('GENRE789', 'Dystopian'),
('GENRE901', 'Adventure'),
('GENRE234', 'Reference Book'),
('GENRE761', 'Journal'),
('GENRE890', 'Student Project');

INSERT INTO Category VALUES
('CAT731', 'Green-tagged', 14, 5),
('CAT918', 'Yellow-tagged', 7, 10),
('CAT783', 'Red-tagged', 0, 0);

INSERT INTO Publisher VALUES
('P913', 'Simon & Schuster', '1230 Avenue of the Americas, New York, NY, 10020-1513, USA.'),
('P305', 'Bloomsbury Publishing', '31 Bedford Avenue, London, WC1B 3AT'),
('P543', 'Tor Books', '175 Fifth Avenue, New York, NY 10010, USA'),
('P789', 'Penguin Random House', '17 Hudson Street, New York, NY, 10013, USA'),
('P123', 'HarperCollins', '199 Avenue of the Americas, New York, NY, 10001, USA'),
('P678', 'Scholastic Inc.', '557 Broadway, New York, NY, 10012, USA'),
('P456', 'Orbit Books', '338 Euston Road, London, NW1 3BH');

INSERT INTO Book VALUES
('9787518647628', 'Leviathan',								'GENRE394', 'CAT731', 'P913', 'Leviathan is a book about...', 'Available', 37.90),
('9787518646767', 'Piranesi',								'GENRE394', 'CAT918', 'P305', 'Piranesi is a book about...', 'Unavailable', 89.50),
('9780765379937', 'American Gods',							'GENRE123', 'CAT731', 'P543', 'American Gods about...', 'Available', 59.90),
('9780007510184', 'The Handmaids Tale',						'GENRE567', 'CAT731', 'P305', 'The Handmaids Tale is a book about...', 'Unavailable', 29.50),
('9780552143418', 'A Game of Thrones',						'GENRE394', 'CAT918', 'P789', 'A Game of Thrones is a book about...', 'Available', 65.00),
('9780747532699', 'Harry Potter and the Sorcerers Stone',	'GENRE394', 'CAT731', 'P123', 'Harry Potter and the Sorcerers Stone is a book about...', 'Unavailable', 42.50),
('9780062310138', 'Uglies',									'GENRE394', 'CAT918', 'P913', 'Uglies is a book about...', 'Available', 25.00),
('9780765326381', 'Jonathan Strange & Mr Norrell',			'GENRE394',	'CAT731', 'P543', 'Jonathan Strange & Mr Norrell is a book about...', 'Available', 55.00),
('9780380977276', 'Neverwhere',								'GENRE123',	'CAT731', 'P789', 'Neverwhere is a book about...', 'Unavailable', 34.90),
('9780385669041', 'The Testaments',							'GENRE567', 'CAT731', 'P123', 'The Testaments is a book about...', 'Available', 39.90),
('9780553381689', 'The Lies of Locke Lamora',				'GENRE567', 'CAT731', 'P678', 'The Lies of Locke Lamora is a book about...', 'Available', 29.99),
('9780575086251', 'Mistborn: The Final Empire',				'GENRE394',	'CAT731', 'P456', 'Mistborn: The Final Empire is a book about...', 'Unavailable', 38.50),
('9780812982473', 'The Night Circus',						'GENRE789', 'CAT918', 'P789', 'The Night Circus is a book about...', 'Available', 30.00),
('9780756404079', 'The Name of the Wind',					'GENRE901', 'CAT731', 'P678', 'The Name of the Wind is a book about...', 'Available', 45.00),
('9780765326350', 'Stardust',								'GENRE394', 'CAT918', 'P543', 'Stardust is a book about...', 'Unavailable', 20.00),
('9781234567890', 'Database Management',					'GENRE234', 'CAT783', 'P456', 'Database Management is a reference book about...', 'Available', 49.99),
('9780987654321', 'Artificial Intelligence Research',		'GENRE761', 'CAT783', 'P123', 'Artificial Intelligence Research is a journal about...', 'Available', 29.99),
('9785678901234', 'Machine Learning Fundamentals',			'GENRE234', 'CAT783', 'P543', 'Machine Learning Fundamentals is a reference book about...', 'Available', 59.99),
('9780123456789', 'Economics Analysis',						'GENRE761',	'CAT783', 'P678', 'Economics Analysis is a journal about...', 'Available', 39.99),
('9789012345678', 'Software Engineering Project',			'GENRE890', 'CAT783', 'P913', 'Software Engineering Project is a student project about...', 'Available', 19.99);

INSERT INTO BookAuthors VALUES 
('BA1', '9787518647628', 'A194'), ('BA2', '9787518647628', 'A888'),
('BA3', '9787518647628', 'A123'), ('BA4', '9787518646767', 'A721'),
('BA5', '9787518646767', 'A999'), ('BA6', '9780765379937', 'A999'),
('BA7', '9780765379937', 'A678'), ('BA8', '9780765379937', 'A194'),
('BA9', '9780007510184', 'A888'), ('BA10', '9780007510184', 'A194'),
('BA11', '9780552143418', 'A542'), ('BA12', '9780747532699', 'A271'),
('BA13', '9780062310138', 'A194'), ('BA14', '9780765326381', 'A721'),
('BA15', '9780380977276', 'A999'), ('BA16', '9780385669041', 'A888'),
('BA17', '9780385669041', 'A123'), ('BA18', '9780385669041', 'A456'),
('BA19', '9780385669041', 'A721'), ('BA20', '9780385669041', 'A999'),
('BA21', '9780553381689', 'A123'), ('BA22', '9780553381689', 'A721'), 
('BA23', '9780553381689', 'A194'), ('BA24', '9780575086251', 'A721'), 
('BA25', '9780575086251', 'A456'), ('BA26', '9780812982473', 'A888'), 
('BA27', '9780812982473', 'A194'), ('BA28', '9780812982473', 'A721'), 
('BA29', '9780756404079', 'A456'), ('BA30', '9780756404079', 'A678'), 
('BA31', '9780765326350', 'A888'), ('BA32', '9780765326350', 'A999'), 
('BA33', '9781234567890', 'A678'), ('BA34', '9781234567890', 'A721'), 
('BA35', '9780987654321', 'A789'), ('BA36', '9780987654321', 'A123'), 
('BA37', '9785678901234', 'A678'), ('BA38', '9785678901234', 'A999'), 
('BA39', '9780123456789', 'A789'), ('BA40', '9780123456789', 'A721'), 
('BA41', '9789012345678', 'A567'), ('BA42', '9789012345678', 'A456');

INSERT INTO BookCopy VALUES
('B001', '9787518647628'), ('B002', '9787518646767'), ('B003', '9780765379937'), ('B004', '9780007510184'),
('B005', '9780552143418'), ('B006', '9780747532699'), ('B007', '9780062310138'), ('B008', '9780765326381'),
('B009', '9780380977276'), ('B010', '9780385669041'), ('B011', '9780553381689'), ('B012', '9780575086251'),
('B013', '9780812982473'), ('B014', '9780756404079'), ('B015', '9780765326350'), ('B016', '9781234567890'),
('B017', '9780987654321'), ('B018', '9785678901234'), ('B019', '9780123456789'), ('B020', '9789012345678'),
('B021', '9787518647628'), ('B022', '9787518647628'), ('B023', '9787518647628'), ('B024', '9787518647628'),
('B025', '9787518647628'), ('B026', '9787518647628'), ('B027', '9787518646767'), ('B028', '9787518646767');

INSERT INTO Member VALUES
('M778477', 'Alexander', 'Johnson', 'Brickfields', '0198328098', 'Active', 2, 50.00, 'Male'),
('M663209', 'Aria', 'Park', 'Bukit Bintang', '0123456789', 'Active', 0, 0.00, 'Female'),
('M849627', 'James', 'Smith', 'Bangsar', '0123456780', 'Active', 5, 120.00, 'Male'),
('M550320', 'Lily', 'Chen', 'KLCC', '0123456781', 'Active', 3, 80.00, 'Female'),
('M220599', 'Ethan', 'Johnson', 'Cheras', '0123456782', 'Active', 1, 30.00, 'Male'),
('M111222', 'Mia', 'Wilson', 'Bukit Jalil', '0123456783', 'Active', 4, 100.00, 'Female'),
('M333444', 'Noah', 'Brown', 'Mont Kiara', '0123456784', 'Active', 0, 0.00, 'Male'),
('M777888', 'Ava', 'Martinez', 'Damansara Heights', '0123456785', 'Active', 2, 50.00, 'Female'),
('M555666', 'Liam', 'Jones', 'Kepong', '0123456786', 'Active', 6, 150.00, 'Male'),
('M909283', 'Sophia', 'Lee', 'Setapak', '0123456787', 'Active', 0, 0.00, 'Female'),
('M456789', 'Ethan', 'White', 'Sri Petaling', '0123456788', 'Active', 2, 50.00, 'Male'),
('M987654', 'Mia', 'Rodriguez', 'Titiwangsa', '0123456789', 'Active', 3, 80.00, 'Female'),
('M135790', 'Noah', 'Gonzalez', 'Sungai Besi', '0123456700', 'Active', 1, 30.00, 'Male'),
('M876543', 'Isabella', 'Perez', 'Ampang', '0123456701', 'Active', 0, 0.00, 'Female'),
('M246813', 'William', 'Nguyen', 'Sentul', '0123456702', 'Active', 4, 100.00, 'Male'),
('M369258', 'Amelia', 'Kim', 'Wangsa Maju', '0123456703', 'Active', 0, 0.00, 'Female');

INSERT INTO Loan VALUES
('L309382', 'M663209', 'B001', '2023-04-28', '', '2023-05-19', 0),
('L743902', 'M849627', 'B002', '2022-11-18', '', '2022-12-02', 0),
('L584031', 'M550320', 'B003', '2024-08-20', '', '2024-09-10', 0),
('L109283', 'M220599', 'B004', '2024-05-15', '', '2024-06-05', 0),
('L739285', 'M111222', 'B005', '2022-10-08', '', '2022-10-22', 0),
('L692836', 'M333444', 'B006', '2023-07-05', '', '2023-07-26', 0),
('L819375', 'M777888', 'B007', '2023-09-05', '', '2023-09-15', 0),
('L592834', 'M555666', 'B008', '2022-08-01', '', '2022-08-17', 0),
('L935201', 'M909283', 'B009', '2023-12-08', '', '2023-12-29', 0),
('L582013', 'M456789', 'B010', '2024-06-01', '', '2024-06-17', 0),
('L785032', 'M987654', 'B011', '2022-11-03', '', '2022-11-18', 0),
('L109842', 'M135790', 'B012', '2023-08-07', '', '2023-08-28', 0),
('L703284', 'M876543', 'B013', '2023-01-03', '', '2023-01-17', 0),
('L194025', 'M663209', 'B014', '2024-04-02', '', '2024-04-20', 0),
('L835281', 'M849627', 'B015', '2023-03-03', '', '2023-03-24', 0),
('L319204', 'M555666', 'B021', '2024-06-30', '', '2024-07-21', 0),
('L863210', 'M909283', 'B022', '2023-02-01', '', '2023-02-15', 0),
('L743528', 'M456789', 'B023', '2022-12-04', '', '2022-12-25', 0),
('L542310', 'M987654', 'B024', '2024-03-05', '', '2024-03-20', 0),
('L652931', 'M135790', 'B025', '2023-06-04', '', '2023-06-18', 0),
('L582637', 'M456789', 'B010', '2024-02-01', '', '2024-03-03', 0),
('L739775', 'M111222', 'B005', '2023-10-08', '', '2023-10-20', 0),
('L652000', 'M135790', 'B025', '2024-03-04', '', '2024-04-01', 0),
('L052931', 'M135790', 'B025', '2022-03-10', '', '2022-03-20', 0),
('L666281', 'M849627', 'B010', '2023-03-09', '', '2023-03-20', 0);

UPDATE Loan
SET DueDate = DATEADD(DAY, 14, LoanDate)
WHERE BookID IN (SELECT BookID FROM BookCopy WHERE ISBN IN (SELECT ISBN FROM Book WHERE CategoryID = 'CAT731'));

UPDATE Loan
SET DueDate = DATEADD(DAY, 7, LoanDate)
WHERE BookID IN (SELECT BookID FROM BookCopy WHERE ISBN IN (SELECT ISBN FROM Book WHERE CategoryID = 'CAT918'));

UPDATE Loan
SET Fine = 5 * DATEDIFF(DAY, DueDate, ReturnDate)
WHERE DATEDIFF(DAY, LoanDate, DueDate) = 14 AND ReturnDate > DueDate;

UPDATE Loan
SET Fine = 10 * DATEDIFF(DAY, DueDate, ReturnDate)
WHERE DATEDIFF(DAY, LoanDate, DueDate) = 7 AND ReturnDate > DueDate;

INSERT INTO Room VALUES
('R01', 1, 'Available'),
('R02', 2, 'Available'),
('R03', 3, 'Available'),
('R04', 4, 'Available'),
('R05', 5, 'Available'),
('R06', 6, 'Available'),
('R07', 7, 'Available'),
('R08', 8, 'Available'),
('R09', 9, 'Available'),
('R10', 10, 'Available'),
('R11', 11, 'Available'),
('R12', 12, 'Available'),
('R13', 13, 'Available'),
('R14', 14, 'Available'),
('R15', 15, 'Available'),
('R16', 16, 'Available'),
('R17', 17, 'Available'),
('R18', 18, 'Available'),
('R19', 19, 'Available'),	
('R20', 20, 'Available');

INSERT INTO PresentationRoomBooking VALUES
('BKG292048', 'M778477', '2022-05-12', 'R01'),
('BKG292049', 'M663209', '2023-07-21', 'R02'),
('BKG292050', 'M849627', '2024-09-15', 'R03'),
('BKG292051', 'M550320', '2022-11-03', 'R04'),
('BKG292052', 'M220599', '2023-04-28', 'R05'),
('BKG292053', 'M111222', '2024-01-19', 'R06'),
('BKG292054', 'M333444', '2022-08-09', 'R07'),
('BKG292055', 'M777888', '2023-06-05', 'R08'),
('BKG292056', 'M555666', '2024-03-17', 'R09'),
('BKG292057', 'M909283', '2022-10-22', 'R10'),
('BKG292058', 'M456789', '2023-12-08', 'R11'),
('BKG292059', 'M987654', '2024-07-30', 'R12'),
('BKG292060', 'M135790', '2022-09-14', 'R13'),
('BKG292061', 'M876543', '2023-02-27', 'R14'),
('BKG292062', 'M246813', '2024-05-08', 'R15'),
('BKG292063', 'M369258', '2022-12-17', 'R16'),
('BKG292064', 'M778477', '2023-11-01', 'R17'),
('BKG292065', 'M663209', '2024-08-23', 'R18'),
('BKG292066', 'M849627', '2022-07-12', 'R19'),
('BKG292067', 'M550320', '2023-10-05', 'R20');