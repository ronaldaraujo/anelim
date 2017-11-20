
-- Anelim.py - Version: 1.0.0
-- Script generated on seg, 20 nov 2017 17:17:24

DROP SCHEMA PUBLIC CASCADE;
CREATE SCHEMA PUBLIC;

CREATE TABLE users(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    nome VARCHAR(12),
    teste NUMERIC
);
INSERT INTO users(id,nome,teste) VALUES('1111124177','Tempore.','66034.558259');


CREATE TABLE products(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    name VARCHAR(12),
    description VARCHAR(100) NOT NULL,
    quantity SMALLINT NOT NULL
);
INSERT INTO products(id,name,description,quantity) VALUES('1096802915','Amet qui.','Sunt eius in facere totam cum. Quod vitae hic vel.','-29563');
INSERT INTO products(id,name,description,quantity) VALUES('103730595','Deleniti.','Recusandae laborum reprehenderit necessitatibus.','7599');


CREATE TABLE orders(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    fk_user INTEGER REFERENCES users CHECK (fk_user>=0),
    date_ordered DATE
);
INSERT INTO orders(id,fk_user,date_ordered) VALUES('982259380','1111124177','2004-06-02');
INSERT INTO orders(id,fk_user,date_ordered) VALUES('1416479662','1111124177','2008-10-20');


CREATE TABLE order_details(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    fk_orders INTEGER REFERENCES orders CHECK (fk_orders>=0),
    fk_products INTEGER REFERENCES products CHECK (fk_products>=0)
);
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('51164614','982259380','103730595');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1801254425','982259380','103730595');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('221968699','1416479662','1096802915');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1161680890','1416479662','103730595');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1772580985','982259380','103730595');

