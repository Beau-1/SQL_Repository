-- find all products
select * from bestbuy.products;
-- find all products that cost $1400
select * from bestbuy.products where products.price = 1400.00;
-- find all products that cost $11.99 or $13.99
select * from bestbuy.products as p where p.Price = 11.99 or p.Price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
select * from bestbuy.products as p where not p.price = 11.99;
-- find all products and sort them by price from greatest to least
select * from bestbuy.products as p where p.price order by p.price desc;
-- find all employees who don't have a middle initial
select * from bestbuy.employees where middleinitial is null;
-- find distinct product prices
select distinct price from products; 
-- find all employees whose first name starts with the letter ājā
select * from employees where firstname like 'j%';
-- find all Macbooks
select * from products where name like 'mackbook%';
-- find all products that are on sale
select * from products where OnSale = 1;
-- find the average price of all products
select AVG(price) from products;
-- find all Geek Squad employees who don't have a middle initial
select * from employees where title like '%geeksquad%' and middleinitial is null;
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from products where stocklevel between 500 and 1200 order by price asc;
