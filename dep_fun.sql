-- Anelim.py - Version: 1.0.0
-- Script generated on Seg, 16 Abr 2018 01:47:34

DROP SCHEMA PUBLIC CASCADE;
CREATE SCHEMA PUBLIC;


CREATE TABLE departamentos(
    id SERIAL NOT NULL PRIMARY KEY CHECK (id>=0),
    name VARCHAR(20) NOT NULL
);
INSERT INTO departamentos(id,name) VALUES('2015141441','John Price');
INSERT INTO departamentos(id,name) VALUES('1568832895','Jason Miller');
INSERT INTO departamentos(id,name) VALUES('510990564','Michael Oliver');
INSERT INTO departamentos(id,name) VALUES('1844408901','Rachel Hernandez');
INSERT INTO departamentos(id,name) VALUES('1035148322','Clayton Lewis');
INSERT INTO departamentos(id,name) VALUES('2086137871','Jessica Fowler');
INSERT INTO departamentos(id,name) VALUES('1347709030','Maria Daniel');
INSERT INTO departamentos(id,name) VALUES('34723478','Diana Woods');
INSERT INTO departamentos(id,name) VALUES('527139525','Jennifer Zavala');
INSERT INTO departamentos(id,name) VALUES('1573663243','Jennifer Robinson');
INSERT INTO departamentos(id,name) VALUES('1912070810','Barbara Gonzales');
INSERT INTO departamentos(id,name) VALUES('1287287046','Colleen Andrade');
INSERT INTO departamentos(id,name) VALUES('237924632','Ashley Davis');
INSERT INTO departamentos(id,name) VALUES('720938094','Bryan Mclaughlin');
INSERT INTO departamentos(id,name) VALUES('1148821072','Elizabeth Baker');
INSERT INTO departamentos(id,name) VALUES('1871974180','Bryan Clark');
INSERT INTO departamentos(id,name) VALUES('2009475985','Kimberly Armstrong');
INSERT INTO departamentos(id,name) VALUES('22211937','Joshua Watts');
INSERT INTO departamentos(id,name) VALUES('1333420233','Julie Aguirre');
INSERT INTO departamentos(id,name) VALUES('1802622407','David Pearson');


