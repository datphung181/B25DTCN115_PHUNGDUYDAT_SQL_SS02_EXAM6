CREATE DATABASE bttnh_database;
USE btth_database; 

-- Xoa bang
DROP TABLE borrow_books;
DROP TABLE book; 

CREATE TABLE book(
	book_id CHAR(5),
    book_name VARCHAR(200) NOT NULL,
    quantity INT CHECK(quantity >= 0),
    rent DECIMAL(10,2) DEFAULT 5000,
    PRIMARY KEY (book_id)
);

ALTER TABLE book
ADD COLUMN entry_date DATE NOT NULL;

CREATE TABLE borrow_books(
	borrow_id INT AUTO_INCREMENT,
    book_id CHAR(5) NOT NULL,
    borrow_date DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (borrow_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)

);
