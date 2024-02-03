######################################################## DDL & DML ########################################################
-- seleciona tudo daqui pra baixo de da CTRL + ENTER

drop database if exists exemplo_fin;
create database if not exists exemplo_fin;
use exemplo_fin;

drop table if exists vendas;
drop table if exists cupons;


set foreign_key_checks=0;


create table if not exists vendas (
	participanteId int primary key auto_increment,
    pedidoId int,
    nome text,
	dataVenda date,
	evento text,
	ingresso text,
    lote text,
    loteId int,
    cupomId smallint,
	loteValor decimal(10,2),
	txEvento decimal(10,2),
    statusPGTO enum('pago', 'cancelado', 'ativo', 'chargeback', 'pendente') default 'pago',
    formaPGTO enum('cartao', 'boleto', 'pix'),
    parcelas smallint,
    foreign key (cupomId) references cupons(id)
);



create table if not exists cupons (
	id smallint primary key auto_increment,
    codigo text,
    tipo enum('fixo','percentual'),
    aplicacao enum('tudo','alguns'),
    lotesIds text,
    valor decimal(10,2)
);


INSERT INTO vendas VALUES (participanteId, 4558, "ANDREW ANTHONY ABATE", '2024-01-25', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 4558, "VINCENT PAUL ABATE", '2024-01-25', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 4558, "LAURENCE CHRISTOPHER ABEL", '2024-01-25', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 4559, "WILLIAM F. ABRAHAMSON", '2024-01-15', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 4559, "RICHARD ANTHONY ACETO", '2024-01-15', "Maruba", "Plus", "day 2", 12, 1, 80, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 4562, "PAUL ACQUAVIVA", '2024-02-02', "Maruba", "Plus", "day 2", 12, 3, 80, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 4565, "DONALD LAROY ADAMS", '2024-01-25', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 4567, "SHANNON LEWIS ADAMS", '2024-02-03', "Maruba", "Standard", "day 1", 11, 4, 160, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 4576, "STEPHEN GEORGE ADAMS", '2024-02-12', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 4579, "IGNATIUS UDO ADANGA", '2024-01-20', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4583, "CHRISTY A. ADDAMO", '2024-01-31', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4601, "TERENCE EDWARD ADDERLEY JR.", '2024-01-25', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 4642, "SOPHIA B. ADDO", '2024-01-30', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4780, "LEE ADLER", '2024-02-08', "Maruba", "Plus", "day 3", 13, 4, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4787, "DANIEL THOMAS AFFLITTO", '2024-02-08', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4799, "EMMANUEL AKWASI AFUAKWAH", '2024-01-28', "Maruba", "Plus", "day 3", 13, 2, 90, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 4812, "ALOK AGARWAL", '2024-02-05', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4814, "DAVID SCOTT AGNES", '2024-02-03', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 4815, "JOANNE MARIE AHLADIOTIS", '2024-02-08', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 4820, "SHABBIR AHMED", '2024-02-11', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4820, "TERRANCE ANDRE AIKEN", '2024-02-11', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4821, "TRUDI M. ALAGERO", '2024-01-15', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4830, "ANDREW ALAMENO", '2024-02-08', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4843, "JON LESLIE ALBERT", '2024-02-08', "Maruba", "Standard", "day 3", 13, 2, 200, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 4843, "PETER CRAIG ALDERMAN", '2024-02-08', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 4837, "JACQUELYN DELAINE ALDRIDGE-FREDERICK", '2024-01-27', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 4848, "DAVID D. ALGER", '2024-02-03', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4853, "EDWARD L. ALLEGRETTO", '2024-01-16', "Maruba", "VIP", "day 3", 13, 1, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4841, "JOSEPH RYAN ALLEN", '2024-01-26', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4852, "RICHARD L. ALLEN", '2024-01-23', "Maruba", "VIP", "day 3", 13, 1, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4851, "CHRISTOPHER E. ALLINGHAM", '2024-02-07', "Maruba", "Standard", "day 3", 13, 2, 200, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 4866, "JANET MARIE ALONSO", '2024-02-07', "Maruba", "VIP", "day 1", 11, 4, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4874, "ANTHONY ALVARADO", '2024-01-29', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4877, "ANTONIO JAVIER ALVAREZ", '2024-01-29', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 4878, "VICTORIA ALVAREZ-BRITO", '2024-01-28', "Maruba", "Standard", "day 2", 12, 1, 180, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 4885, "TELMO E. ALVEAR", '2024-02-05', "Maruba", "Plus", "day 2", 12, 1, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4883, "CESAR AMORANTO ALVIAR", '2024-01-29', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 4888, "ANGELO AMARANTO", '2024-01-23', "Maruba", "VIP", "day 3", 13, 2, 140, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 4891, "KAZUHIRO ANAI", '2024-02-06', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4892, "KERMIT CHARLES ANDERSON", '2024-02-08', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 4896, "MICHAEL ROURKE ANDREWS", '2024-01-22', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 4897, "JEAN ANN ANDRUCKI", '2024-01-15', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 4901, "SIEW-NYA ANG", '2024-02-08', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 4912, "LAURA ANGILLETTA", '2024-01-16', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 4913, "DOREEN J. ANGRISANI", '2024-02-14', "Maruba", "VIP", "day 3", 13, 4, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4917, "LORRAINE ANTIGUA", '2024-02-09', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4920, "PETER PAUL APOLLO", '2024-02-13', "Maruba", "Plus", "day 2", 12, 1, 80, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 4919, "FRANK THOMAS AQUILINO", '2024-02-08', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 4925, "MICHAEL J. ARMSTRONG", '2024-02-13', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 4926, "JACK CHARLES ARON", '2024-02-09', "Maruba", "VIP", "day 1", 11, 2, 100, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 4922, "JOSHUA TODD ARON", '2024-01-29', "Maruba", "VIP", "day 1", 11, 1, 100, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 4922, "RICHARD AVERY ARONOW", '2024-01-29', "Maruba", "Plus", "day 2", 12, 1, 80, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 4928, "MICHAEL A. ASCIAK", '2024-01-20', "Maruba", "Plus", "day 1", 11, 1, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4946, "MICHAEL EDWARD ASHER", '2024-01-28', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4950, "JANICE MARIE ASHLEY", '2024-02-01', "Maruba", "Standard", "day 2", 12, 1, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4954, "THOMAS J. ASHTON", '2024-01-25', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 4965, "MANUEL O. ASITIMBAY", '2024-02-13', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4966, "JAMES AUDIFFRED", '2024-01-26', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4969, "EZRA AVILES", '2024-02-06', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 4971, "SANDY AYALA", '2024-02-05', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4974, "ARLENE T. BABAKITIS", '2024-02-14', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 4979, "EUSTACE R. BACCHUS", '2024-01-23', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 4980, "JOHN J. BADAGLIACCA", '2024-02-03', "Maruba", "VIP", "day 3", 13, 1, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4981, "JANE ELLEN BAESZLER", '2024-01-15', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4986, "ANDREW J. BAILEY", '2024-02-14', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 4988, "TATYANA BAKALINSKAYA", '2024-01-20', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 4998, "MICHAEL S. BAKSH", '2024-02-11', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5008, "SHARON M. BALKCOM", '2024-02-13', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5012, "MICHAEL ANDREW BANE", '2024-01-28', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5013, "KATHERINE BANTIS", '2024-01-25', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5029, "PAUL VINCENT BARBARO", '2024-02-10', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5037, "COLLEEN ANN BARKOW", '2024-02-14', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5039, "DAVID MICHAEL BARKWAY", '2024-01-18', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5041, "EVAN JAY BARON", '2024-02-04', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5045, "RENEE BARRETT-ARJUNE", '2024-01-31', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5047, "SCOTT D. BART", '2024-02-03', "Maruba", "Plus", "day 1", 11, 1, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5048, "CARLTON W. BARTELS", '2024-01-31', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5054, "GUY BARZVI", '2024-01-21', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5063, "INNA B. BASINA", '2024-01-30', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5068, "ALYSIA CHRISTINE BURTON BASMAJIAN", '2024-02-10', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5067, "KENNETH WILLIAM BASNICKI", '2024-01-16', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5069, "PAUL JAMES BATTAGLIA", '2024-01-19', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5074, "W. DAVID BAUER", '2024-01-29', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5075, "IVHAN LUIS CARPIO BAUTISTA", '2024-01-29', "Maruba", "VIP", "day 3", 13, 1, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5078, "MARLYN CAPITO BAUTISTA", '2024-01-29', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5079, "MICHELE BEALE", '2024-02-11', "Maruba", "VIP", "day 1", 11, 2, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5083, "JANE S. BEATTY", '2024-02-13', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5088, "LAWRENCE IRA BECK", '2024-01-15', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5088, "MARIA A. BEHR", '2024-01-15', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5094, "YELENA BELILOVSKY", '2024-02-12', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5095, "NINA PATRICE BELL", '2024-02-05', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5097, "DEBBIE S. BELLOWS", '2024-01-20', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5102, "BRYAN CRAIG BENNETT", '2024-01-23', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5103, "ERIC L. BENNETT", '2024-02-02', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5104, "OLIVER BENNETT", '2024-02-07', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5108, "MARGARET L. BENSON", '2024-01-15', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5112, "DOMINICK J. BERARDI", '2024-02-12', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5112, "ALVIN BERGSOHN", '2024-02-12', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5123, "DANIEL DAVID BERGSTEIN", '2024-01-22', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5124, "MICHAEL J. BERKELEY", '2024-01-17', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5133, "DONNA M. BERNAERTS", '2024-02-07', "Maruba", "VIP", "day 3", 13, 2, 140, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5150, "WILLIAM H. BERNSTEIN", '2024-02-04', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5185, "DAVID M. BERRAY", '2024-02-03', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5188, "WILLIAM REED BETHKE", '2024-01-21', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5192, "TIMOTHY D. BETTERLY", '2024-02-07', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5197, "EDWARD FRANK BEYEA", '2024-01-24', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5198, "ANIL TAHILRAM BHARVANEY", '2024-02-12', "Maruba", "VIP", "day 3", 13, 1, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5200, "BELLA J. BHUKHAN", '2024-01-19', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5201, "GARY EUGENE BIRD", '2024-01-19', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5207, "JOSHUA DAVID BIRNBAUM", '2024-02-01', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5207, "ALBERT BALEWA BLACKMAN JR.", '2024-02-01', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5207, "JANICE LEE BLANEY", '2024-02-01', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5210, "CRAIG MICHAEL BLASS", '2024-01-28', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5214, "MICHAEL ANDREW BOCCARDI", '2024-01-24', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5213, "JOHN PAUL BOCCHI", '2024-01-24', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5216, "BRUCE DOUGLAS BOEHM", '2024-01-29', "Maruba", "Standard", "day 3", 13, 2, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5221, "NICHOLAS ANDREW BOGDAN", '2024-01-27', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5228, "VINCENT M. BOLAND JR.", '2024-02-09', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5232, "ANDRE BONHEUR JR.", '2024-01-17', "Maruba", "Plus", "day 3", 13, 4, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5233, "COLIN ARTHUR BONNETT", '2024-02-01', "Maruba", "Standard", "day 1", 11, 2, 160, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5233, "YVONNE LUCIA BONOMO", '2024-02-01', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5236, "SEAN BOOKER SR.", '2024-01-28', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5247, "MARTIN MICHAEL BORYCZEWSKI", '2024-01-27', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5250, "RICHARD EDWARD BOSCO", '2024-01-24', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5251, "THOMAS HAROLD BOWDEN JR.", '2024-02-05', "Maruba", "Standard", "day 2", 12, 1, 180, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5254, "KIMBERLY S. BOWERS", '2024-02-01', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5254, "VERONIQUE NICOLE BOWERS", '2024-02-01', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5259, "SHAWN EDWARD BOWMAN JR.", '2024-02-04', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5272, "KEVIN L. BOWSER", '2024-01-29', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5273, "GENNADY BOYARSKY", '2024-02-05', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5274, "PAMELA BOYCE", '2024-01-25', "Maruba", "VIP", "day 2", 12, 1, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5276, "ALFRED J. BRACA", '2024-01-16', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5278, "SANDRA CONATY BRACE", '2024-02-02', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5286, "DAVID BRIAN BRADY", '2024-02-02', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5287, "ALEXANDER BRAGINSKY", '2024-02-01', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5293, "MICHELLE RENEE BRATTON", '2024-01-17', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5294, "PATRICE BRAUT", '2024-01-20', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5295, "LYDIA ESTELLE BRAVO", '2024-01-26', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5297, "EDWARD A. BRENNAN III", '2024-01-28', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5311, "FRANK H. BRENNAN", '2024-01-18', "Maruba", "Plus", "day 1", 11, 1, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5313, "JONATHAN ERIC BRILEY", '2024-01-30', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5317, "PAUL GARY BRISTOW", '2024-02-06', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5318, "MARK FRANCIS BRODERICK", '2024-01-24', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5321, "KEITH A. BROOMFIELD", '2024-02-05', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5323, "JANICE JULOISE BROWN", '2024-01-31', "Maruba", "Plus", "day 2", 12, 4, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5326, "LLOYD STANFORD BROWN", '2024-02-01', "Maruba", "Plus", "day 3", 13, 2, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5328, "RICHARD GEORGE BRUEHERT", '2024-02-05', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5329, "BRANDON J. BUCHANAN", '2024-01-29', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5330, "DENNIS BUCKLEY", '2024-01-23', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5332, "PATRICK JOSEPH BUHSE", '2024-01-21', "Maruba", "Standard", "day 1", 11, 4, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5339, "JOHN EDWARD BULAGA JR.", '2024-01-19', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5347, "STEPHEN BRUCE BUNIN", '2024-01-17', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5348, "MATTHEW J. BURKE", '2024-02-01', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5355, "THOMAS DANIEL BURKE", '2024-02-05', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5359, "KEITH JAMES BURNS", '2024-02-06', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5360, "MILTON G. BUSTILLO", '2024-02-07', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5361, "JESUS NEPTALI CABEZAS", '2024-02-13', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5363, "LILLIAN CACERES", '2024-02-05', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5364, "BRIAN JOSEPH CACHIA", '2024-02-04', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5374, "RICHARD MICHAEL CAGGIANO", '2024-01-19', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5376, "CECILE MARELLA CAGUICLA", '2024-02-14', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5378, "MICHAEL JOHN CAHILL", '2024-02-02', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5378, "SCOTT WALTER CAHILL", '2024-02-02', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5381, "THOMAS JOSEPH CAHILL", '2024-02-05', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5383, "JOSEPH M. CALANDRILLO", '2024-02-07', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5388, "PHILIP V. CALCAGNO", '2024-01-19', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5393, "KENNETH MARCUS CALDWELL", '2024-02-02', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5395, "DOMINICK E. CALIA", '2024-01-31', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5396, "FELIX BOBBY CALIXTE", '2024-01-16', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5406, "GINO LUIGI CALVI", '2024-02-04', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5427, "GEOFFREY THOMAS CAMPBELL", '2024-02-12', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5434, "SANDRA PATRICIA CAMPBELL", '2024-01-28', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5436, "JOHN A. CANDELA", '2024-02-04', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5435, "VINCENT A. CANGELOSI", '2024-02-02', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5437, "STEPHEN J. CANGIALOSI", '2024-01-29', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5437, "LISA BELLA CANNAVA", '2024-01-29', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5442, "MICHAEL R. CANTY", '2024-01-26', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5442, "LOUIS ANTHONY CAPORICCI", '2024-01-26', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5463, "JONATHAN NEFF CAPPELLO", '2024-01-15', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5466, "JAMES CHRISTOPHER CAPPERS", '2024-02-03', "Maruba", "Standard", "day 2", 12, 4, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5474, "RICHARD MICHAEL CAPRONI", '2024-01-21', "Maruba", "Standard", "day 3", 13, 3, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5477, "JOSE MANUEL CARDONA", '2024-01-31', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5484, "EDWARD CARLINO", '2024-01-18', "Maruba", "VIP", "day 1", 11, 1, 100, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5492, "ROSEMARIE C. CARLSON", '2024-02-04', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5493, "MARK STEPHEN CARNEY", '2024-01-15', "Maruba", "Plus", "day 2", 12, 1, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5494, "JOYCE ANN CARPENETO", '2024-01-29', "Maruba", "Plus", "day 2", 12, 3, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5500, "JEREMY CAZ CARRINGTON", '2024-02-09', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5501, "JAMES JOSEPH CARSON JR.", '2024-01-29', "Maruba", "Plus", "day 1", 11, 1, 70, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5503, "VIVIAN CASALDUC", '2024-02-10', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5504, "JOHN FRANCIS CASAZZA", '2024-02-10', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5509, "WILLIAM OTTO CASPAR", '2024-02-10', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5512, "ARCELIA CASTILLO", '2024-01-28', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5515, "LEONARD M. CASTRIANNO", '2024-02-11', "Maruba", "Plus", "day 2", 12, 2, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5522, "JOSE RAMON CASTRO", '2024-02-01', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5537, "RICHARD G. CATARELLI", '2024-01-15', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5542, "CHRISTOPHER SEAN CATON", '2024-02-12', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5543, "ROBERT JOHN CAUFIELD", '2024-01-22', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5544, "MARY TERESA CAULFIELD", '2024-02-05', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5545, "JASON DAVID CAYNE", '2024-02-14', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5551, "MARCIA G. CECIL-CARTER", '2024-02-02', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5553, "JASON MICHAEL CEFALU", '2024-01-25', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5559, "THOMAS JOSEPH CELIC", '2024-01-18', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5562, "ANA MERCEDES CENTENO", '2024-01-16', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5563, "WILLIAM A. CHALCOFF", '2024-02-01', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5567, "CHARLES LAWRENCE CHAN", '2024-01-23', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5587, "MARK LAWRENCE CHARETTE", '2024-01-27', "Maruba", "VIP", "day 3", 13, 1, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5593, "GREGORIO MANUEL CHAVEZ", '2024-01-15', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5606, "STEPHEN PATRICK CHERRY", '2024-02-02', "Maruba", "VIP", "day 3", 13, 1, 140, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5609, "NESTOR JULIO CHEVALIER JR.", '2024-02-07', "Maruba", "VIP", "day 3", 13, 4, 140, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5610, "SWEDE JOSEPH CHEVALIER", '2024-01-31', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5613, "ALEXANDER H. CHIANG", '2024-02-11', "Maruba", "Plus", "day 3", 13, 2, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5613, "DOROTHY J. CHIARCHIARO", '2024-02-11', "Maruba", "Standard", "day 3", 13, 2, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5620, "LUIS ALFONSO CHIMBO", '2024-02-13', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5620, "EDDIE WING-WAI CHING", '2024-02-13', "Maruba", "VIP", "day 1", 11, 4, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5621, "PETER A. CHIRCHIRILLO", '2024-02-13', "Maruba", "Plus", "day 1", 11, 1, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5625, "CATHERINE ELLEN CHIRLS", '2024-02-13', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5626, "KYUNG HEE CASEY CHO", '2024-01-22', "Maruba", "Standard", "day 3", 13, 2, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5629, "ABUL K. CHOWDHURY", '2024-02-06', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5630, "MOHAMMAD SALAHUDDIN CHOWDHURY", '2024-01-26', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5636, "PAMELA CHU", '2024-01-20', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5639, "CHRISTOPHER CIAFARDINI", '2024-02-02', "Maruba", "Standard", "day 2", 12, 4, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5640, "ALEX F. CICCONE", '2024-01-31', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5642, "FRANCES ANN CILENTE", '2024-02-04', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5643, "ELAINE CILLO", '2024-01-22', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5644, "PATRICIA ANN CIMAROLI MASSARI", '2024-01-27', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5654, "EDNA CINTRON", '2024-01-21', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5655, "NESTOR ANDRE CINTRON III", '2024-01-29', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5667, "JUAN PABLO CISNEROS", '2024-02-07', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5671, "GREGORY ALAN CLARK", '2024-01-30', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5693, "MANNIE LEROY CLARK", '2024-01-16', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5696, "DONNA MARIE CLARKE", '2024-02-10', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5702, "SURIA RACHEL EMMA CLARKE", '2024-01-31', "Maruba", "VIP", "day 1", 11, 4, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5708, "JAMES D. CLEERE", '2024-02-02', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5712, "GEOFFREY W. CLOUD", '2024-02-06', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5718, "SUSAN MARIE CLYNE", '2024-02-10', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5721, "JEFFREY ALAN COALE", '2024-02-11', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5739, "PATRICIA A. CODY", '2024-01-17', "Maruba", "VIP", "day 1", 11, 2, 100, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5746, "DANIEL MICHAEL COFFEY", '2024-02-06', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5753, "JASON MATTHEW COFFEY", '2024-01-21', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5759, "KEVIN S. COHEN", '2024-02-01', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5760, "ANTHONY JOSEPH COLADONATO", '2024-01-19', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5767, "MARK JOSEPH COLAIO", '2024-01-28', "Maruba", "Standard", "day 2", 12, 1, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5780, "STEPHEN J. COLAIO", '2024-01-30', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5788, "CHRISTOPHER MICHAEL COLASANTI", '2024-01-30', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5806, "MICHEL P. COLBERT", '2024-01-16', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5806, "KEITH E. COLEMAN", '2024-01-16', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5811, "SCOTT THOMAS COLEMAN", '2024-01-30', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5813, "LIAM JOSEPH COLHOUN", '2024-02-14', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5814, "MICHAEL L. COLLINS", '2024-02-03', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5819, "JOSEPH KENT COLLISON", '2024-01-26', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5818, "PATRICIA MALIA COLODNER", '2024-02-09', "Maruba", "VIP", "day 1", 11, 1, 100, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 5825, "LINDA M. COLON", '2024-02-07', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5827, "RONALD EDWARD COMER", '2024-02-03', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5832, "JAIME CONCEPCION", '2024-02-10', "Maruba", "VIP", "day 3", 13, 4, 140, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5834, "SUSAN P. CONLON", '2024-01-24', "Maruba", "Plus", "day 1", 11, 4, 70, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5836, "MARGARET MARY CONNER", '2024-01-27', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5839, "JONATHAN M. CONNORS", '2024-01-23', "Maruba", "Standard", "day 3", 13, 4, 200, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5841, "KEVIN F. CONROY", '2024-02-11', "Maruba", "Plus", "day 1", 11, 1, 70, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5847, "BRENDA E. CONWAY", '2024-01-18', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5849, "DENNIS MICHAEL COOK", '2024-01-28', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5852, "HELEN D. COOK", '2024-01-31', "Maruba", "Standard", "day 2", 12, 4, 180, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5859, "JOSEPH JOHN COPPO JR.", '2024-01-31', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5861, "GERARD J. COPPOLA", '2024-02-12', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5861, "JOSEPH ALBERT CORBETT", '2024-02-12', "Maruba", "VIP", "day 2", 12, 1, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5862, "ALEJANDRO CORDERO", '2024-01-16', "Maruba", "Plus", "day 2", 12, 3, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5863, "DANNY A. CORREA-GUTIERREZ", '2024-01-16', "Maruba", "Standard", "day 3", 13, 4, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5867, "DOLORES MARIE COSTA", '2024-01-22', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5871, "DIGNA ALEXANDRA COSTANZA", '2024-02-14', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5873, "CHARLES GREGORY COSTELLO JR.", '2024-01-20', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 5875, "MICHAEL S. COSTELLO", '2024-02-11', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5876, "CONROD KOFI COTTOY SR.", '2024-02-03', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5877, "TIMOTHY J. COUGHLIN", '2024-01-25', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5877, "ANDRE COLIN COX", '2024-01-25', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5879, "MICHELE COYLE-EULAU", '2024-01-16', "Maruba", "Standard", "day 3", 13, 2, 200, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5885, "DENISE ELIZABETH CRANT", '2024-02-06', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5890, "JAMES LESLIE CRAWFORD JR.", '2024-02-09', "Maruba", "Plus", "day 3", 13, 2, 90, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5901, "JOANNE MARY CREGAN", '2024-01-24', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5905, "LUCIA CRIFASI", '2024-02-13', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5912, "DANIEL HAL CRISMAN", '2024-02-01', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 5916, "ROBERT L. CRUIKSHANK", '2024-01-18', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5931, "JOHN ROBERT CRUZ", '2024-01-15', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5933, "RICHARD JOSEPH CUDINA", '2024-02-13', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5937, "NEIL JAMES CUDMORE", '2024-02-05', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 5943, "JOAN CULLINAN", '2024-01-19', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5945, "BRIAN THOMAS CUMMINS", '2024-01-20', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5952, "LAURENCE DAMIAN CURIA", '2024-02-07', "Maruba", "VIP", "day 1", 11, 1, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5956, "BEVERLY L. CURRY", '2024-01-18', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 5983, "GAVIN CUSHNY", '2024-01-24', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 5990, "VINCENT GERARD DAMADEO", '2024-02-09', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5992, "JACK L. DAMBROSI JR.", '2024-01-25', "Maruba", "VIP", "day 3", 13, 4, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 5995, "MARY DANTONIO", '2024-01-30', "Maruba", "Standard", "day 1", 11, 2, 160, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5995, "MICHAEL JUDE DESPOSITO", '2024-01-30', "Maruba", "Plus", "day 3", 13, 2, 90, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 5996, "CALEB ARRON DACK", '2024-02-06', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 6015, "THOMAS A. DAMASKINOS", '2024-01-23', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6025, "JEANNINE DAMIANI-JONES", '2024-01-17', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6026, "MANUEL JOÃO DAMOTA", '2024-01-25', "Maruba", "VIP", "day 3", 13, 2, 140, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 6029, "DWIGHT DONALD DARCY", '2024-01-29', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 6031, "ELIZABETH ANN DARLING", '2024-01-31', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 6054, "ANNETTE ANDREA DATARAM", '2024-02-11', "Maruba", "Standard", "day 3", 13, 3, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6058, "MICHAEL ALLEN DAVIDSON", '2024-01-22', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6060, "NIURKA DAVILA", '2024-01-15', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6072, "WAYNE TERRIAL DAVIS", '2024-02-01', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6081, "ANTHONY RICHARD DAWSON", '2024-02-11', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6084, "AZUCENA MARIA DE LA TORRE", '2024-01-18', "Maruba", "VIP", "day 1", 11, 1, 100, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 6096, "JOSE NICOLAS DE PENA", '2024-02-14', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6117, "MELANIE LOUISE DE VERE", '2024-02-09', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6118, "WILLIAM THOMAS DEAN", '2024-01-31', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 6124, "TARA E. DEBEK", '2024-01-31', "Maruba", "Plus", "day 3", 13, 4, 90, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 6142, "ANNA M. DEBIN", '2024-02-05', "Maruba", "Plus", "day 3", 13, 2, 90, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 6142, "JAMES V. DEBLASE JR.", '2024-02-05', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 6149, "PAUL DECOLA", '2024-02-06', "Maruba", "Plus", "day 2", 12, 2, 80, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 6161, "SIMON MARASH DEDVUKAJ", '2024-01-24', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 6165, "JASON CHRISTOPHER DEFAZIO", '2024-02-14', "Maruba", "Plus", "day 2", 12, 4, 80, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 6187, "MONIQUE EFFIE DEJESUS", '2024-01-18', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6202, "VITO JOSEPH DELEO", '2024-02-09', "Maruba", "Standard", "day 2", 12, 4, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 6209, "DANIELLE ANNE DELIE", '2024-01-31', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6218, "JOSEPH A. DELLA PIETRA", '2024-01-24', "Maruba", "Plus", "day 2", 12, 1, 80, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 6221, "PALMINA DELLIGATTI", '2024-01-30', "Maruba", "Plus", "day 3", 13, 2, 90, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 6221, "FRANCIS DEMING", '2024-01-30', "Maruba", "Plus", "day 2", 12, 2, 80, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 6234, "KEVIN DENNIS", '2024-01-19', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 6249, "THOMAS FRANCIS DENNIS SR.", '2024-01-24', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6260, "JEAN C. DEPALMA", '2024-02-06', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6265, "ROBERT JOHN DERANEY", '2024-02-02', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6276, "MICHAEL DERIENZO", '2024-02-03', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 6283, "JEMAL LEGESSE DESANTIS", '2024-01-25', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6283, "CHRISTIAN LOUIS DESIMONE", '2024-01-25', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6283, "EDWARD DESIMONE III", '2024-01-25', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6283, "CINDY ANN DEUEL", '2024-01-25', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6283, "JERRY DEVITO", '2024-01-25', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6286, "ROBERT P. DEVITT JR.", '2024-02-09', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6296, "PATRICIA FLORENCE DI CHIARO", '2024-02-14', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 6306, "MICHAEL LOUIS DIAGOSTINO", '2024-02-11', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6309, "MATTHEW DIAZ", '2024-02-05', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6311, "NANCY DIAZ", '2024-02-10', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6311, "OBDULIO RUIZ DIAZ", '2024-02-10', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6425, "MICHAEL A. DIAZ-PIEDRA III", '2024-02-03', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6470, "JOSEPH DERMOT DICKEY JR.", '2024-02-11', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 6514, "LAWRENCE PATRICK DICKINSON", '2024-02-06', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6521, "JOHN DIFATO", '2024-01-28', "Maruba", "Standard", "day 1", 11, 2, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6540, "VINCENT FRANCIS DIFAZIO", '2024-02-10', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 6550, "CARL ANTHONY DIFRANCO", '2024-02-10', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 6574, "DONALD JOSEPH DIFRANCO", '2024-02-11', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 6636, "STEPHEN PATRICK DIMINO", '2024-01-24', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6645, "WILLIAM JOHN DIMMLING", '2024-01-29', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6644, "CHRISTOPHER MORE DINCUFF", '2024-02-05', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 6653, "JEFFREY MARK DINGLE", '2024-01-22', "Maruba", "Plus", "day 3", 13, 4, 90, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 6733, "RENA SAM DINNOO", '2024-01-27', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 6733, "ANTHONY DIONISIO", '2024-01-27', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 6780, "DOUGLAS FRANK DISTEFANO", '2024-02-11', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 6821, "RAMZI A. DOANY", '2024-02-08', "Maruba", "Plus", "day 2", 12, 1, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6829, "BRENDAN DOLAN", '2024-01-30', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 6836, "NEIL MATTHEW DOLLARD", '2024-01-23', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6841, "CARLOS DOMINGUEZ", '2024-01-31', "Maruba", "Standard", "day 2", 12, 1, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6847, "THOMAS DOWD", '2024-02-09', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6895, "JOSEPH MICHAEL DOYLE", '2024-01-26', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 6905, "MIRNA A. DUARTE", '2024-02-07', "Maruba", "VIP", "day 1", 11, 1, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6933, "LUKE A. DUDEK", '2024-02-12', "Maruba", "Standard", "day 1", 11, 4, 160, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 6931, "THOMAS W. DUFFY", '2024-01-15', "Maruba", "Standard", "day 3", 13, 4, 200, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 6943, "ANTOINETTE DUGER", '2024-02-02', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6945, "JACKIE SAYEGH DUGGAN", '2024-02-01', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6963, "CHRISTOPHER JOSEPH DUNNE", '2024-02-02', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6984, "PATRICK THOMAS DWYER", '2024-01-21', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 6998, "JOSEPH ANTHONY EACOBACCI", '2024-02-06', "Maruba", "VIP", "day 1", 11, 1, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 7013, "ROBERT DOUGLAS EATON", '2024-02-11', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7019, "PAUL ROBERT ECKNA", '2024-01-29', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 7058, "DENNIS MICHAEL EDWARDS", '2024-01-24', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 7065, "LISA ERIN EGAN", '2024-01-25', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7068, "SAMANTHA MARTIN EGAN", '2024-02-10', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 7070, "CAROLE EGGERT", '2024-01-25', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7090, "JOHN ERNST EICHLER", '2024-01-20', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 7110, "DAPHNE FERLINDA ELDER", '2024-01-25', "Maruba", "VIP", "day 2", 12, 1, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 7111, "VALERIE SILVER ELLIS", '2024-01-20', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7114, "ALBERT ALFY WILLIAM ELMARRY", '2024-01-28', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 7135, "DORIS SUK-YUEN ENG", '2024-01-20', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 7169, "CHRISTOPHER EPPS", '2024-02-06', "Maruba", "VIP", "day 3", 13, 2, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7180, "ERWIN L. ERKER", '2024-02-12', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 7184, "WILLIAM JOHN ERWIN", '2024-01-25', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7217, "SARAH ALI ESCARCEGA", '2024-01-21', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 7268, "FANNY ESPINOZA", '2024-01-17', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7301, "BILLY SCOOP ESPOSITO", '2024-01-28', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 7308, "BRIDGET ANN ESPOSITO", '2024-01-29', "Maruba", "Plus", "day 2", 12, 3, 80, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7308, "SADIE ETTE", '2024-01-29', "Maruba", "Standard", "day 3", 13, 3, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7311, "BARBARA G. ETZOLD", '2024-02-14', "Maruba", "Standard", "day 1", 11, 4, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7380, "CATHERINE K. FAGAN", '2024-02-10', "Maruba", "Standard", "day 3", 13, 2, 200, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 7386, "IVAN KYRILLOS FAIRBANKS-BARBOSA", '2024-01-29', "Maruba", "Plus", "day 3", 13, 4, 90, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7403, "SANDRA FAJARDO-SMITH", '2024-01-31', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 7421, "WILLIAM F. FALLON", '2024-02-03', "Maruba", "Standard", "day 1", 11, 2, 160, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 7436, "WILLIAM LAWRENCE FALLON JR.", '2024-01-30', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7435, "ANTHONY J. FALLONE JR.", '2024-01-31', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 7442, "DOLORES BRIGITTE FANELLI", '2024-01-31', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 7478, "KATHLEEN ANNE FARAGHER", '2024-02-12', "Maruba", "Plus", "day 2", 12, 1, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7478, "NANCY C. DOLOSZYCKI FARLEY", '2024-02-12', "Maruba", "Standard", "day 2", 12, 1, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7500, "ELIZABETH ANN FARMER", '2024-01-18', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7526, "DOUGLAS JON FARNUM", '2024-02-07', "Maruba", "Standard", "day 2", 12, 4, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7527, "JOHN GERARD FARRELL", '2024-01-29', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 7533, "THOMAS PATRICK FARRELLY", '2024-01-27', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 7535, "CHRISTOPHER EDWARD FAUGHNAN", '2024-01-27', "Maruba", "VIP", "day 3", 13, 4, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7593, "SHANNON MARIE FAVA", '2024-01-24', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 7620, "BERNARD D. FAVUZZA", '2024-02-07', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 7633, "FRANCIS JUDE FEELY", '2024-01-24', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7709, "GARTH ERIN FEENEY", '2024-02-13', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7746, "SEAN BERNARD FEGAN", '2024-02-06', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 7762, "ROSA MARIA FELICIANO", '2024-02-13', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 7780, "EDWARD THOMAS FERGUS JR.", '2024-01-15', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7803, "HENRY FERNANDEZ", '2024-02-07', "Maruba", "VIP", "day 1", 11, 4, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 7799, "JUDY HAZEL SANTILLAN FERNANDEZ", '2024-02-12', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 7815, "ELISA GISELLE FERRAINA", '2024-02-09', "Maruba", "VIP", "day 1", 11, 2, 100, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7834, "ANNE MARIE SALLERIN FERREIRA", '2024-02-10', "Maruba", "VIP", "day 2", 12, 1, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 7846, "DAVID FRANCIS FERRUGIO", '2024-02-14', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 7851, "LOUIS V. FERSINI JR.", '2024-01-29', "Maruba", "Standard", "day 2", 12, 1, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 7853, "KRISTEN NICOLE FIEDEL", '2024-02-06', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 7862, "MICHAEL BRADLEY FINNEGAN", '2024-01-22', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 7867, "TIMOTHY J. FINNERTY", '2024-01-26', "Maruba", "VIP", "day 1", 11, 2, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 8019, "STEPHEN J. FIORELLI", '2024-02-13', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8032, "PAUL M. FIORI", '2024-01-21', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 8045, "JOHN B. FIORITO", '2024-02-13', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 8097, "ANDREW FISHER", '2024-02-01', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 8100, "JOHN ROGER FISHER", '2024-01-29', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 8221, "SALVATORE FIUMEFREDDO", '2024-01-31', "Maruba", "VIP", "day 1", 11, 4, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 8239, "CARL M. FLICKINGER", '2024-02-12', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8245, "STEPHEN MARK FOGEL", '2024-01-19', "Maruba", "Plus", "day 1", 11, 1, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8258, "DELROSE E. FORBES CHEATHAM", '2024-01-20', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 8258, "CHRISTOPHER HUGH FORSYTHE", '2024-01-20', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 8271, "CLAUDIA ALICIA FOSTER", '2024-02-05', "Maruba", "VIP", "day 1", 11, 1, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 8306, "VIRGINIA ELIZABETH FOX", '2024-01-25', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 8310, "PAULINE FRANCIS", '2024-01-29', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8337, "VIRGIN LUCY FRANCIS", '2024-01-15', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 8383, "MORTON H. FRANK", '2024-02-06', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8441, "PETER CHRISTOPHER FRANK", '2024-01-23', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8461, "ARLENE EVA FRIED", '2024-02-02', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 8515, "ANDREW KEITH FRIEDMAN", '2024-01-16', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8538, "CLEMENT A. FUMANDO", '2024-02-13', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8540, "STEVEN ELLIOT FURMAN", '2024-01-16', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 8548, "PAUL JAMES FURMATO", '2024-01-18', "Maruba", "Standard", "day 2", 12, 1, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8589, "FREDRIC NEAL GABLER", '2024-02-01', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 8636, "JAMES ANDREW GADIEL", '2024-02-02', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 8677, "DEANNA LYNN GALANTE", '2024-01-29', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8692, "GRACE CATHERINE GALANTE", '2024-01-15', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 8708, "ANTHONY EDWARD GALLAGHER", '2024-02-09', "Maruba", "Plus", "day 1", 11, 1, 70, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 8739, "DANIEL JAMES GALLAGHER", '2024-01-22', "Maruba", "Plus", "day 3", 13, 4, 90, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 8754, "JOHN PATRICK GALLAGHER", '2024-01-27', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 8934, "LOURDES J. GALLETTI", '2024-02-08', "Maruba", "Plus", "day 3", 13, 4, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9006, "CONO E. GALLO", '2024-01-26', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9079, "VINCENT GALLUCCI", '2024-02-01', "Maruba", "Standard", "day 1", 11, 4, 160, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 9085, "THOMAS E. GALVIN", '2024-01-29', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9085, "GIOVANNA GALLETTA GAMBALE", '2024-01-29', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9102, "MICHAEL GANN", '2024-02-06', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9116, "CESAR R. GARCIA", '2024-02-06', "Maruba", "Plus", "day 1", 11, 1, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9126, "DAVID GARCIA", '2024-01-18', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9138, "JUAN GARCIA", '2024-01-28', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9163, "MARLYN DEL CARMEN GARCIA", '2024-02-10', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9169, "DOUGLAS BENJAMIN GARDNER", '2024-01-30', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9177, "HARVEY JOSEPH GARDNER III", '2024-02-06', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9181, "JEFFREY BRIAN GARDNER", '2024-01-21', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9208, "WILLIAM ARTHUR GARDNER", '2024-02-13', "Maruba", "Plus", "day 1", 11, 4, 70, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9208, "FRANK GARFI", '2024-02-13', "Maruba", "Standard", "day 2", 12, 4, 180, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9215, "ROCCO NINO GARGANO", '2024-01-23', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9234, "JAMES M. GARTENBERG", '2024-02-09', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9276, "DONALD RICHARD GAVAGAN JR.", '2024-01-26', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9291, "TERENCE D. GAZZANI", '2024-02-09', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9312, "PAUL HAMILTON GEIER", '2024-02-11', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9316, "PETER GERARD GELINAS", '2024-01-15', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9339, "STEVEN PAUL GELLER", '2024-02-13', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9347, "PETER VICTOR GENCO JR.", '2024-01-21', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9350, "STEVEN GREGORY GENOVESE", '2024-01-22', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9352, "SUZANNE GERATY", '2024-02-02', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9357, "RALPH GERHARDT", '2024-02-03', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 9367, "ROBERT GERLICH", '2024-02-13', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9370, "MARINA ROMANOVNA GERTSBERG", '2024-02-07', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9405, "JAMES G. GEYER", '2024-02-09', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9408, "JOSEPH M. GIACCONE", '2024-02-05', "Maruba", "Plus", "day 1", 11, 4, 70, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9425, "CRAIG NEIL GIBSON", '2024-01-17', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9434, "ANDREW CLIVE GILBERT", '2024-02-05', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9440, "TIMOTHY PAUL GILBERT", '2024-01-28', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9476, "MARK Y. GILLES", '2024-02-05', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9482, "RONALD LAWRENCE GILLIGAN", '2024-02-05', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9491, "LAURA GILLY", '2024-02-01', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9503, "STEVEN A. GIORGETTI", '2024-02-10', "Maruba", "VIP", "day 2", 12, 1, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9527, "MARTIN GIOVINAZZO", '2024-02-13', "Maruba", "Standard", "day 2", 12, 4, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9532, "SALVATORE GITTO", '2024-02-11', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9545, "CYNTHIA GIUGLIANO", '2024-01-18', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9552, "HARRY GLENN", '2024-01-16', "Maruba", "Standard", "day 3", 13, 2, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9588, "BARRY H. GLICK", '2024-02-07', "Maruba", "VIP", "day 3", 13, 2, 140, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9599, "STEVEN GLICK", '2024-01-20', "Maruba", "Standard", "day 2", 12, 4, 180, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9606, "JOHN T. GNAZZO", '2024-01-28', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9607, "MICHAEL GOGLIORMELLA", '2024-01-30', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9608, "JEFFREY G. GOLDFLAM", '2024-01-31', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9617, "MONICA GOLDSTEIN", '2024-01-22', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9617, "STEVEN IAN GOLDSTEIN", '2024-01-22', "Maruba", "VIP", "day 3", 13, 2, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9618, "ANDREW H. GOLKIN", '2024-02-10', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9618, "ENRIQUE ANTONIO GOMEZ", '2024-02-10', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9620, "JOSE BIENVENIDO GOMEZ", '2024-01-27', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 9633, "WILDER ALFREDO GOMEZ", '2024-02-05', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9642, "ROSA J. GONZALEZ", '2024-02-07', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9640, "CALVIN JOSEPH GOODING", '2024-01-18', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9648, "KIRAN KUMAR REDDY GOPU", '2024-01-30', "Maruba", "Plus", "day 1", 11, 2, 70, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9651, "CATHERINE C. GORAYEB", '2024-02-13', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9653, "KERENE GORDON", '2024-02-07', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9659, "MICHAEL EDWARD GOULD", '2024-01-24', "Maruba", "VIP", "day 1", 11, 2, 100, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9665, "JON RICHARD GRABOWSKI", '2024-02-03', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9671, "CHRISTOPHER MICHAEL GRADY", '2024-02-06', "Maruba", "VIP", "day 2", 12, 1, 120, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9677, "EDWIN J. GRAF III", '2024-01-15', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 9685, "ELVIRA GRANITTO", '2024-01-21', "Maruba", "Plus", "day 3", 13, 2, 90, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9698, "WINSTON ARTHUR GRANT", '2024-01-26', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9699, "CHRISTOPHER S. GRAY", '2024-01-31', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9702, "TARA MCCLOUD GRAY", '2024-01-27', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9703, "JOHN M. GRAZIOSO", '2024-02-03', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9703, "TIMOTHY GEORGE GRAZIOSO", '2024-02-03', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9712, "WADE B. GREEN", '2024-02-11', "Maruba", "Standard", "day 3", 13, 2, 200, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9715, "ELAINE MYRA GREENBERG", '2024-01-27', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9722, "GAYLE R. GREENE", '2024-01-27', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 9728, "JAMES ARTHUR GREENLEAF JR.", '2024-01-15', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9734, "ELIZABETH MARTIN GREGG", '2024-01-20', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9741, "DENISE MARIE GREGORY", '2024-01-22', "Maruba", "Standard", "day 3", 13, 3, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9742, "DONALD H. GREGORY", '2024-02-11', "Maruba", "Standard", "day 1", 11, 2, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9748, "PEDRO GREHAN", '2024-02-08', "Maruba", "VIP", "day 1", 11, 4, 100, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9752, "JOHN MICHAEL GRIFFIN", '2024-01-22', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9754, "TAWANNA SHERRY GRIFFIN", '2024-02-14', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9754, "WARREN GRIFKA", '2024-02-14', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9757, "RAMON B. GRIJALVO", '2024-02-10', "Maruba", "VIP", "day 3", 13, 1, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9764, "JOSEPH F. GRILLO", '2024-02-13', "Maruba", "Plus", "day 3", 13, 3, 90, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 9767, "DAVID JOSEPH GRIMNER", '2024-01-15', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9768, "MATTHEW JAMES GRZYMALSKI", '2024-02-09', "Maruba", "VIP", "day 1", 11, 2, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9768, "LIMING GU", '2024-02-09', "Maruba", "Standard", "day 1", 11, 2, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9784, "DOUGLAS BRIAN GURIAN", '2024-01-27', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9787, "GARY ROBERT HAAG", '2024-02-13', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9789, "ANDREA LYN HABERMAN", '2024-01-20', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9792, "BARBARA MARY HABIB", '2024-01-17', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 9805, "PHILIP HAENTZLER", '2024-02-09', "Maruba", "Standard", "day 3", 13, 3, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9817, "NEZAM A. HAFIZ", '2024-02-13', "Maruba", "Plus", "day 1", 11, 4, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9821, "STEVEN MICHAEL HAGIS", '2024-02-05', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9823, "MAILE RACHEL HALE", '2024-02-13', "Maruba", "VIP", "day 1", 11, 2, 100, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9824, "VASWALD GEORGE HALL", '2024-01-17', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9826, "JAMES DOUGLAS HALVORSON", '2024-01-21', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9834, "FREDERIC K. HAN", '2024-02-08', "Maruba", "VIP", "day 1", 11, 2, 100, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 9839, "CHRISTOPHER JAMES HANLEY", '2024-02-01', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9839, "VALERIE JOAN HANNA", '2024-02-01', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9847, "KEVIN JAMES HANNAFORD SR.", '2024-02-09', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 9850, "MICHAEL LAWRENCE HANNAN", '2024-01-16', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9853, "JAMES A. HARAN", '2024-02-07', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9858, "JEFFREY PIKE HARDY", '2024-02-03', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9859, "T.J. HARGRAVE", '2024-01-28', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9866, "MELISSA MARIE HARRINGTON", '2024-01-23', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9868, "AISHA ANN HARRIS", '2024-02-04', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9871, "STEWART D. HARRIS", '2024-02-08', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 9871, "EMERIC HARVEY", '2024-02-08', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 9874, "JOSEPH JOHN HASSON III", '2024-02-03', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 9881, "TIMOTHY AARON HAVILAND", '2024-01-22', "Maruba", "VIP", "day 3", 13, 1, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9882, "ANTHONY MAURICE HAWKINS", '2024-01-20', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9887, "W. WARD HAYNES", '2024-01-20', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9891, "SCOTT JORDAN HAZELCORN", '2024-01-18', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9893, "ROBERTA B. HEBER", '2024-01-25', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9892, "CHARLES FRANCIS XAVIER HEERAN", '2024-02-13', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9895, "H. JOSEPH HELLER JR.", '2024-01-22', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9906, "JOANN L. HELTIBRIDLE", '2024-01-16', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9908, "BRIAN HENNESSEY", '2024-01-15', "Maruba", "Plus", "day 2", 12, 3, 80, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9909, "CATHERINA HENRY-ROBINSON", '2024-01-30', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9910, "JOHN CHRISTOPHER HENWOOD", '2024-02-09', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9910, "ROBERT ALLAN HEPBURN", '2024-02-09', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9916, "HARVEY ROBERT HERMER", '2024-02-12', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 9919, "NORBERTO HERNANDEZ", '2024-01-25', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9925, "RAUL HERNANDEZ", '2024-02-13', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9928, "JEFFREY ALAN HERSCH", '2024-01-31', "Maruba", "Standard", "day 3", 13, 3, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9938, "ENEMENCIO DARIO HIDALGO CEDEÑO", '2024-01-17', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 9941, "CLARA VICTORINE HINDS", '2024-02-04', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9943, "MARK HINDY", '2024-01-16', "Maruba", "Standard", "day 3", 13, 3, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 9948, "HEATHER MALIA HO", '2024-01-23', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 9953, "THOMAS ANDERSON HOBBS", '2024-01-28', "Maruba", "VIP", "day 3", 13, 4, 140, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9955, "JAMES J. HOBIN", '2024-01-18', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9962, "ROBERT WAYNE HOBSON III", '2024-01-27', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9965, "DAJUAN HODGES", '2024-01-19', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 9968, "PATRICK A. HOEY", '2024-01-30', "Maruba", "Standard", "day 3", 13, 4, 200, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9970, "MARCIA HOFFMAN", '2024-01-17', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 9975, "STEPHEN GERARD HOFFMAN", '2024-01-24', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 9985, "FREDERICK JOSEPH HOFFMANN", '2024-02-02', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 9990, "MICHELE L. HOFFMANN", '2024-02-04', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10006, "JUDITH FLORENCE HOFMILLER", '2024-02-03', "Maruba", "Plus", "day 2", 12, 2, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10013, "JOHN HOLLAND", '2024-02-03', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 10016, "JOSEPH F. HOLLAND", '2024-02-13', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10024, "BRADLEY V. HOORN", '2024-01-21', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10026, "JAMES P. HOPPER", '2024-02-02', "Maruba", "Standard", "day 2", 12, 4, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 10032, "MONTGOMERY MCCULLOUGH HORD", '2024-01-31', "Maruba", "Standard", "day 1", 11, 1, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 10034, "MICHAEL JOSEPH HORN", '2024-02-02', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 10035, "MATTHEW DOUGLAS HORNING", '2024-02-06', "Maruba", "Standard", "day 1", 11, 3, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10038, "ROBERT L. HOROHOE JR.", '2024-02-01', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10043, "AARON HORWITZ", '2024-01-29', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 10049, "MICHAEL C. HOWELL", '2024-01-30', "Maruba", "Standard", "day 2", 12, 2, 180, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 10053, "STEVEN LEON HOWELL", '2024-02-13', "Maruba", "Plus", "day 2", 12, 3, 80, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10053, "PAUL REXFORD HUGHES", '2024-02-13', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10055, "ROBERT T. HUGHES JR.", '2024-02-12', "Maruba", "VIP", "day 1", 11, NULL, 100, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 10057, "THOMAS F. HUGHES JR.", '2024-01-19', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10058, "TIMOTHY ROBERT HUGHES", '2024-01-25', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10060, "SUSAN HUIE", '2024-01-24', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 10066, "LAMAR DEMETRIUS HULSE", '2024-02-13', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 10068, "ROBERT R. HUSSA", '2024-01-25', "Maruba", "VIP", "day 1", 11, 4, 100, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 10072, "JOSEPH ANTHONY IANELLI", '2024-02-12', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10074, "ZUHTU IBIS", '2024-02-01', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10081, "DANIEL ILKANAYEV", '2024-01-23', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 10082, "ABRAHAM NETHANEL ILOWITZ", '2024-02-06', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 10082, "CHRISTOPHER NOBLE INGRASSIA", '2024-02-06', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 10090, "PAUL INNELLA", '2024-01-28', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10089, "STEPHANIE VERONICA IRBY", '2024-02-01', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 10092, "TODD ANTIONE ISAAC", '2024-01-25', "Maruba", "Plus", "day 2", 12, 2, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10099, "ERIK HANS ISBRANDTSEN", '2024-02-07', "Maruba", "VIP", "day 3", 13, 2, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10099, "ARAM ISKENDERIAN JR.", '2024-02-07', "Maruba", "Plus", "day 2", 12, 2, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10107, "JOHN F. ISKYAN", '2024-02-06', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10111, "ALEKSANDR VALERYEVICH IVANTSOV", '2024-02-09', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 10116, "VIRGINIA MAY JABLONSKI", '2024-01-21', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10135, "BROOKE ALEXANDRA JACKMAN", '2024-01-24', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10136, "AARON JEREMY JACOBS", '2024-02-06', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10139, "ARIEL LOUIS JACOBS", '2024-01-30', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 10140, "STEVEN A. JACOBSON", '2024-02-01', "Maruba", "Plus", "day 3", 13, 4, 90, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10148, "RICKNAUTH JAGGERNAUTH", '2024-02-06', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 10149, "JAKE DENIS JAGODA", '2024-01-21', "Maruba", "Plus", "day 1", 11, 4, 70, 0.1, "pago", "cartao", 5);
INSERT INTO vendas VALUES (participanteId, 10151, "YUDHVIR S. JAIN", '2024-02-02', "Maruba", "Standard", "day 2", 12, 1, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10151, "MARIA JAKUBIAK", '2024-02-02', "Maruba", "Standard", "day 3", 13, 1, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10157, "ERNEST JAMES", '2024-01-16', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10158, "GRICELDA E. JAMES", '2024-01-23', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 10159, "MARK STEVEN JARDIM", '2024-01-21', "Maruba", "Plus", "day 2", 12, 4, 80, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 10159, "MUHAMMADOU JAWARA", '2024-01-21', "Maruba", "Standard", "day 1", 11, 4, 160, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 10162, "FRANCOIS JEAN-PIERRE", '2024-02-01', "Maruba", "Standard", "day 3", 13, 3, 200, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10164, "MAXIMA JEAN-PIERRE", '2024-02-06', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 10172, "PAUL EDWARD JEFFERS", '2024-02-01', "Maruba", "Plus", "day 1", 11, NULL, 70, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10172, "PREM NATH JERATH", '2024-02-01', "Maruba", "Standard", "day 3", 13, NULL, 200, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10176, "HWEIDAR JIAN", '2024-01-18', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 10181, "ELIEZER JIMENEZ JR.", '2024-01-25', "Maruba", "VIP", "day 3", 13, 2, 140, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 10190, "LUIS JIMENEZ JR.", '2024-02-12', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10188, "NICHOLAS JOHN", '2024-01-18', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10192, "LASHAWNA JOHNSON", '2024-01-28', "Maruba", "Plus", "day 1", 11, 3, 70, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10198, "ARTHUR JOSEPH JONES III", '2024-02-04', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10198, "CHRISTOPHER D. JONES", '2024-02-04', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10206, "DONALD T. JONES II", '2024-02-14', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10208, "DONALD W. JONES", '2024-01-29', "Maruba", "Plus", "day 2", 12, 2, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10210, "MARY S. JONES", '2024-02-04', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10211, "ROBERT THOMAS JORDAN", '2024-01-17', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 2);
INSERT INTO vendas VALUES (participanteId, 10224, "KAREN SUE JUDAY", '2024-02-10', "Maruba", "Standard", "day 2", 12, 3, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10230, "SHASHIKIRAN LAKSHMIKANTHA KADABA", '2024-01-25', "Maruba", "Plus", "day 3", 13, 1, 90, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10235, "SHARI KANDELL", '2024-01-27', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 10236, "HOWARD LEE KANE", '2024-02-07', "Maruba", "VIP", "day 2", 12, 3, 120, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 10239, "JENNIFER LYNN KANE", '2024-02-03', "Maruba", "VIP", "day 3", 13, 3, 140, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10242, "JOON KOO KANG", '2024-02-08', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 10244, "SHELDON ROBERT KANTER", '2024-02-07', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10247, "DEBORAH H. KAPLAN", '2024-01-31', "Maruba", "Plus", "day 2", 12, 2, 80, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10247, "WILLIAM A. KARNES", '2024-01-31', "Maruba", "VIP", "day 2", 12, 2, 120, 0.1, "pago", "boleto", 0);
INSERT INTO vendas VALUES (participanteId, 10262, "ANDREW K. KATES", '2024-01-22', "Maruba", "VIP", "day 2", 12, 1, 120, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10265, "JOHN A. KATSIMATIDES", '2024-02-06', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 10269, "EDWARD T. KEANE", '2024-02-12', "Maruba", "VIP", "day 2", 12, 4, 120, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 10278, "RICHARD M. KEANE", '2024-02-10', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10280, "LISA YVONNE KEARNEY-GRIFFIN", '2024-02-06', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10280, "PETER R. KELLERMAN", '2024-02-06', "Maruba", "Plus", "day 2", 12, NULL, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10285, "JOSEPH P. KELLETT", '2024-01-21', "Maruba", "VIP", "day 1", 11, 3, 100, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10292, "FREDERICK H. KELLEY III", '2024-01-21', "Maruba", "Standard", "day 2", 12, NULL, 180, 0.1, "pago", "cartao", 1);
INSERT INTO vendas VALUES (participanteId, 10294, "JAMES JOSEPH KELLY", '2024-01-16', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 10295, "JOSEPH A. KELLY", '2024-02-09', "Maruba", "VIP", "day 3", 13, NULL, 140, 0.1, "pago", "cartao", 4);
INSERT INTO vendas VALUES (participanteId, 10298, "MAURICE P. KELLY", '2024-01-31', "Maruba", "Plus", "day 2", 12, 1, 80, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 10299, "TIMOTHY COLIN KELLY", '2024-01-27', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 3);
INSERT INTO vendas VALUES (participanteId, 10301, "WILLIAM HILL KELLY JR.", '2024-02-06', "Maruba", "Plus", "day 2", 12, 4, 80, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 10304, "ROBERT CLINTON KENNEDY", '2024-02-05', "Maruba", "Plus", "day 2", 12, 4, 80, 0.1, "pago", "pix", 0);
INSERT INTO vendas VALUES (participanteId, 10303, "DOUGLAS D. KETCHAM", '2024-01-18', "Maruba", "Standard", "day 1", 11, NULL, 160, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 10303, "BORIS KHALIF", '2024-01-18', "Maruba", "VIP", "day 2", 12, NULL, 120, 0.1, "pago", "cartao", 6);
INSERT INTO vendas VALUES (participanteId, 10305, "WILLIAM FLETCHER", '2024-01-25', "Maruba", "Plus", "day 3", 13, NULL, 90, 0.1, "pago", "pix", 0);




