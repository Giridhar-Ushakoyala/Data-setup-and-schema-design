create table member(
member_id INT primary key,
nam Varchar(100),
email varchar(100)
);

create table Book(
book_id int primary key,
title varchar(100),
genre varchar(50),
published_year int
);

create table Author(
author_id int primary key,
nam varchar(100)
);

create table BookAuthor(
book_id int,
author_id int,
primary key (book_id, author_id),
foreign key (book_id) references
Book(book_id),
foreign key (author_id) references
Author(author_id)
);

create table Loan(
loan_id int primary key,
book_id int,
member_id int,
loan_date Date,
return_date date,
foreign key (book_id) references
Book(book_id),
foreign key (member_id) references 
Member(member_id)
);


