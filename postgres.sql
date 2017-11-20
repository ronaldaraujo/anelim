
CREATE TABLE users(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    nome VARCHAR(12)
);
INSERT INTO users(id,nome) VALUES('1158071698','Sunt.');


CREATE TABLE products(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    name VARCHAR(12),
    description VARCHAR(100) NOT NULL,
    quantity SMALLINT NOT NULL
);
INSERT INTO products(id,name,description,quantity) VALUES('227415364','Quod.','Minima corporis fugit itaque. Odit aperiam quibusdam totam.','7446');
INSERT INTO products(id,name,description,quantity) VALUES('694239624','Recusandae.','Amet assumenda rem. Unde iusto reiciendis sunt.','22631');


CREATE TABLE orders(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    fk_user INTEGER CHECK (fk_user>=0),
    date_ordered DATE
);
INSERT INTO orders(id,fk_user,date_ordered) VALUES('1554260789','1158071698','1984-11-18');
INSERT INTO orders(id,fk_user,date_ordered) VALUES('1226039138','1158071698','1990-08-21');


CREATE TABLE order_details(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    fk_orders INTEGER CHECK (fk_orders>=0),
    fk_products INTEGER CHECK (fk_products>=0)
);
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('574240471','1554260789','694239624');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1862349432','1226039138','694239624');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1223373396','1226039138','227415364');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1697388636','1226039138','694239624');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1919088462','1226039138','227415364');