insert into cupons values
(id, 'ALL50BUCKS', 'fixo', 'tudo', NULL, 50),
(id, 'SOME50BUCKS', 'fixo', 'alguns', '11,12', 50),
(id, 'ALL10OFF', 'percentual', 'tudo', NULL, 0.1),
(id, 'SOME10OFF', 'percentual', 'alguns', '13', 0.1);

set foreign_key_checks = 1;




-- view 1
create view cashflow_vw as (
select
  a.participanteId as itemId
, a.pedidoId
, a.evento
, a.ingresso
, a.lote
, a.formaPGTO
, a.statusPGTO
, a.parcelas
, a.parcela as `parcela nº`
, a.dataVenda
, a.compensacao
, a.codigo as cupomCodigo
, a.tipo as cupomTipo
, a.aplicacao as cupomAplicacao
, a.valorCupom
, a.txEvento
, round(a.loteValor, 2) as loteValor
, round(a.`desconto`, 2) as desconto
, round(a.loteCupom, 2) as loteLiquido
#, round(a.convIngresso, 2) as conveniencia
#, round(a.ingressoCheckout, 2) as `checkoutItem`
, a.`cobranca/emissao`
#, round(a.ingrRepasse, 2) as `repasseItem`
, round(a.IngrRepasseParcela, 2) as repasse         -- `repasseParcial`
, round(a.IngrConvParcela, 2) as conveniencia       -- `convenienciaParcial`
, round(a.IngrParcelaCheckout, 2) as valorTotal     -- `checkoutParcial`
, a.cupomCombinacoes
from (select
  c.*
, c.loteCupom * c.txEvento as `convIngresso`
, c.loteCupom * (1 + c.txEvento) as `ingressoCheckout`
, case when c.parcela in (0,1) then 3 else 0 end as `cobranca/emissao`
, c.loteCupom - case when c.parcela in (0,1) then 3 else 0 end as `ingrRepasse`
, case when c.formaPGTO in ('boleto','pix') then c.loteCupom + (c.loteCupom * c.txEvento)    -- se deduzir, tx IN
       else c.loteCupom * (1 + c.txEvento) / c.parcelas end as `IngrParcelaCheckout`
, case when c.formaPGTO in ('boleto','pix') then c.loteCupom - 3
       else (c.loteCupom / c.parcelas) - case when c.parcela in (0,1) then 3 else 0 end end as `IngrRepasseParcela`
, case when c.formaPGTO in ('boleto','pix') then c.loteCupom * c.txEvento
       else (c.loteCupom * c.txEvento) / c.parcelas end as `IngrConvParcela`
, case when c.cupomId is null then 'sem cupom'
       when c.aplicacao = 'tudo' and c.tipo = 'fixo' then 'TudoFixo'
       when c.aplicacao = 'tudo' and c.tipo = 'percentual' then 'TudoPercentual'
       when c.aplicacao = 'alguns' and c.tipo = 'percentual' then 'AlgunsPercentual'
       when c.aplicacao = 'alguns' and c.tipo = 'fixo' then 'AlgunsFixo'
       end as `cupomCombinacoes`
from (
select
  b.*
, prop.proporcao
, case when isnull(b.cupomId) or b.cupomValidacao = 0
       then 0
-- se o cupom valer para TUDO e for PERCENTUAL, ou valer para ALGUNS e for do tipo PERCENTUAL, deduzir a taxa do ingresso
       when (b.aplicacao = "tudo" and b.tipo = "percentual") or (b.aplicacao = "alguns" and b.tipo = "percentual")
       then b.loteValor * b.valorCupom
-- se o cupom valer para TUDO e for do tipo FIXO, ou valer para ALGUNS e for FIO, deduzir o rateio do cupom dos ingressos que sao aplicaveis
	   when (b.aplicacao = "tudo" and b.tipo = "fixo") or (b.aplicacao = "alguns" and b.tipo = "fixo")
       then b.valorCupom * prop.proporcao
       else b.valorCupom end as `desconto`
-- se nao houver aplicacao de cupom ou o cupom nao for aplicavel ao lote, sera o valor do proprio lote
, case when isnull(b.cupomId) or b.cupomValidacao = 0
       then b.loteValor
-- se o cupom valer para TUDO e for PERCENTUAL, ou valer para ALGUNS e for do tipo PERCENTUAL, deduzir a taxa do ingresso
       when (b.aplicacao = "tudo" and b.tipo = "percentual") or (b.aplicacao = "alguns" and b.tipo = "percentual")
       then b.loteValor * (1 - b.valorCupom)
-- se o cupom valer para TUDO e for do tipo FIXO, ou valer para ALGUNS e for FIO, deduzir o rateio do cupom dos ingressos que sao aplicaveis
	   when (b.aplicacao = "tudo" and b.tipo = "fixo") or (b.aplicacao = "alguns" and b.tipo = "fixo")
       then b.loteValor - b.valorCupom * prop.proporcao
       else b.loteValor end as `loteCupom`
from (
select
  a.participanteId, a.pedidoId, a.`ingressos/pedido`, a.nome, a.dataVenda, a.evento, a.ingresso, a.lote, a.loteId, a.cupomId
, c.codigo, c.tipo, c.aplicacao, c.lotesIds, c.valor as valorCupom
, a.loteValor, a.txEvento, a.statusPGTO, a.formaPGTO, a.parcelas -- , a.numeracaoParcelas
, jt.parcela
, date_add(a.dataVenda, interval (jt.parcela * 30) day) as compensacao
-- , json_array(a.loteId) as loteArray
-- , concat("[", c.lotesIds, "]") as lotesCupomArray
, if(c.aplicacao="tudo", 1, json_contains(concat("[", c.lotesIds, "]"), json_array(a.loteId))) as cupomValidacao
from (
select v.*
, case when v.parcelas = 1 then "[1]"
       when v.parcelas = 2 then "[1,2]"
       when v.parcelas = 3 then "[1,2,3]"
       when v.parcelas = 4 then "[1,2,3,4]"
       when v.parcelas = 5 then "[1,2,3,4,5]"
       when v.parcelas = 6 then "[1,2,3,4,5,6]"
       else '[0]' end as numeracaoParcelas
, count(v.pedidoId) over(partition by v.pedidoId) as `ingressos/pedido`
from vendas v) as a
join json_table(json_extract(a.numeracaoParcelas, '$[*]'), '$[*]' columns(parcela int path '$')) as jt
left join cupons c on c.id = a.cupomId
) as b

left join

(
select
  v.participanteId
, v.pedidoId
, v.loteValor
, if(c.aplicacao="tudo", 1, json_contains(concat("[", c.lotesIds, "]"), json_array(v.loteId))) as cupomValidacao
, sum(v.loteValor) over(partition by v.pedidoId) as totalValido
, v.loteValor / sum(v.loteValor) over(partition by v.pedidoId) as proporcao
from vendas v left join cupons c on c.id = v.cupomId
where if(c.aplicacao="tudo", 1, json_contains(concat("[", c.lotesIds, "]"), json_array(v.loteId))) = 1
--  and pedidoId = 4843
) as prop

on b.participanteId = prop.participanteId

) as c

order by c.pedidoId, c.parcela) as a
)
;

-- view 2
create view consolidado_vw as (
select
  concat(cf.ingresso, ' - ', cf.lote) as cluster
, cf.loteValor
, count(distinct cf.itemId) as qtd
, round(sum(cf.loteValor / case when isnull(cf.parcelas) or cf.parcelas = 0 then 1 else cf.parcelas end), 2) as loteTotal
, round(sum(cf.desconto / case when isnull(cf.parcelas) or cf.parcelas = 0 then 1 else cf.parcelas end), 2) as desconto
, round(sum(cf.`cobranca/emissao` + cf.repasse), 2) as loteLiquido
, sum(cf.`cobranca/emissao`) as cobrancaEmissao
, round(sum(cf.repasse), 2) as repasse
, round(sum(cf.valorTotal), 2) as valorTotal
from exemplo_fin.cashflow_vw as cf
group by concat(cf.ingresso, ' - ', cf.lote), cf.loteValor
)
;


-- select * from vendas;