CREATE TABLE funcionarios(
    id SERIAL NOT NULL PRIMARY KEY CHECK (id>=0),
    departamentoId INTEGER NOT NULL REFERENCES funcionarios CHECK (departamentoId>=0),
    name VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL
);
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('529623430','529623430','Jesse Williams','351 Ashley Ville Apt. 325
Sparksshire, SC 60536-2042','Quaerat itaque distinctio minus sequi alias. Saepe dolor aliquam.','Illo minima molestiae repudiandae. Et facilis architecto adipisci repellendus.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1676833246','529623430','Rebecca Evans','018 Andrew Prairie Apt. 333
Stephensontown, LA 08300','Praesentium impedit numquam natus nemo. Nobis distinctio molestias.','Aperiam quae blanditiis fuga. Iusto aut natus.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2084563803','2084563803','Ian Smith','704 Peck Rue Suite 055
Paulshire, GA 95806','Voluptatum commodi exercitationem corrupti explicabo. Quis consectetur odit error.','Officia maxime cupiditate excepturi accusantium voluptatum. Amet vero necessitatibus sequi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('92782073','92782073','Kimberly Mathis','38576 Brian Radial
Robertobury, NH 72572','Consequatur incidunt iusto. Deserunt possimus ad maxime. Perspiciatis recusandae doloribus.','Aperiam doloribus aliquam repellendus. Sit voluptate consequuntur temporibus quo.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('402425596','92782073','Vicki Blake','8560 Davis Port Suite 115
Andrewbury, GA 65095-1095','Qui harum ab ipsum. Occaecati voluptatum repudiandae cupiditate numquam.','Minima deleniti quis ut. Voluptatum ducimus iure natus fugiat.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1168010538','402425596','Rita Berry','71310 Alejandro Summit Apt. 716
Damonstad, NY 22013-1117','Perferendis dolorem aut veritatis. Inventore adipisci culpa deleniti ex sint et.','Earum amet quam. Nostrum ut esse vero provident. Distinctio eius officia officiis consequatur.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('184440097','184440097','Heather Archer','72885 Jennifer Ramp Suite 464
West Steveville, IN 64341-7470','Autem nobis earum numquam dolor voluptatibus. Alias soluta perspiciatis sequi.','Rem ullam sapiente eum. Magnam modi pariatur qui deleniti sint eligendi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1129977308','184440097','Sally Payne','8783 Rivers Overpass
Shannonton, AK 62186-4590','Fugiat maiores nemo iste culpa. Maxime dolore ea vel deleniti. Sed eius adipisci error sapiente.','Labore eaque necessitatibus praesentium quidem animi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2049363975','1676833246','Eric Schneider','703 Rogers Causeway
Catherinebury, NV 83602-9186','Quasi minima quibusdam.','Neque vitae cum blanditiis voluptatum nesciunt a. Quidem molestiae nulla delectus accusamus.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1802848690','92782073','Paul Gonzalez','52683 Gina Estate Suite 083
East Rebecca, PR 30721-9744','Ex in libero asperiores ipsum. Tempora vero labore totam omnis laboriosam.','Ab laboriosam dicta.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1663383871','1676833246','Heather Cohen','902 Michael Lakes
Cordovahaven, MH 65689','Ut harum quia facilis corporis aperiam. Corrupti mollitia dolorem dolor.','Iure vel nobis soluta. Dicta est eveniet sequi aut doloremque.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('763214884','529623430','Oscar Phillips','966 Vanessa Extension Apt. 394
Davisstad, AS 17267','Unde molestias magnam exercitationem. Unde voluptatum consequatur praesentium.','Tempore accusantium quos aliquam accusamus dolorem sed. Nemo minus optio vel.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1626771361','184440097','Cassandra Mathis','032 Rivera Centers Apt. 755
East Ray, CA 73063-9235','Rem non ullam vitae ipsum in cupiditate. Nihil cumque ratione.','Culpa odit molestias. Natus dignissimos rem corporis delectus.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2046317303','2046317303','Gabriel Neal','574 Randy Parkways Suite 900
New Eugeneborough, KS 44758-4733','Odit inventore labore consequuntur sapiente aperiam. Cumque placeat exercitationem et.','Eius voluptates earum deleniti aliquid maxime. Nisi sed dolor repellat officia.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('652528955','1802848690','Hailey Davis','2757 Dodson Divide Apt. 876
Hernandezside, IA 57456','Sed nemo blanditiis perspiciatis repellat. Facilis beatae dolorem corporis praesentium.','Architecto dignissimos animi qui maxime facere. Nobis vitae a perspiciatis.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('47125582','652528955','Jesse Espinoza','62066 Christopher Locks Apt. 424
Port Jennifer, GA 00076','Nemo distinctio autem ipsum perspiciatis. Rem consectetur eveniet et alias veniam eum.','Natus molestiae vero culpa. Sunt illum sequi rerum.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1168550717','1129977308','Laurie Henderson','Unit 2220 Box 4979
DPO AA 07437-3397','Commodi perferendis quis quae asperiores laudantium repellat. Quas porro quia molestias nisi.','Ipsum corporis et alias.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1840925891','92782073','James Thompson','036 Juan Landing
Lake Johnbury, PR 96783','Id qui esse adipisci doloribus minus occaecati. Eveniet illo asperiores placeat.','Necessitatibus eius incidunt nisi aut at suscipit harum. Architecto saepe modi veniam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2055637431','2055637431','Mr. Terry Nixon','67930 Natalie Cliff
Newmanbury, WI 21295','Cum nobis nam nisi.','Nulla inventore molestias voluptatum nihil dicta minima. Nemo dolores magnam dolore.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1098559549','2049363975','Derek Lopez','07561 Bell Court
Cindyshire, CA 38968','Voluptatum molestias aut nisi ducimus quasi.','Ipsum magnam minima eius quidem consectetur sint. Occaecati vel in vero quasi debitis.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1576976188','1626771361','Shelia Olson','566 Catherine Center Apt. 359
Susanside, WY 41135-5424','Harum quia nesciunt. Maxime assumenda consequatur quos.','Numquam sed aliquam reprehenderit beatae pariatur ut possimus. Fuga commodi possimus quam suscipit.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('571244360','571244360','Kelly Mcdaniel','316 John Row
Garzamouth, MP 71931-6147','Placeat esse cum id neque. Reprehenderit corrupti debitis similique porro quasi.','A ipsum minus harum voluptas voluptate. Dolores ea debitis laboriosam ipsam soluta.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('721181124','529623430','Krista Bartlett DDS','78858 Jessica Shoals
Kennethmouth, PR 80918-0030','Velit id aut porro excepturi veritatis aperiam. Pariatur autem molestiae tempore debitis.','Eos corporis fugiat ipsa sequi minus quibusdam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('8267685','184440097','Richard Walters','927 Forbes Unions Suite 545
Lake Bradleymouth, MI 79013-7271','Necessitatibus id unde. Maxime voluptates iure ratione unde ratione veniam dolorem.','Labore earum quisquam aliquam ratione. Molestias labore nihil maxime nulla quam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1981906143','1676833246','Kenneth Jackson','77751 Elliott Meadows
Williamsstad, VI 98049-1954','Tenetur autem magni facilis. Molestias omnis voluptates voluptatibus odit rem.','Ipsum accusantium ratione eius laborum quisquam similique. Inventore ipsum quia voluptas.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('812365431','2084563803','Ronald Harrison','18505 Christina Burgs Suite 193
Colleenport, NE 03517-8051','Dolor accusantium explicabo dolore voluptatem voluptates sunt a.','Magni quo numquam accusamus mollitia.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1516436161','1168550717','Brady Green','640 Roger Wall Apt. 714
Garzastad, DE 56349','Nostrum perferendis quos. Consectetur ex cupiditate nihil quas aliquid officia blanditiis.','Porro fuga iusto quae similique.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1216497767','2055637431','Amanda Miller','831 Fletcher Port Suite 346
West Savannah, HI 86382','Quidem tempora enim repudiandae. Hic illum aspernatur dolores.','Ipsum officia atque ea ipsa ipsam. Distinctio qui doloremque nihil. Eum est placeat saepe.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('796459672','1676833246','James Hudson','PSC 7667, Box 9310
APO AA 34329','Possimus est occaecati dolor. Voluptatibus ab earum quod quasi quibusdam.','Magnam accusantium facere eos. Voluptatibus dolore enim possimus quia.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1374702859','1216497767','Selena Owens','Unit 7317 Box 3695
DPO AA 19445-7555','Ex tempora recusandae doloribus dignissimos.','Id molestias amet eum. Adipisci sapiente atque autem. Repellat rerum voluptate quasi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1636892531','1802848690','Susan Warren','08251 Williams Landing Suite 037
Sanchezbury, NC 21049-0176','Impedit ullam ex accusantium. Ipsum molestiae atque autem eum esse.','Amet ut nulla voluptatibus explicabo dolore. Eveniet beatae quo itaque ipsa nesciunt.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1939037221','763214884','Todd Webb','54863 Richardson Station Suite 045
Ballside, LA 01461-8301','Dolore explicabo aut dignissimos. Cumque cupiditate at.','Eos impedit cupiditate expedita eveniet. Optio architecto voluptates consectetur.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1947643870','1216497767','Emily Blackburn','781 John Landing
North Samanthaberg, AK 94951','Delectus earum dolores natus aliquam distinctio optio repellat. Saepe exercitationem nostrum sint.','Eveniet in rerum repudiandae. Laborum quo aliquam consequatur inventore quo totam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('126271975','763214884','Tiffany Perkins','USCGC Torres
FPO AP 33015','Libero sequi sunt quaerat nihil nisi illum. Repudiandae ullam quos fugiat.','Harum voluptatem facere ut possimus in culpa.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('3976850','1676833246','Jesse Kelly','9366 Rachel Knolls
East Elizabeth, DC 93089','Porro impedit omnis laborum. Cum nemo dolor odit totam reiciendis eos.','Sit ea recusandae sed. Modi officiis ut dolorum. Culpa rerum facilis laborum aut.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1310595899','92782073','Jessica Martin','53156 Tapia Islands
Michealberg, WY 62842','Veniam expedita maiores expedita. Ipsum sequi facilis aliquam ea. Quod minus aspernatur deleniti.','Cumque necessitatibus eos quod est. Aperiam sunt nesciunt dolor eos incidunt repellendus.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('159237946','721181124','Julia Williams','186 Harvey Pines
Barrettbury, DE 58246','Soluta quibusdam veniam eos. Sit beatae doloremque omnis. Illo rerum eius quae cupiditate.','Rerum voluptates placeat sunt consequuntur. Perferendis inventore modi sed porro porro blanditiis.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1791613091','1310595899','Sandra Williams','6721 Angela Passage
Millsport, TN 18660','Impedit et debitis voluptates doloribus. Quibusdam adipisci quasi nobis ex qui quos.','Nisi hic voluptates cupiditate nam facilis nulla fuga. Pariatur quos expedita optio.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('833034173','1168010538','Becky Howard','392 Louis Fall Suite 782
Lake Connie, NM 37462-5355','At nostrum adipisci explicabo. Accusantium sit atque. Quos nobis iure.','Nulla cumque quaerat. Iste illum quidem adipisci. Quis libero labore et porro.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('845725808','1168010538','Ashley Drake','33928 Hubbard Island
East Jonathanview, NY 50863','Voluptate quas reiciendis itaque. At fugit inventore nam cumque nesciunt.','Vitae sequi laudantium et veniam totam. Natus error cum odit velit.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2122716100','1216497767','Michael Marsh','10798 Sharon Glens
Bryanfort, AK 84281','Iusto sit corporis veritatis quo recusandae repellat. Iste dolor eius veritatis.','Omnis fuga odio tempora pariatur ut ipsa fugit. Inventore dolorem illo temporibus.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('712404155','529623430','Mrs. Ashley Graham','4884 Robert Ways Apt. 565
Myersland, GA 06839-6323','Ipsa iusto magnam ipsa. Eum veritatis exercitationem iure consequuntur qui optio nostrum.','Culpa maiores ad iste ex. Possimus maiores quaerat quia quasi earum. Aspernatur minus deserunt est.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1420021182','845725808','David Young','PSC 2180, Box 7432
APO AE 42139','Voluptates enim placeat incidunt quibusdam laborum. Alias illum accusantium nostrum.','Sit architecto ratione quo consectetur et a. Saepe alias perspiciatis iusto.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1651170489','833034173','Christine Mcgrath','08208 Anderson Keys
East Kathleen, NH 31179','Fuga suscipit iste illum odit. Soluta soluta perspiciatis dolorum officiis veritatis.','Optio nam ipsam quod. Asperiores eos soluta modi laborum.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('909724222','1802848690','Gary Roberts','549 Cooley Fork
East Elizabeth, TX 07522','Nostrum dicta perspiciatis quo ea dicta quas. Dolorum eveniet nobis odit.','Atque doloribus quidem fuga voluptatibus. Quaerat quas placeat error at eos est.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('181861988','1168010538','Jennifer Hernandez','USCGC Brooks
FPO AE 70463','Iste voluptatum sed dicta nisi culpa. Ab hic maiores officia ipsa voluptate.','Omnis corrupti molestiae vitae aperiam earum nostrum. Voluptas in nemo aliquid aliquid.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('733625770','2084563803','Kevin Carter','1264 Sara Plains Suite 458
Marshallberg, VA 03949-5317','Soluta delectus ipsa mollitia. Ducimus quaerat esse error.','Alias ipsam eum fugiat nobis hic. Cupiditate excepturi inventore beatae.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1512919598','529623430','Janice Morales','03700 Jones Isle
Riverabury, WI 85874','Dicta nostrum velit aspernatur numquam.','Ducimus quaerat eum culpa vero laboriosam praesentium. At provident accusamus eligendi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('537369755','1626771361','Sandra Ramos','1830 Kimberly Haven Suite 543
Jeffreyside, NY 61377-8323','Placeat saepe placeat. Sapiente reiciendis sunt placeat voluptates nemo qui.','Sequi facere a tempore iusto sapiente. Sed ipsa mollitia ipsam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('801307996','2055637431','Natalie Ramos','33224 Donald Garden Apt. 605
Cruzfort, CA 57489','Nihil aliquam placeat neque deleniti cum repudiandae.','Eveniet fuga pariatur facere expedita sint dignissimos. Nulla omnis impedit incidunt accusantium.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1749998668','8267685','Jacqueline Martin','Unit 2630 Box 6777
DPO AA 79491','Necessitatibus aperiam repellendus. Non eius assumenda illum.','Quisquam magni corporis. A nesciunt provident deserunt aperiam. In sequi sed natus ipsam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2114774586','1791613091','Jamie Reed','480 Jordan Burg
Ashleyview, MH 80806','Minima distinctio aliquid similique delectus consequuntur.','Aspernatur architecto deserunt iste.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('307538606','1939037221','Debra Brooks','312 Sara Field
Michellemouth, NE 45984','Illum amet quasi delectus. Necessitatibus excepturi qui eum laboriosam officia.','Debitis eum perspiciatis dolorum praesentium sed.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1271776411','1676833246','Kristy Boyd','037 Gonzales Ridges Suite 169
New Joshua, NJ 79565','Incidunt laudantium pariatur ipsa. Dolorem nulla deserunt ullam.','Similique in occaecati neque dicta a soluta quos. Totam nemo dolorum in.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1158375261','909724222','Jeanette Henry','1107 Fuller Fords Apt. 292
East Andreaville, CO 38778-6709','Quasi quasi nulla ea. Iste dolore alias qui numquam. Mollitia facilis nemo debitis.','Sed quae libero delectus similique enim exercitationem.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('968232778','537369755','Pam Evans','592 Palmer Walk Apt. 973
Lydiaville, FL 07586-9180','Porro adipisci earum placeat quia pariatur voluptas. Cumque impedit deleniti.','A rem earum libero quaerat. Fugit laudantium quos.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('998527323','571244360','Michelle Buckley','7244 Delgado Extensions Apt. 348
Kathleenchester, NC 83234','Dolores nobis facilis accusamus quibusdam quam excepturi. Maiores eligendi quis esse.','Debitis eum vel velit perferendis. Ab fuga et in.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2099369638','1947643870','Vincent Hicks','44503 Turner Union Suite 968
Goodwinfort, OK 98815','Nisi voluptatibus et quia.
Similique ut temporibus officiis quo.','Adipisci quo enim rem. Accusantium ratione provident officia labore.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('408075496','1168010538','Antonio Powell','408 Nicole Highway
West Anthony, GU 79719-4328','In id quae ab corporis. Expedita sint cum laboriosam voluptatem voluptas.','Vitae ab ducimus magnam eum quia consequuntur. Optio perferendis assumenda.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('406100136','3976850','Emily Flores','668 Bridges Spur
New Joshua, VT 98425','Reprehenderit ullam corrupti fuga. Quas quibusdam ad sunt.','Iusto expedita perspiciatis dolorum. Nobis voluptatem veniam et. Voluptatem eius aliquam veritatis.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1919579725','909724222','Christine Brown','Unit 7696 Box 9192
DPO AE 20755-4017','Eos commodi veniam voluptatum ducimus. Dolorum placeat asperiores deserunt officiis vero.','Quae iste doloremque.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2081699184','1576976188','Michael Orozco','6047 Charlotte Drive
Kentfort, TN 77437-6055','Voluptas deleniti iure doloremque. Veritatis et rerum.','Quaerat explicabo amet dolores repudiandae odit. Sint cum aliquid atque.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('301131778','1271776411','William Burke','710 Dickerson Estates Apt. 651
Coryfurt, NC 75304','Sint quis in fugit. Sed in eligendi voluptas ducimus.','Praesentium ut commodi. Odio consectetur eius.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('600697708','126271975','Cynthia Maynard','471 Douglas Mill Suite 196
Douglasland, AS 06666','Earum labore deserunt ea adipisci nihil quia iste.','Et iure similique dolorem ex quia autem. Voluptate hic distinctio placeat error.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1683067752','126271975','Brandi Barr','USNV Bowman
FPO AP 97305-5364','Quam doloremque hic beatae amet cumque. Modi quisquam eveniet a incidunt sequi vitae.','Ea quae animi. Maiores corporis ducimus qui.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('766176924','571244360','Jeffrey Harmon','4120 Deborah Trail Suite 158
Martinville, HI 57963-6847','Tempora odio soluta nobis nesciunt. Sapiente ipsam sapiente ipsam cumque.','Est reprehenderit vitae possimus nobis fugit blanditiis. Saepe amet asperiores ab nobis ullam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1917141237','159237946','Kyle Mccann','USCGC Avila
FPO AP 88455-0290','Laudantium maiores rerum magnam atque dolorum.','Labore hic asperiores reiciendis necessitatibus debitis. Saepe iste distinctio recusandae unde.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1437287417','2099369638','Karen Smith','5138 Peters Street
Moraleston, TN 57638-0912','Officia reiciendis quaerat. Mollitia reiciendis iure vitae corrupti provident amet.','Voluptatibus omnis magni officia quos. Iste sed quasi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1506012062','1512919598','Matthew Parker','PSC 6881, Box 4146
APO AA 49459-7390','Cum asperiores tenetur magnam distinctio ipsum ipsa sit. Quam est nemo omnis tempore eveniet.','Alias error quos. Consequuntur beatae dignissimos aliquid amet odit.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('831569947','1098559549','Samantha Patel','96008 Schwartz Mall
East Tony, PW 66456-0247','Repellat ipsam earum similique ex velit. Quia eveniet perspiciatis.','Accusamus odit rerum quasi ipsa. Facilis repellat ducimus inventore deleniti.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1034123551','1098559549','Richard Crawford','71774 Rebecca Groves
East Christinechester, NE 83820-4757','Modi tempore hic accusamus tempore sunt quibusdam. Repellat nostrum molestias debitis.','Quidem quibusdam eius corporis et. Quasi adipisci tempora.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1175320367','763214884','Dominic Beltran','917 Collins Burg
South Leahside, MN 25324-8372','Ipsa consectetur voluptates eaque. Quas sed illo.','Saepe labore ipsa alias commodi esse sequi. Nisi aperiam dolores iste. Quae porro fuga.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('736588763','801307996','Paul Brennan','6073 Vasquez Mountains Suite 644
Sanderschester, ID 45336-8623','Dolorum sed officiis. Dolorum cupiditate ea ad consectetur tempora.','Sit in ad. Illo sapiente assumenda voluptate sapiente.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1012873674','733625770','Richard Chapman','0446 Martinez Island Suite 673
Kimberlyshire, AL 22875','Aliquid ex aliquam voluptatibus laborum. Fuga ad minus dolor veniam alias voluptatibus.','Dicta accusamus deserunt ab.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1928796484','1129977308','Heidi Reed','289 Richard Pike
North Stephentown, MI 28550','Non assumenda illo hic ratione quia debitis. Harum hic eum ab corporis.','Unde in porro minus molestiae nostrum. Saepe mollitia illum officia saepe vel commodi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('274562610','1917141237','Jennifer Peterson','806 Perry Road
Weavermouth, MI 35707-9619','Veritatis recusandae fuga molestias. Vel consequatur vel odio.','Laboriosam quia itaque suscipit consectetur. Tempore impedit ex totam maxime.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1927215713','2114774586','Yolanda Campbell','389 Parker Wall Suite 595
South Matthewtown, OH 04952-4481','Voluptate in architecto quasi occaecati. Consequuntur accusantium animi possimus natus.','Et quibusdam officiis nemo voluptatem doloribus laudantium.
Repellendus dolorum odit delectus sed.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1091932392','1939037221','Kelly Martinez','408 Wang Pines Apt. 695
Robertmouth, WA 36842-0846','Autem voluptatem exercitationem provident illum. Eius exercitationem nemo ut minima.','Sit laudantium ipsa necessitatibus. Quisquam reiciendis architecto vel.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('868115747','1512919598','Miranda Silva','380 Krystal Via
Port Jennifer, MP 36309-3560','Aperiam enim cum ea. Impedit cupiditate quae.','Facere aperiam recusandae nihil amet quibusdam fuga eaque.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('206776978','8267685','Kristen Hall','4507 Brandi Spurs
East Megan, DE 17683-5250','Commodi dolores magnam officia rerum omnis enim. Sequi error atque nulla repudiandae voluptatum.','Fugit architecto rem dolores aperiam. Eos distinctio facere quae dolor accusamus cum iusto.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('975415458','529623430','Lisa Rogers','5299 Vincent Curve Apt. 912
Lisachester, MN 44959-8695','Atque ipsam dolorum pariatur ducimus enim laborum. Culpa fuga maxime saepe. Enim minus non maiores.','Fugiat debitis pariatur veniam. Consequuntur aut unde. Iste animi tempore aperiam omnis.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('664798677','1749998668','Pedro Williams','4441 Berry Center
North Cherylville, SD 23002','Culpa placeat qui quod itaque totam. Suscipit ut nihil quisquam delectus tempora natus a.','Quod repellendus modi eveniet nostrum. Molestias possimus mollitia et natus amet.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('899299231','2122716100','Amber Hawkins','11344 Jason Land Suite 451
West Thomas, VT 87385-9471','Saepe numquam et et beatae sit. Deserunt vero repellendus debitis.','Asperiores reprehenderit velit. Totam necessitatibus tempore. Veritatis neque excepturi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2006392832','1098559549','Jacqueline Gilbert','17386 Becky Circle
Port Sierrafort, WY 46961','Deleniti harum vel. Debitis facilis nesciunt. Ab dolorum eligendi repudiandae suscipit.','Perspiciatis assumenda nemo nesciunt porro. Totam sapiente occaecati totam amet vitae quis odit.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('680268324','307538606','Shelby Perez','16243 Estes Expressway Suite 476
Robinside, NJ 17527','Rem sit dolores quidem. In et veniam vitae quibusdam ratione earum. Sunt sint tenetur.','Odio voluptates totam ea accusantium maiores. Perferendis suscipit delectus libero.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('870959036','1420021182','Tiffany Allen','01081 Tammy Gateway
Port Jesse, MD 49453','Sequi magni atque architecto. Incidunt quam quo delectus.','Vel temporibus consequuntur.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1012209435','733625770','Victor Edwards','75553 Hampton Ranch
Johnton, IL 71410-9275','Tempora et incidunt repudiandae commodi laborum. Eos omnis veritatis aperiam perferendis.','Harum illo ducimus ea modi. Architecto inventore praesentium. Ullam occaecati totam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('342288863','1168550717','Jeremy Roberts','189 Lisa Course Apt. 124
Kingfort, NY 38920-9038','Voluptas eaque ex. Itaque debitis corrupti omnis hic voluptas nostrum soluta.','Provident nulla accusantium. Praesentium aliquam est nobis ipsam praesentium officiis doloribus.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('626105610','1947643870','Heather Hill','69873 Mary Skyway
Port Erikview, MS 75738','Deleniti ea dolorum magnam recusandae porro cumque. Rerum aspernatur a optio.','Sequi adipisci explicabo ullam culpa delectus iure. Exercitationem provident fuga voluptas.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1397185478','1663383871','Debra Duran','PSC 0912, Box 5713
APO AP 64997-4552','Beatae ut commodi rerum veniam dolores.','Harum expedita quam dolore. Nostrum doloremque laborum eos deserunt a odio.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1442509588','47125582','Jill English','3180 Lopez Tunnel
New Williamside, TN 49326-5833','Tempora quo possimus vel.
Aspernatur ea delectus facilis. Porro veritatis voluptatum adipisci.','Magnam saepe porro neque dicta eum perferendis.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('2060742891','1129977308','Brandi Diaz','505 Betty Greens Apt. 977
Reginachester, FM 80513-8048','Asperiores suscipit quis dignissimos delectus. Consequuntur eius reprehenderit autem totam aperiam.','Aut incidunt ad inventore. Aspernatur quod error dicta eius expedita commodi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('875925089','529623430','Leslie Miller','0001 Brenda Island Apt. 526
North Jennifer, FL 95370-0543','Accusantium voluptates ullam minima id omnis. Facilis qui necessitatibus dolorem.','Mollitia recusandae sit ipsam aperiam. Illo repellat fugit.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('674362612','1175320367','Destiny Mcintosh','2383 Brandon Trail
North Georgeport, WI 29201','Deserunt at eos animi. In natus ipsa vero ut dolore.','Numquam earum a eos sunt. Odit qui vel repellat iure delectus.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1429676663','1034123551','Kaylee Manning','523 Rodriguez Rest
West Kelly, AL 76563','Laudantium quos laborum nam sunt ducimus. Facilis reiciendis illum fugit magnam ut nihil.','Consequatur assumenda eum mollitia sit. Nulla eligendi temporibus dicta quam.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1141572904','2122716100','Taylor Watson','1012 Amy Falls
West Valeriemouth, MD 95430','Voluptatibus minus labore enim.','Velit blanditiis maxime temporibus magnam vitae. Maxime accusantium totam iure labore neque.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1180620075','664798677','David Morris','553 Chavez Throughway
Lake Taylorstad, TX 58647','Deserunt sint aliquid aspernatur libero architecto aspernatur. Enim facilis enim illo.','Veniam aut ab alias cupiditate. At aspernatur commodi laborum excepturi.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('910769262','1442509588','Evan Meyer','5216 Steele Mountains Suite 693
Martinezland, LA 63187','Explicabo quos corporis dolorum assumenda. Iure odit eum vitae dolorum qui at.','Veniam magni ipsum. Id vitae totam eum quod.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('1965479410','1168010538','Jeremy Shepherd','89556 Donald Course
Annaside, MN 63838-2741','Voluptatem non reprehenderit commodi consequatur. Aut illo autem accusantium distinctio.','Explicabo ullam dicta dolorum debitis odit.');
INSERT INTO funcionarios(id,departamentoId,name,address,email,phone) VALUES('81499965','2055637431','Amanda Stephens','5261 Mark Fields Suite 500
Davidchester, OH 67853','Cumque expedita quos dolorum nesciunt et.','Recusandae quia cumque nemo sequi quis rerum. Quod animi consectetur explicabo.');

