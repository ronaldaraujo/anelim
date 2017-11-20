-- Anelim.py - Version: 1.0.0
-- Script generated on seg, 20 nov 2017 18:13:18

DROP SCHEMA PUBLIC CASCADE;
CREATE SCHEMA PUBLIC;


CREATE TABLE users(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    nome VARCHAR(12),
    teste NUMERIC
);
INSERT INTO users(id,nome,teste) VALUES('1698748884','Saepe amet.','71947.351065');


CREATE TABLE products(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    name VARCHAR(12),
    description VARCHAR(100) NOT NULL,
    quantity SMALLINT NOT NULL
);
INSERT INTO products(id,name,description,quantity) VALUES('167667718','Adipisci.','Ad aspernatur omnis optio odit. Cum iste voluptate error inventore laudantium.','32424');
INSERT INTO products(id,name,description,quantity) VALUES('1061633148','Deleniti.','Perspiciatis saepe enim minima dolore quia vitae. Nihil alias illum.','2834');


CREATE TABLE orders(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    fk_user INTEGER REFERENCES users CHECK (fk_user>=0),
    date_ordered DATE
);
INSERT INTO orders(id,fk_user,date_ordered) VALUES('1300809629','1698748884','1979-02-19');
INSERT INTO orders(id,fk_user,date_ordered) VALUES('1419272608','1698748884','1978-08-10');


CREATE TABLE order_details(
    id INTEGER PRIMARY KEY CHECK (id>=0),
    fk_orders INTEGER REFERENCES orders CHECK (fk_orders>=0),
    fk_products INTEGER REFERENCES products CHECK (fk_products>=0)
);
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1869156592','1419272608','1061633148');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('911394533','1419272608','1061633148');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1842004619','1300809629','167667718');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1870644752','1300809629','1061633148');
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1483114414','1300809629','1061633148');

