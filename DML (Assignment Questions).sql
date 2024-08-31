/* 1. List all the book names, descriptions, category name, and category description that are 
currently not on loan and available for loan. The results are sorted in alphabetical order of book name. */
SELECT BookID, Title AS [Name], [Description], CategoryName, LoanPeriod AS CategoryDescription
FROM Book 
JOIN Category ON Book.CategoryID = Category.CategoryID
JOIN BookCopy ON BookCopy.ISBN = Book.ISBN
WHERE Book.Status = 'Available'
ORDER BY Book.Title;

/* 2. Display the active members and list of books they have borrowed in the year 2023. 
The result must consist of members' first name, last name, book name, and the borrow date. 
Sort the result by borrow date in ascending order. */
SELECT Member.FirstName, Member.LastName, Book.Title AS BookName, Loan.LoanDate AS BorrowDate
FROM Loan
JOIN Member ON Loan.MemberID = Member.MemberID
JOIN BookCopy ON Loan.BookID = BookCopy.BookID
JOIN Book ON Book.ISBN = BookCopy.ISBN
WHERE Loan.DueDate BETWEEN '2023-01-01' AND '2023-12-31' 
AND Member.Status = 'Active'
ORDER BY Loan.LoanDate ASC;

/* 3. Show members who had paid overdue more than 2 times. 
The results must consist of their first name, last name, contact number, number of overdue, and total due amount. */
WITH MemberOverdue AS 
(SELECT L.MemberID, COUNT(*) AS OverdueTimes, SUM(Fine) AS Tot FROM Loan L
WHERE L.ReturnDate > L.DueDate
GROUP BY L.MemberID)

SELECT M.MemberID , M.FirstName, M.LastName, M.Phone, OverdueTimes, Tot AS [Total Fine]
FROM Member M
JOIN MemberOverdue ON MemberOverdue.MemberID = M.MemberID
WHERE OverdueTimes > 2;

/* 4. Display the name and description of the book borrowed most in each tag color. 
Sort the result by tag color in descending order. */
WITH MostBorrowedBooks AS 
(SELECT b.CategoryID, COUNT(*) AS BorrowCount, MAX(l.BookID) AS MostBorrowedBookID FROM BookCopy bc
INNER JOIN Loan l ON l.BookID = bc.BookID
INNER JOIN Book b ON bc.ISBN = b.ISBN
GROUP BY b.CategoryID), 

MostBorrowedBooksDetails AS 
(SELECT mb.CategoryID, mb.BorrowCount, b.Title, b.Description FROM BookCopy bc
INNER JOIN Book b ON bc.ISBN = b.ISBN
INNER JOIN MostBorrowedBooks mb ON mb.MostBorrowedBookID = bc.BookID)

SELECT c.CategoryName, mbbd.Title AS MostBorrowedBookTitle, mbbd.Description AS MostBorrowedBookDescription FROM MostBorrowedBooksDetails mbbd
INNER JOIN Category c ON mbbd.CategoryID = c.CategoryID
ORDER BY c.CategoryID DESC;

/* 5. Show the genre which has the greatest number of books. */
WITH GenreCount AS
(SELECT b.GenreID AS GenreID, COUNT(BookID) AS BookCount FROM Book b
JOIN BookCopy bc ON bc.ISBN = b.ISBN
GROUP BY b.GenreID)

SELECT GC.GenreID, G.GenreName, BookCount
FROM GenreCount GC
JOIN Genre G ON G.GenreID = GC.GenreID
WHERE BookCount = (SELECT MAX(BookCount) FROM GenreCount);

/* 6. Show the total number of books reserved in the year 2023. */
SELECT COUNT(*) AS BooksReservedIn2023 FROM Loan
WHERE YEAR(LoanDate) = 2023;

/* 7. Show the publisher whose books are least-in-quantity for yellow-tagged books. */
WITH PublisherData AS
(SELECT BookID, PublisherName FROM BookCopy bc 
JOIN Book b ON b.ISBN = bc.ISBN
JOIN Publisher p ON b.PublisherID = p.PublisherID 
WHERE CategoryID IN
(SELECT CategoryID FROM Category WHERE CategoryName = 'Yellow-tagged')),

PublisherYellow AS
(SELECT pd.PublisherName, COUNT(BookID) AS [Number of Yellow-Tagged Books Published]
FROM PublisherData pd
GROUP BY pd.PublisherName)

SELECT * FROM PublisherYellow py
WHERE [Number of Yellow-Tagged Books Published] = (SELECT MIN([Number of Yellow-Tagged Books Published]) FROM PublisherYellow);

/* 8. Show the number of books written by each author, 
sort the result according to book count (author with the most books sorted on top). */
WITH AuthorWrites AS 
(SELECT ba.ISBN, ba.AuthorID, a.AuthorName
FROM BookAuthors BA
LEFT JOIN Book b ON ba.ISBN = b.ISBN
LEFT JOIN Author a ON ba.AuthorID = a.AuthorID)

SELECT AuthorName, COUNT(ISBN) AS [Number of Books]
FROM AuthorWrites
GROUP BY AuthorName
ORDER BY [Number of Books] DESC;

/* 9. Display the name and contact number of member(s) who had at least borrowed a book under the genre 'Fantasy' once. */
SELECT DISTINCT m.FirstName, m.LastName, m.Phone
FROM Member m
JOIN Loan l ON m.MemberID = l.MemberID
JOIN BookCopy bc ON l.BookID = bc.BookID
JOIN Book b ON b.ISBN = bc.ISBN
JOIN Genre g ON b.GenreID = g.GenreID
WHERE g.GenreName = 'Fantasy';

/* 10. Show books that cost more than RM50. 
The result should show the name of the book, description, publisher name, and publisher address. */
SELECT b.Title, b.Description, p.PublisherName, p.Address
FROM Book b
JOIN Publisher p ON b.PublisherID = p.PublisherID
WHERE b.Cost > 50.00;