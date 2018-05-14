-- Anelim.py - Version: 1.0.0
-- Script generated on Qua, 18 Abr 2018 12:25:02

DROP SCHEMA PUBLIC CASCADE;
CREATE SCHEMA PUBLIC;


CREATE TABLE departamentos(
    id SERIAL NOT NULL PRIMARY KEY CHECK (id>=0),
    name VARCHAR(20) NOT NULL
);
INSERT INTO departamentos(id,name) VALUES('2119058944','Dr. Angela Ashley');
INSERT INTO departamentos(id,name) VALUES('1169897871','Andrew Thompson');


CREATE TABLE funcionarios(
    id SERIAL NOT NULL PRIMARY KEY CHECK (id>=0),
    departamentoId INTEGER NOT NULL REFERENCES funcionarios CHECK (departamentoId>=0),
    name VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL
);
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('885390177','885390177','Andrew Miller','7991 Susan Greens
Port Bryantown, CA 23011-9200','Dolor harum ab ea adipisci natus quo. Nihil doloremque reiciendis ex laudantium.','Velit corporis quos eaque ut. Quisquam exercitationem minima labore eos illo.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1840833164','1840833164','Kelly Haas','673 George Street Suite 944
Angelaville, GU 27730','Vitae assumenda quo adipisci dolorem omnis. Cum asperiores ducimus ab quaerat quam.','Consectetur rem labore. Autem repellendus accusamus aliquid.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1515784214','885390177','Michael Phelps','411 Davis Summit Apt. 301
West Lawrencetown, VT 55269','Reiciendis aperiam natus optio. Laboriosam nostrum quisquam rem impedit impedit.','Cupiditate nihil quaerat. Eum occaecati temporibus praesentium nam eveniet.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('66690763','885390177','Michelle Baker','583 Jo Shoal
Lake Gerald, NV 48719','Similique autem iusto doloribus. Illum nesciunt sit asperiores alias non.','Dolor voluptatem maxime fugit. Temporibus praesentium culpa culpa illum excepturi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('926549649','926549649','Mario Richards','36822 Christopher Estates Apt. 152
Taylorfort, AL 74884-0538','Consectetur optio ea unde qui voluptatem. Explicabo in libero pariatur laborum.','Numquam unde illum et fugit repudiandae.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1771898498','66690763','Brenda Gray','8544 Micheal Dale
Aguilarborough, OK 29567','Totam placeat illo debitis modi sint optio iure. Exercitationem sit voluptas nisi.','Harum praesentium veritatis nihil sequi sint. Velit saepe ex repellat vitae voluptatibus voluptate.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1091553548','1515784214','Kevin Williams','12677 Rasmussen Plaza
East Candice, SC 13160','Earum tempore quo odio molestias magni. Ut necessitatibus id excepturi dolorem corrupti iste.','Nemo iste odio mollitia. A fugit necessitatibus nesciunt placeat similique occaecati et.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1412343500','1091553548','Kayla Gray','3057 Jennifer Loop
East Patrickton, IA 40071','Optio aperiam est ipsa veritatis. Molestiae eaque iste ipsum.','Debitis molestias rem placeat delectus. Facere eum impedit quam optio vel numquam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1441786161','66690763','Debbie Gardner','10989 Pineda Flat Apt. 227
Leebury, MH 63693-0049','Quisquam expedita veniam molestias magnam. Expedita ducimus eum eligendi.','Tempore necessitatibus quas optio quae vel. Sint ducimus minus quaerat.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1678832987','926549649','Dr. Melissa Marshall MD','Unit 7063 Box 7006
DPO AP 81699','Blanditiis omnis aut inventore sequi. Quis qui ut exercitationem earum quidem aut.','Laudantium temporibus aut repellendus est cupiditate. Placeat reprehenderit aliquid rerum.');

