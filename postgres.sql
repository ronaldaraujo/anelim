INSERT INTO users(id,nome) VALUES('-37558353','Quasi.')
INSERT INTO users(id,nome) VALUES('2108194133','Omnis at.')
INSERT INTO users(id,nome) VALUES('-402363329','Fugiat.')
INSERT INTO users(id,nome) VALUES('-524964539','Voluptate.')
INSERT INTO users(id,nome) VALUES('709493758','Repudiandae.')
INSERT INTO users(id,nome) VALUES('-253211073','Molestiae.')
INSERT INTO users(id,nome) VALUES('1395213761','Repudiandae.')
INSERT INTO users(id,nome) VALUES('-258739910','Nobis.')
INSERT INTO users(id,nome) VALUES('-1111002358','Animi.')
INSERT INTO users(id,nome) VALUES('2063016862','Tenetur.')
INSERT INTO users(id,nome) VALUES('1382747515','Quas.')
INSERT INTO users(id,nome) VALUES('2082898412','Nostrum.')
INSERT INTO users(id,nome) VALUES('-136353149','Occaecati.')
INSERT INTO users(id,nome) VALUES('-1939757646','Officia.')
INSERT INTO users(id,nome) VALUES('-1499106853','Alias.')
INSERT INTO users(id,nome) VALUES('-1048496146','Dolorum.')
INSERT INTO users(id,nome) VALUES('-505119472','Culpa quam.')
INSERT INTO users(id,nome) VALUES('327821559','Magnam.')
INSERT INTO users(id,nome) VALUES('-2020376117','Assumenda.')
INSERT INTO users(id,nome) VALUES('543497947','Similique.')

INSERT INTO products(id,name,description,quantity) VALUES('1726950433','Facere.','Nemo exercitationem molestiae soluta. Placeat labore quisquam natus pariatur quia.','19026')

INSERT INTO orders(id,fk_user,date_ordered) VALUES('892890744','543497947','1987-09-20')
INSERT INTO orders(id,fk_user,date_ordered) VALUES('1647976009','-2020376117','1996-11-12')

INSERT INTO order_details(id,fk_orders,fk_products) VALUES('541669939','1647976009','1726950433')

