CREATE DATABASE library_db; 
USE library_db;

CREATE TABLE books (
  book_id INT PRIMARY KEY, 
  title VARCHAR(100) NOT NULL,
  author VARCHAR(60),     
  genre VARCHAR(40),
  price DECIMAL(6,2),    
  copies INT,   
  available VARCHAR(10)
);

INSERT INTO books VALUES
  (1, 'Clean Code',        'Robert Martin', 'Programming', 45.00, 5,  'Yes'),
  (2, 'Atomic Habits',     'James Clear',   'Self-Help',   30.00, 8,  'Yes'),
  (3, 'The Alchemist',     'Paulo Coelho',  'Fiction',     20.00, 3,  'No'),
  (4, 'Deep Work',         'Cal Newport',   'Self-Help',   35.00, 0,  'No'),
  (5, 'Rich Dad Poor Dad', 'Robert K.',     'Finance',     25.00, 10, 'Yes');

SELECT * FROM books;                          -- all columns

SELECT title, author, price FROM books;       -- specific columns

SELECT DISTINCT genre FROM books;             

SELECT * FROM books WHERE available = 'Yes';

SELECT * FROM books WHERE price < 35;

SELECT * FROM books WHERE available = 'Yes' AND price < 40;

SELECT * FROM books WHERE genre = 'Self-Help' OR genre = 'Finance';

SELECT * FROM books WHERE NOT available = 'No';      -- only available books 

UPDATE books SET copies = 6 WHERE book_id = 3;   -- update 

DELETE FROM books WHERE book_id = 4;  -- delete