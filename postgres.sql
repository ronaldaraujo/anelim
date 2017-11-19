CREATE TABLE users
INSERT INTO users(id,nome) VALUES('630570896','Sed ipsa.')

CREATE TABLE products
INSERT INTO products(id,name,description,quantity) VALUES('449579401','Incidunt.','Quisquam saepe consectetur voluptatibus assumenda dicta. Ea sunt dolore est.','-32521')
INSERT INTO products(id,name,description,quantity) VALUES('1546286956','Nobis enim.','Distinctio minima in voluptatibus neque. Ullam quibusdam laborum ratione rem accusamus et quidem.','4044')

CREATE TABLE orders
INSERT INTO orders(id,fk_user,date_ordered) VALUES('1649349400','630570896','1976-10-19')
INSERT INTO orders(id,fk_user,date_ordered) VALUES('988414300','630570896','1982-12-03')

CREATE TABLE order_details
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1846802462','988414300','449579401')
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('467696635','1649349400','1546286956')
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('938815009','988414300','1546286956')
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('993373566','1649349400','449579401')
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1026194351','1649349400','449579401')

