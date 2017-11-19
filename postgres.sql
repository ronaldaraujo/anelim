INSERT INTO users(id,nome) VALUES('1070657226','Error rem.')

INSERT INTO products(id,name,description,quantity) VALUES('1399635598','Incidunt.','Quisquam dolorem modi rem sint. Deserunt expedita vitae beatae dolorum omnis quisquam dignissimos.','23234')
INSERT INTO products(id,name,description,quantity) VALUES('1954701800','Sint.','Eaque dolor nihil corrupti dolorum. Sint possimus labore impedit saepe nihil accusamus tenetur.','20556')

INSERT INTO orders(id,fk_user,date_ordered) VALUES('878810241','1070657226','1994-10-29')
INSERT INTO orders(id,fk_user,date_ordered) VALUES('935814912','1070657226','2010-07-30')

INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1306987002','935814912','1399635598')
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('707394282','935814912','1399635598')
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('930306324','878810241','1399635598')
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1292626981','935814912','1954701800')
INSERT INTO order_details(id,fk_orders,fk_products) VALUES('1327240352','935814912','1399635598')

