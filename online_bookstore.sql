--create database 
drop database if exists OnlineBookstore;
create database OnlineBookstore;

--switch to the database
\c OnlineBookstore;

--create tables
drop table if exists Books;
create table Books(
	Book_ID serial primary key,
	Title varchar(100),
	Author varchar(100),
	Genre varchar(100),
	Published_Year INT,
	Price NUMERIC(10,2),
	Stock INT 
);

drop table if exists Customers;
create table Customers(
Customers_ID serial primary key,
Name varchar(100),
Email varchar(100),
Phone varchar(100),
City varchar(100),
Country varchar(100)
);

drop table if exists orders;
create table orders(
Order_ID serial primary key,
Customers_ID int REFERENCES Customers(Customers_ID),
Book_ID INT REFERENCES Books(Book_ID),
Order_Date DATE,
Quantity INT,
Total_Amount NUMERIC(10,2)
);

select*From Books;
select*From Customers;
select*From orders;

--Q1.Retrive all books in the "Fiction" genre:
select*from Books
where genre='Fiction';

--Q2.Find books published after the year 1950:
select*from Books
where published_year>1950;

--Q3.List all the customers form canada:
select*from Customers
where country='Canada';

--Q4.Show orders palced in November 2023:
select *from orders
where order_date between '2023-11-01' and '2023-11-30';

--Q5.Retrive the total stock of books available:
select sum(stock) as total_stock
from Books;

--Q6.Find the details of the most expensive book:
select*from Books 
order by price DESC 
limit 1;

--Q7.Show all customers who ordered more than one quantity of a book:
select *from orders
where quantity>1;

--Q8.Retrieve all orders where the total amount exceeds $20:
select*From orders
where total_amount>20;

--Q9.List all the genre available in the book table 
select distinct genre from Books;

--Q10. Find the book with the lowest stock:
select *from Books
order by stock 
limit 1;

--Q11.calculate the total revenue generated from all orders:
select sum(total_amount) as Revenue 
from orders;

--ADVANCE QUERIES 

--Q12.Retrieve the total number of books sold for each genre:
select*from orders;

select b.genre,sum(o.quantity) as Total_books_Sold
from orders o
join Books b on o.book_id=b.book_id
group by b.Genre;

--Q13.Find the average price of books in the "Fantasy" genre:
select avg(price) as Average_price
from Books 
where genre='Fantasy';

--Q14.List customers who have placed at least 2 orders:
select o.customers_id,c.name,count(o.order_id) as ORDER_COUNT
from orders o
join customers c ON o.customers_id=c.customers_id
group by o.customers_id,c.name
having count(order_id)>=2;

--Q15.Find the most frequently ordered book:
select o.book_id,b.title,count(o.order_id) as ORDER_COUNT
from orders o
join books b on o.book_id=b.book_id
group by o.book_id,b.title
order by ORDER_COUNT DESC 
LIMIT 1;

--Q16.Show the top 3 most expensive books of 'Fantasy' genre:
select*from Books
where genre='Fantasy'
order by price DESC
limit 3;

--Q17.Retrieve the total quantity of books sold by each author:
select b.author,sum(o.quantity) as total_books_sold
from orders o
join books b on o.book_id=b.book_id
group by b.Author;

--Q18.List the cities where customers who spent over $30 are located:
select distinct c.city,total_amount
from orders o
join customers c on o.customers_id=c.customers_id
where o.total_amount>30;

--Q19.Find the customer who spent the most on orders:
select c.customers_id,c.name,sum(o.total_amount) as total_spent
from orders o
join customers c on o.customers_id=c.customers_id
group by c.customers_id,c.name
order by total_spent desc 
limit 1;

--Q20.Calculate the total stock remaining after fulfilling all orders:
select b.book_id,b.title,b.stock,coalesce(Sum(o.quantity),0) as Order_qunatity,
	b.stock-coalesce(sum(o.quantity),0) as remaining_qunatity
from books b
left join orders o on b.book_id=o.book_id
group by b.book_id
order by b.book_id;

