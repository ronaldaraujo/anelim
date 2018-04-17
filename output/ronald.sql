-- Anelim.py - Version: 1.0.0
-- Script generated on Ter, 17 Abr 2018 13:51:16

DROP SCHEMA PUBLIC CASCADE;
CREATE SCHEMA PUBLIC;


CREATE TABLE departamentos(
    id SERIAL NOT NULL PRIMARY KEY CHECK (id>=0),
    name VARCHAR(20) NOT NULL
);
INSERT INTO departamentos(id,name) VALUES('2114750315','Ronnie Sharp');
INSERT INTO departamentos(id,name) VALUES('142371168','Brittany Hamilton');


CREATE TABLE funcionarios(
    id SERIAL NOT NULL PRIMARY KEY CHECK (id>=0),
    departamentoId INTEGER NOT NULL REFERENCES funcionarios CHECK (departamentoId>=0),
    name VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL
);
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('861942451','861942451','Cassandra Johnson','USNS Clark
FPO AE 75857','Quo harum eveniet libero porro. Aperiam magni reprehenderit eius laborum amet.','Harum excepturi odio quas alias illum. Accusamus dolore sit quasi atque labore.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1871534338','1871534338','Patrick Massey','9146 Drake Wall Suite 679
West Micheleborough, MI 10609-0834','Dicta architecto laboriosam culpa dolor eius. Dolorum voluptas ullam quas laudantium beatae.','Animi velit sit repellat dolore fugiat. Occaecati maxime occaecati error nostrum sunt.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('912493137','1871534338','Teresa Callahan','16371 Melissa Hills Suite 564
South Rebecca, AZ 17199','Eos possimus nostrum tempora. Veniam sint praesentium quos distinctio rerum corporis.','Recusandae earum amet atque ad itaque voluptatum debitis.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('702530489','861942451','Todd Moran','37886 James Key Suite 519
Diazville, CO 70748','Aspernatur aliquid odio officiis beatae nam delectus.','Aliquid pariatur accusamus tempora architecto blanditiis amet. Amet nesciunt aut officia sequi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('944452431','861942451','Connie Solomon','65200 Daniels Haven
New Valerie, NH 54527-0930','Placeat sit iusto consequuntur quo. Eum molestias iste vero. Quod totam voluptate blanditiis.','Porro sint modi delectus quam. Fuga deleniti nobis maxime pariatur nulla impedit.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1314214428','861942451','Sandra Ortiz','9624 Victoria Loaf
North Mary, WI 25408-3970','Ut iste officia laboriosam doloribus.','Velit repellat laudantium autem quos non quas. Voluptatem blanditiis eos dolorum.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('515732151','1871534338','Aaron Contreras','305 Foster Meadows Apt. 766
South Briannaland, AK 74225-4623','Cum labore eligendi voluptatum aspernatur. Odit quaerat numquam alias rem voluptatibus hic.','Tempore iusto rerum occaecati. Nihil at culpa aperiam quaerat impedit eius mollitia.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('283338574','515732151','Jamie Mendoza','0385 Wilcox Row Apt. 390
Brianfort, MA 77930','Itaque eaque beatae ipsa commodi. Dolorum neque sunt accusantium hic reiciendis ea.','Ipsam accusantium ab sapiente quis beatae. Rerum accusantium soluta odio. Nemo nisi unde.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('411589966','912493137','Brenda Solomon','6747 Allen Parks
Port Raymond, MT 46283-6587','Debitis inventore architecto necessitatibus quos. Sit rerum possimus quod quasi eos.','Perferendis sequi veniam at adipisci accusamus expedita.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1500804736','283338574','Steve Sandoval','88165 Jacob Burgs Suite 982
South Davidfort, IA 44813','Adipisci tenetur non officia doloremque. Asperiores ducimus aliquam ad.','Id ullam debitis vero culpa. Ad sint sunt dignissimos excepturi eligendi.');

