


CREATE TABLE Authors(
 AuthorID INT PRIMARY KEY ,
 FirstName VARCHAR (200) NOT NULL,
 lastName VARCHAR (200) NOT NULL);

 CREATE TABLE Books(
 BookID INT PRIMARY KEY,
 Title VARCHAR (255),
 AuthorID INT FOREIGN KEY REFERENCES Authors (AuthorID)
 );

 INSERT INTO Authors(AuthorID,FirstName,lastName)VALUES (1,'John','Doe'),(2,'Jane','Smith'),(3,'David','Johnson');
 INSERT INTO Books(BookID,Title,AuthorID) VALUES (1,'Book1',1),(2,'Book2',2),(3,'Book3',3);

 SELECT * FROM Authors;
 SELECT * FROM Books;
 --Select * from Books;


 --Write a query to retrieve the book with the title 'Book2'.
 SELECT * FROM Books WHERE Title ='Book2';

-- Write a query to update the author's last name to 'Smithson' for the book with the title 'Book1'.

UPDATE Authors SET lastName='Smithson' WHERE AuthorID =(SELECT AuthorID FROM Books WHERE Title='Book1');
Select * from Authors;

--Write a query to delete the author with the AuthorID 3 and all their associated books from the database. 
DELETE FROM Authors WHERE AuthorID=3;
DELETE FROM Books WHERE AuthorID=3;
 SELECT * FROM Books;
--Write a query to count the total number of books in the "Books" table.
SELECT COUNT(*) AS TotalBooks FROM Books;


--Write a query to retrieve all books along with their authors' first and last names
SELECT Books.Title,Authors.FirstName,Authors.lastName FROM Books INNER JOIN Authors ON Books.AuthorID=Authors.AuthorID;