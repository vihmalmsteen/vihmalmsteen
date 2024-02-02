######################################################## DDL & DML ########################################################
-- seleciona tudo daqui pra baixo de da CTRL + ENTER

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


insert into vendas values
(participanteId, 4558, 'PATRÍCIA  SANTOS GERVASIO', '2024-01-25', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 4558, 'GISELLE ALEVATO', '2024-01-25', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 4),
(participanteId, 4558, 'CARLOS EDUARDO SILVA GONÇALVES', '2024-01-25', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 4559, 'SILVESTRE CIRILO DOS SANTOS NETO', '2024-01-15', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'cartao', 1),
(participanteId, 4559, 'MARIA PAULA FRAZAO', '2024-01-15', 'Maruba', 'outdoor', 'day 2', 12, 1, 80, 0.1, 'pago', 'cartao', 1),
(participanteId, 4562, 'KAROLINE GARRETT', '2024-02-02', 'Maruba', 'outdoor', 'day 2', 12, 3, 80, 0.1, 'pago', 'cartao', 5),
(participanteId, 4565, 'STEFAN  GARRETT', '2024-01-25', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 2),
(participanteId, 4567, 'ELENI BARBOSA SALES  VIANA', '2024-02-03', 'Maruba', 'sado room', 'day 1', 11, 4, 160, 0.1, 'pago', 'cartao', 4),
(participanteId, 4576, 'LUCIANA  CAVALCANTI ', '2024-02-12', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 2),
(participanteId, 4579, 'CHARLOTTE JONQUA', '2024-01-20', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 4583, 'YURI DIONISIO', '2024-01-31', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 4601, 'ALISSON SILVA BRITO  BRITO ', '2024-01-25', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 1),
(participanteId, 4642, 'CHARLES  SILVA ', '2024-01-30', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 4780, 'ALISSON BRITO', '2024-02-08', 'Maruba', 'outdoor', 'day 3', 13, 4, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 4787, 'VANDER GOMES', '2024-02-08', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 4799, 'LEANDRO BURICHE PEREIRA ', '2024-01-28', 'Maruba', 'outdoor', 'day 3', 13, 2, 90, 0.1, 'pago', 'cartao', 1),
(participanteId, 4812, 'JULIANA SYNDARA FONSECA COSTA ', '2024-02-05', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 4814, 'HELINTON LOUREIRO', '2024-02-03', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 4815, 'FABIO PERES', '2024-02-08', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 4820, 'GUSTAVO FONSECA DA CRUZ FONSECA DA CRUZ', '2024-02-11', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 4820, 'GISELE CRUZ', '2024-02-11', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 4821, 'ANDERSON CORREIA SOARES', '2024-01-15', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 4830, 'EDSON SILVA', '2024-02-08', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 4843, 'TATIANA LA CROIX', '2024-02-08', 'Maruba', 'sado room', 'day 3', 13, 2, 200, 0.1, 'pago', 'cartao', 1),
(participanteId, 4843, 'JÉSSICA MANHÃES GOMES ', '2024-02-08', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'cartao', 1),
(participanteId, 4837, 'DAYANA COUTINHO', '2024-01-27', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'cartao', 2),
(participanteId, 4848, 'FABRICIA SUELEN  DOS SANTOS', '2024-02-03', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 4853, 'LINDOVAL ARAGÃO', '2024-01-16', 'Maruba', 'privê room', 'day 3', 13, 1, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 4841, 'ANNE CAROLINNE  STAEL PORTO ', '2024-01-26', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 4852, 'FERNANDA  LEME', '2024-01-23', 'Maruba', 'privê room', 'day 3', 13, 1, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 4851, 'GUTA VISCONTI', '2024-02-07', 'Maruba', 'sado room', 'day 3', 13, 2, 200, 0.1, 'pago', 'cartao', 2),
(participanteId, 4866, 'ANICE PRISCILA  ALBINO VIEIRA ', '2024-02-07', 'Maruba', 'privê room', 'day 1', 11, 4, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 4874, 'RAFAELA  GONZALVEZ', '2024-01-29', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 4877, 'MARCIA RODRIGUES DA SILVA ', '2024-01-29', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 4878, 'PAULA  SEVERO', '2024-01-28', 'Maruba', 'sado room', 'day 2', 12, 1, 180, 0.1, 'pago', 'cartao', 5),
(participanteId, 4885, 'BRUNO XAVIER DE LIMA', '2024-02-05', 'Maruba', 'outdoor', 'day 2', 12, 1, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 4883, 'LIDIANE  SANTOS', '2024-01-29', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'cartao', 3),
(participanteId, 4888, 'ISIS  ALVES GALVAO ', '2024-01-23', 'Maruba', 'privê room', 'day 3', 13, 2, 140, 0.1, 'pago', 'cartao', 2),
(participanteId, 4891, 'ANA BEATRIZ COSTA', '2024-02-06', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 4892, 'ARTHUR RIBEIRO DA SILVA', '2024-02-08', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'cartao', 6),
(participanteId, 4896, 'MARIA LÚCIA  CRUZ PROENÇA MARQUES ', '2024-01-22', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 6),
(participanteId, 4897, 'WALESKA NOGUEIRA', '2024-01-15', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 5),
(participanteId, 4901, 'MARCELA  NEVES', '2024-02-08', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'cartao', 5),
(participanteId, 4912, 'BRUNO  RODRIGUES PESSANHA DA SILVA', '2024-01-16', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 3),
(participanteId, 4913, 'ANA BEATRIZ  MARONES DE GUSMÃO MACHADO COURI ', '2024-02-14', 'Maruba', 'privê room', 'day 3', 13, 4, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 4917, 'NAIRA SILVEIRA', '2024-02-09', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 4920, 'MARIANNA ZATTAR', '2024-02-13', 'Maruba', 'outdoor', 'day 2', 12, 1, 80, 0.1, 'pago', 'cartao', 5),
(participanteId, 4919, 'ANA CAROLINA  CARVALHO PETRONE', '2024-02-08', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 4925, 'GISELE SEVERO DE AZEVEDO CUNHA', '2024-02-13', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 2),
(participanteId, 4926, 'LUCIANA ROCHA', '2024-02-09', 'Maruba', 'privê room', 'day 1', 11, 2, 100, 0.1, 'pago', 'cartao', 3),
(participanteId, 4922, 'FÁBIO  TORRES DA SILVA', '2024-01-29', 'Maruba', 'privê room', 'day 1', 11, 1, 100, 0.1, 'pago', 'cartao', 4),
(participanteId, 4922, 'ANDREA  ESNARRIAGA', '2024-01-29', 'Maruba', 'outdoor', 'day 2', 12, 1, 80, 0.1, 'pago', 'cartao', 4),
(participanteId, 4928, 'ALVINA ESNARRIAGA', '2024-01-20', 'Maruba', 'outdoor', 'day 1', 11, 1, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 4946, 'ANNA ESTEVES', '2024-01-28', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 4950, 'CAMILA MOTTA ABREU ', '2024-02-01', 'Maruba', 'sado room', 'day 2', 12, 1, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 4954, 'JOYCE PAIXÃO DA COSTA BUARQUE', '2024-01-25', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 1),
(participanteId, 4965, 'JAMES XAVIER', '2024-02-13', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 4966, 'ANDRE DE MARTINI', '2024-01-26', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 4969, 'SIMONE VOLKMANN BECKER CAMPOS PENA', '2024-02-06', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 6),
(participanteId, 4971, 'FLAVIA DE PAIVA GUIMARÃES ', '2024-02-05', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 4974, 'LUIZ ALEXANDRE MOTTA', '2024-02-14', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 6),
(participanteId, 4979, 'BIANCA MARTINS', '2024-01-23', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'cartao', 4),
(participanteId, 4980, 'FREDDY HENRIQUE LOPES DA SILVA', '2024-02-03', 'Maruba', 'privê room', 'day 3', 13, 1, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 4981, 'CAROLINE DOS SANTOS SILVA', '2024-01-15', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 4986, 'ERICA  BATISTA', '2024-02-14', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 4988, 'HENRIQUE ZAVAM ', '2024-01-20', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 4998, 'FERNANDA  LAVATORI LACERDA DE LIMA', '2024-02-11', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 5008, 'PIERRE SILVA REIS', '2024-02-13', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 5012, 'ANA LUIZA CUNHA', '2024-01-28', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 5013, 'CAROLINE SOARES', '2024-01-25', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 3),
(participanteId, 5029, 'EDINALVA FELIX', '2024-02-10', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5037, 'PAULO CASTILHO', '2024-02-14', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 5039, 'PAULO  CASTILHO', '2024-01-18', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 5041, 'LUCAS  ALCIDES', '2024-02-04', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 5045, 'LUCAS ALCIDES', '2024-01-31', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 5047, 'CRISTIANE  VIEIRA', '2024-02-03', 'Maruba', 'outdoor', 'day 1', 11, 1, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 5048, 'THAISE  OLIVEIRA ', '2024-01-31', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 5054, 'MARCELA CAMPOS', '2024-01-21', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 4),
(participanteId, 5063, 'LAIZ MONTEIRO DIAS DE FARIA', '2024-01-30', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 5068, 'DIOGO LUIZ CORREIA DE FARIA', '2024-02-10', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 5),
(participanteId, 5067, 'RENATA  FREITAS CESÁRIO MARTINS', '2024-01-16', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 5069, 'AGUSTÍN MONTEIRO', '2024-01-19', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 5074, 'EMILIO MONTEIRO', '2024-01-29', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 5075, 'FERNANDA MONTEIRO', '2024-01-29', 'Maruba', 'privê room', 'day 3', 13, 1, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5078, 'BIANCA  GUIMARÃES ', '2024-01-29', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 4),
(participanteId, 5079, 'DANIELA CRISTINA  ALVES TOSO ', '2024-02-11', 'Maruba', 'privê room', 'day 1', 11, 2, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 5083, 'TAMIRES SANTIAGO ', '2024-02-13', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 5088, 'ELIZABETH  DIAMANTINO', '2024-01-15', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 3),
(participanteId, 5088, 'CECILIA KAZNIAKOWSKI', '2024-01-15', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 3),
(participanteId, 5094, 'RAFAEL  MEDEIROS', '2024-02-12', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5095, 'POLYANA ALONSO ', '2024-02-05', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 5097, 'BRUNO BUSSADE', '2024-01-20', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 3),
(participanteId, 5102, 'GABRIELA BARROS', '2024-01-23', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 5103, 'ESTHER CASAMASSO', '2024-02-02', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 5104, 'ISABELLA  DE SOUZA E SILVA REIS ', '2024-02-07', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 2),
(participanteId, 5108, 'REJANE  LIMA DOS SANTOS ', '2024-01-15', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 3),
(participanteId, 5112, 'PRISCILA  GIMENE', '2024-02-12', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5112, 'PRISCILLA  LUZ', '2024-02-12', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5123, 'FATIMA CRISTINA  ARAUJO SEQUEIROS BUENO', '2024-01-22', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 5124, 'ANDERSON MENEZES BUENO', '2024-01-17', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'cartao', 5),
(participanteId, 5133, 'ANDRÉ  RODRIGUES', '2024-02-07', 'Maruba', 'privê room', 'day 3', 13, 2, 140, 0.1, 'pago', 'cartao', 4),
(participanteId, 5150, 'LUIZ CARLOS SOUZA DE  SANTANA', '2024-02-04', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 5185, 'TIAGO BELCAVELLO  GUEDES ', '2024-02-03', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 5188, 'BRUNO ALLEVATO', '2024-01-21', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'cartao', 4),
(participanteId, 5192, 'EDCARLOS  SANTOS ', '2024-02-07', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 3),
(participanteId, 5197, 'VIVIAN CRISTINA  PEREIRA ', '2024-01-24', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 5198, 'RACHEL WERNECK', '2024-02-12', 'Maruba', 'privê room', 'day 3', 13, 1, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5200, 'ANA OLIVEIRA', '2024-01-19', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'cartao', 2),
(participanteId, 5201, 'ANDERSON RELVA DE FARIAS', '2024-01-19', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 5207, 'CÉSAR  MENDES ', '2024-02-01', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 5207, 'ANE RANIE LINHARES DE BRITO', '2024-02-01', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5207, 'RAQUEL  BAZILIO DUBOSCQ', '2024-02-01', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5210, 'CARLOS  ANDRÉ OLIVEIRA', '2024-01-28', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 5214, 'FABIANA  MOURA MATOS', '2024-01-24', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'cartao', 5),
(participanteId, 5213, 'MARCOS ABREU', '2024-01-24', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 5216, 'PATRÍCIA MARIA  PORTELLA', '2024-01-29', 'Maruba', 'sado room', 'day 3', 13, 2, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 5221, 'PAULA MOREIRA', '2024-01-27', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 3),
(participanteId, 5228, 'TATIANE RIBEIRO DUARTE', '2024-02-09', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'cartao', 1),
(participanteId, 5232, 'STELA  TEIXEIRA', '2024-01-17', 'Maruba', 'outdoor', 'day 3', 13, 4, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5233, 'SIMONE  DA SILVA NOBREGA ', '2024-02-01', 'Maruba', 'sado room', 'day 1', 11, 2, 160, 0.1, 'pago', 'cartao', 1),
(participanteId, 5233, 'RAQUEL  SCHUINDT ', '2024-02-01', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'cartao', 1),
(participanteId, 5236, 'MICHAEL  FERNANDES ', '2024-01-28', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5247, 'SAMANTHA FILIZZOLA', '2024-01-27', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 5250, 'PATRÍCIA  SALGADO ', '2024-01-24', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'cartao', 6),
(participanteId, 5251, 'LEANDRO  ALVES NASCIMENTO ', '2024-02-05', 'Maruba', 'sado room', 'day 2', 12, 1, 180, 0.1, 'pago', 'cartao', 6),
(participanteId, 5254, 'VÍTOR  MOREIRA AGUIAR GOMES ', '2024-02-01', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 3),
(participanteId, 5254, 'SABRINA  DIAS DE LIMA AGUIAR ', '2024-02-01', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 3),
(participanteId, 5259, 'RENATO VALLE', '2024-02-04', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 5272, 'NATALIA FATIGATTE', '2024-01-29', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 3),
(participanteId, 5273, 'FELIPE  FARIAS', '2024-02-05', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'cartao', 2),
(participanteId, 5274, 'NATHALIA  LIMA ROSARIO DOS SANTOS', '2024-01-25', 'Maruba', 'privê room', 'day 2', 12, 1, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5276, 'RICARDO DE MELO PEREIRA', '2024-01-16', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'cartao', 1),
(participanteId, 5278, 'MICHELLE LOURENCO CORDA ILIOVITZ', '2024-02-02', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 5286, 'MARCELO DE AQUINO MENDONÇA', '2024-02-02', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 3),
(participanteId, 5287, 'LUCIANA CAMARA', '2024-02-01', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5293, 'ROBSON BRANDÃO', '2024-01-17', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5294, 'FELIPE DE MELO FONTE', '2024-01-20', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5295, 'RAFFAELA  LIMA', '2024-01-26', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 5297, 'MARCELLO JORGE', '2024-01-28', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5311, 'GABRIELLA GUGLIELMELLI', '2024-01-18', 'Maruba', 'outdoor', 'day 1', 11, 1, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 5313, 'LUIS ROBERTO MANNARINO', '2024-01-30', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 5317, 'CAMILA  BASTOS FIGUEIREDO ANTUNES ', '2024-02-06', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 4),
(participanteId, 5318, 'FELIPE BARRADAS ANTUNES ', '2024-01-24', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 5321, 'GIOVANNA SALES', '2024-02-05', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5323, 'ANDERSON MORAES PEREIRA', '2024-01-31', 'Maruba', 'outdoor', 'day 2', 12, 4, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 5326, 'LIDIA  LARANGEIRA', '2024-02-01', 'Maruba', 'outdoor', 'day 3', 13, 2, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5328, 'NATÁLIA  FATIGATTE', '2024-02-05', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 5329, 'THIAGO FERRAO', '2024-01-29', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5330, 'DOMINIQUE  SAURET', '2024-01-23', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'cartao', 2),
(participanteId, 5332, 'SALUSTIANA  OLIVEIRA DE SOUZA ', '2024-01-21', 'Maruba', 'sado room', 'day 1', 11, 4, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 5339, 'MARCIO  PEREIRA COSTA ', '2024-01-19', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 4),
(participanteId, 5347, 'TADEU ÁVILA', '2024-01-17', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 3),
(participanteId, 5348, 'PAULA PESTANA MELLO', '2024-02-01', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5355, 'OLIVIA RIBEIRO MALTA', '2024-02-05', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 5359, 'GUILHERME VENANCIO', '2024-02-06', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'cartao', 6),
(participanteId, 5360, 'ARIANE RAPOSO NOGUEIRA  SOARES', '2024-02-07', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'cartao', 1),
(participanteId, 5361, 'JULIANA MONTEIRO', '2024-02-13', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 5363, 'SOFIA MONTEIRO', '2024-02-05', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 5364, 'LARISSA  GOERING ', '2024-02-04', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5374, 'RAFAEL GOERING ', '2024-01-19', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 3),
(participanteId, 5376, 'CAMILA  DINIZ ', '2024-02-14', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 5378, 'GUSTAVO PENNA', '2024-02-02', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5378, 'QUÉZIA ABREU', '2024-02-02', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 5381, 'ANA PAULA MARTINS DE SOUZA E DIAS', '2024-02-05', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 5383, 'FLÁVIA  SAMPAIO MUSSE ', '2024-02-07', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 4),
(participanteId, 5388, 'TATIANA GUIMARÃES', '2024-01-19', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 5393, 'LIVIA MARINHO', '2024-02-02', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 3),
(participanteId, 5395, 'LIVIA  CARVALHO COSTA', '2024-01-31', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 2),
(participanteId, 5396, 'ROBERTA  CLAUDINO', '2024-01-16', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 5),
(participanteId, 5406, 'BIANCA DAMAREN ', '2024-02-04', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 6),
(participanteId, 5427, 'NILZIA VIEIRA', '2024-02-12', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 5434, 'LUCA GOMES', '2024-01-28', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 5436, 'LEONARDO  BITTENCOURT ', '2024-02-04', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 5435, 'LEONEL THEMOTEO', '2024-02-02', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5437, 'ANA BRAGA', '2024-01-29', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5437, 'PRISCYLLA CASTELAR', '2024-01-29', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 5442, 'ALISSON SILVA  BRITO ', '2024-01-26', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5442, 'CATIA GRANGEIRO DA SILVA', '2024-01-26', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5463, 'WANDERLEY CARREIRA', '2024-01-15', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 5466, 'RAFAEL GUIMARÃES', '2024-02-03', 'Maruba', 'sado room', 'day 2', 12, 4, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 5474, 'LEONARDO SALGADO DE BRITO BATISTA', '2024-01-21', 'Maruba', 'sado room', 'day 3', 13, 3, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 5477, 'FABIANE  RODRIGUES DE LIMA', '2024-01-31', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 5),
(participanteId, 5484, 'GISELI  TORRES', '2024-01-18', 'Maruba', 'privê room', 'day 1', 11, 1, 100, 0.1, 'pago', 'cartao', 6),
(participanteId, 5492, 'STEFANNY  LOURENÇO SOARES', '2024-02-04', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 6),
(participanteId, 5493, 'ANA BERMUDES', '2024-01-15', 'Maruba', 'outdoor', 'day 2', 12, 1, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 5494, 'SYLVIA DE LACERDA MONTEIRO', '2024-01-29', 'Maruba', 'outdoor', 'day 2', 12, 3, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 5500, 'ALEXANDRE WINKELMANN', '2024-02-09', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 6),
(participanteId, 5501, 'CAROLINNE  BENTO DUARTE', '2024-01-29', 'Maruba', 'outdoor', 'day 1', 11, 1, 70, 0.1, 'pago', 'cartao', 5),
(participanteId, 5503, 'ROBERTA ESTRELLA', '2024-02-10', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 1),
(participanteId, 5504, 'EVERTON DIAS DOS SANTOS', '2024-02-10', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 5509, 'JOSEANY ALVES DA SILVA SOUZA', '2024-02-10', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 5512, 'LUZINEI DE ARAUJO', '2024-01-28', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 5515, 'CAROLINA PAULA CAMPOS SILVEIRA ', '2024-02-11', 'Maruba', 'outdoor', 'day 2', 12, 2, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 5522, 'ESTHER SILVEIRA', '2024-02-01', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 6),
(participanteId, 5537, 'CAROLINA  PINHEIRO', '2024-01-15', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5542, 'LORENA MOREIRA', '2024-02-12', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 5543, 'ISABELLA BARBIERI', '2024-01-22', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'cartao', 6),
(participanteId, 5544, 'ANA CAROLINA  EGYPTO', '2024-02-05', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 4),
(participanteId, 5545, 'GUSTAVO GOUVEA TOMMASI DE CARVALHO', '2024-02-14', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 5),
(participanteId, 5551, 'BRUNO MARTINS DA SILVA', '2024-02-02', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5553, 'ADRIANA  COUTO', '2024-01-25', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 5559, 'CELIA CRISTINA PINTO DE OLIVEIRA', '2024-01-18', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 5562, 'LARISSA  HELENA MATHIAS DE LIMA E SOUZA BRANDÃO', '2024-01-16', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'cartao', 2),
(participanteId, 5563, 'HUA LIN CHANG', '2024-02-01', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 6),
(participanteId, 5567, 'TALITA  FERREIRA ', '2024-01-23', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 5587, 'SERGIO LUIZ N AZEVEDO', '2024-01-27', 'Maruba', 'privê room', 'day 3', 13, 1, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 5593, 'PATRICIA  MENDES', '2024-01-15', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 2),
(participanteId, 5606, 'CAMILA REZENDE ', '2024-02-02', 'Maruba', 'privê room', 'day 3', 13, 1, 140, 0.1, 'pago', 'cartao', 6),
(participanteId, 5609, 'ANDERSON  LEANDRO BONFIM', '2024-02-07', 'Maruba', 'privê room', 'day 3', 13, 4, 140, 0.1, 'pago', 'cartao', 3),
(participanteId, 5610, 'ANA CAROLINA   GOMES SOBRAL', '2024-01-31', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 5613, 'SIMONE  RODRIGUES SILVA', '2024-02-11', 'Maruba', 'outdoor', 'day 3', 13, 2, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 5613, 'FÁTIMA DIAS ALEXANDRINO', '2024-02-11', 'Maruba', 'sado room', 'day 3', 13, 2, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 5620, 'RODRIGO LANES DA SILVA', '2024-02-13', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5620, 'JULIANA FERNANDES DE SENNA NUNES', '2024-02-13', 'Maruba', 'privê room', 'day 1', 11, 4, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 5621, 'RODOLFO BASTOS GOMES DA SILVA', '2024-02-13', 'Maruba', 'outdoor', 'day 1', 11, 1, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 5625, 'CÍCERO RODRIGUES', '2024-02-13', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 3),
(participanteId, 5626, 'KEILA  ARAUJO DO AMARAL SANTOS ', '2024-01-22', 'Maruba', 'sado room', 'day 3', 13, 2, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 5629, 'EDUARDO FONSECA', '2024-02-06', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 5630, 'CARLOS  OLIVEIRA', '2024-01-26', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5636, 'ARLINDO SEBASTIÃO DE MELO', '2024-01-20', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5639, 'PAULO HENRIQUES ', '2024-02-02', 'Maruba', 'sado room', 'day 2', 12, 4, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 5640, 'EDIMAR PERICO ', '2024-01-31', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5642, 'ANDRINA ROCHA ALVES', '2024-02-04', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 5643, 'FREDERICO OZANAN  M RAMOS FILHO', '2024-01-22', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 5644, 'PEDRO DANTAS', '2024-01-27', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 5654, 'ROBERTA ELIAS', '2024-01-21', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 3),
(participanteId, 5655, 'MARINA FERRER', '2024-01-29', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 5),
(participanteId, 5667, 'ANNA ESTER PEREIRA SILVA', '2024-02-07', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 5671, 'ANTONIO CAVALHEIRO AC', '2024-01-30', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 5693, 'JOSIANE D G O SOUZA', '2024-01-16', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 2),
(participanteId, 5696, 'MARCELO BATISTA BRAGA', '2024-02-10', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 2),
(participanteId, 5702, 'AMANDA DI MISCIO', '2024-01-31', 'Maruba', 'privê room', 'day 1', 11, 4, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 5708, 'ROBSON DA SILVA ROMA', '2024-02-02', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 5712, 'MOZART NETO', '2024-02-06', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5718, 'NOAH  MENEZES', '2024-02-10', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 5721, 'MAYARA LAURENTINO ALVES CALDAS DE SOUZA', '2024-02-11', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 5739, 'MARIA DE FÁTIMA CARLIM CARLIM', '2024-01-17', 'Maruba', 'privê room', 'day 1', 11, 2, 100, 0.1, 'pago', 'cartao', 1),
(participanteId, 5746, 'TATIANE  SENA', '2024-02-06', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 3),
(participanteId, 5753, 'MARITZA ANZANELLO', '2024-01-21', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 5759, 'RAFAELA ARLOTTA', '2024-02-01', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'cartao', 3),
(participanteId, 5760, 'ALINE COUTINHO', '2024-01-19', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 5767, 'THIAGO SOARES NASCIMWNTO', '2024-01-28', 'Maruba', 'sado room', 'day 2', 12, 1, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 5780, 'GUSTAVO  SILVA SANTOS', '2024-01-30', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5788, 'ROBERTA  LIMA', '2024-01-30', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'cartao', 3),
(participanteId, 5806, 'FERNANDO LUCAS', '2024-01-16', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 5806, 'HORACIO  SILVA DO COUTO ', '2024-01-16', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 5811, 'GUSTAVO PACHECO DE SOUZA CRUZ', '2024-01-30', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 6),
(participanteId, 5813, 'LUCIANA ALVES SILVA', '2024-02-14', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 3),
(participanteId, 5814, 'LEANDRO DE OLIVEIRA  BARROS', '2024-02-03', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 5819, 'RENATA OLIVEIRA DE ALBUQUERQUE LIMA', '2024-01-26', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 5818, 'JOSÉ ALBERTO  BARONI', '2024-02-09', 'Maruba', 'privê room', 'day 1', 11, 1, 100, 0.1, 'pago', 'cartao', 3),
(participanteId, 5825, 'JUCELENE RAMOS DA SILVA', '2024-02-07', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 5827, 'ELLEN GONZAGA DE OLIVEIRA CASTRO', '2024-02-03', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 5832, 'SHEILA APARECIDA  SOARES DE MELO ', '2024-02-10', 'Maruba', 'privê room', 'day 3', 13, 4, 140, 0.1, 'pago', 'cartao', 1),
(participanteId, 5834, 'ELISA  DE SOUSA GOULART ', '2024-01-24', 'Maruba', 'outdoor', 'day 1', 11, 4, 70, 0.1, 'pago', 'cartao', 4),
(participanteId, 5836, 'CAMILA CURVELO', '2024-01-27', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 5839, 'BRUNA TAVARES VIEIRA DA SILVA ', '2024-01-23', 'Maruba', 'sado room', 'day 3', 13, 4, 200, 0.1, 'pago', 'cartao', 4),
(participanteId, 5841, 'MADALENA  MINUSSI', '2024-02-11', 'Maruba', 'outdoor', 'day 1', 11, 1, 70, 0.1, 'pago', 'cartao', 6),
(participanteId, 5847, 'FABIULA SCHWARTZ DE AZEVEDO', '2024-01-18', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'cartao', 1),
(participanteId, 5849, 'CAROLINE KNOPLOCH', '2024-01-28', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 5852, 'LUCIANA MONTEIRO', '2024-01-31', 'Maruba', 'sado room', 'day 2', 12, 4, 180, 0.1, 'pago', 'cartao', 2),
(participanteId, 5859, 'LUCAS  PEREIRA ', '2024-01-31', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'cartao', 4),
(participanteId, 5861, 'MARIA EDUARDA  BRAGA LEÃO', '2024-02-12', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 5861, 'CARLA FONTES', '2024-02-12', 'Maruba', 'privê room', 'day 2', 12, 1, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 5862, 'PATRICIA LUSIE VELOZO DA COSTA', '2024-01-16', 'Maruba', 'outdoor', 'day 2', 12, 3, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 5863, 'MAIRA LUCAS', '2024-01-16', 'Maruba', 'sado room', 'day 3', 13, 4, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 5867, 'VICTÓRIA LOPES DE CARVALHO', '2024-01-22', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 5871, 'ISABELLA AUGUSTA  MOREIRA DE OLIVEIRA ', '2024-02-14', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 5873, 'DAFNE BASTOS', '2024-01-20', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'cartao', 2),
(participanteId, 5875, 'EVANILDO  ROCHA ', '2024-02-11', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 6),
(participanteId, 5876, 'EVANILDO ROCHA', '2024-02-03', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 5877, 'NICOLE INGOUVILLE DE SOUZA', '2024-01-25', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 5),
(participanteId, 5877, 'PAULA SAMICO', '2024-01-25', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 5879, 'VICTOR   ALTOMAR PEREIRA ', '2024-01-16', 'Maruba', 'sado room', 'day 3', 13, 2, 200, 0.1, 'pago', 'cartao', 1),
(participanteId, 5885, 'PAULA SALDANHA', '2024-02-06', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 5890, 'MARIA ELIZABETH AZEVEDO', '2024-02-09', 'Maruba', 'outdoor', 'day 3', 13, 2, 90, 0.1, 'pago', 'cartao', 5),
(participanteId, 5901, 'RODRIGO  MOLINARES DOS SANTOS ', '2024-01-24', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 1),
(participanteId, 5905, 'SERGIO CARNEIRO DE CASTRO FILHO', '2024-02-13', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 5),
(participanteId, 5912, 'EDIMAR  PERICO', '2024-02-01', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 6),
(participanteId, 5916, 'HELIO ONO', '2024-01-18', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 5931, 'LILIAN S. FERREIRA', '2024-01-15', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 5933, 'MÍRCIA ESTELA TAXA', '2024-02-13', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 5937, 'FLÁVIA  DUTRA VENANCIO ', '2024-02-05', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 5943, 'BELLA MOLL', '2024-01-19', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5945, 'CRISTIANO ALVES', '2024-01-20', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 1),
(participanteId, 5952, 'ERIKA  CAVAZOS', '2024-02-07', 'Maruba', 'privê room', 'day 1', 11, 1, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 5956, 'CAILA RODRIGUES', '2024-01-18', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 5983, 'MARCELLO SAMPAIO', '2024-01-24', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 1),
(participanteId, 5990, 'APARECIDA RODRIGUES ', '2024-02-09', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 5992, 'MARIANA FREIRE', '2024-01-25', 'Maruba', 'privê room', 'day 3', 13, 4, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 5995, 'RUAN FELLIPE', '2024-01-30', 'Maruba', 'sado room', 'day 1', 11, 2, 160, 0.1, 'pago', 'cartao', 4),
(participanteId, 5995, 'ROBERTO GOIS', '2024-01-30', 'Maruba', 'outdoor', 'day 3', 13, 2, 90, 0.1, 'pago', 'cartao', 4),
(participanteId, 5996, 'CHRISTIANE HELLMUTH', '2024-02-06', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 6015, 'DANIEL DE SOUZA BARROSO', '2024-01-23', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 6025, 'LEONORA DE SOUZA BARROSO', '2024-01-17', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 6026, 'MAURILLO MONNERAT', '2024-01-25', 'Maruba', 'privê room', 'day 3', 13, 2, 140, 0.1, 'pago', 'cartao', 1),
(participanteId, 6029, 'ROGERIO OLIVEIRA', '2024-01-29', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 6),
(participanteId, 6031, 'ANA CAROLINA  BASTOS MAYNART DE MELO', '2024-01-31', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'cartao', 3),
(participanteId, 6054, 'LUCIANA  BATISTA ROSA ', '2024-02-11', 'Maruba', 'sado room', 'day 3', 13, 3, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 6058, 'REBECCA BARROS', '2024-01-22', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 6060, 'DANYELLE  VENTURA ', '2024-01-15', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 6072, 'ALEX SALTZ', '2024-02-01', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 6081, 'ÍSIS  POMPILI ', '2024-02-11', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 6084, 'THIAGO CESAR', '2024-01-18', 'Maruba', 'privê room', 'day 1', 11, 1, 100, 0.1, 'pago', 'cartao', 3),
(participanteId, 6096, 'JULIA  MARIA  PILLA ZUR NEDDEN', '2024-02-14', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 6117, 'RENATO COHEN', '2024-02-09', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 6118, 'ALCIDES FRANCISCO DA SILVA NETO', '2024-01-31', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 1),
(participanteId, 6124, 'FELIPE LEITE', '2024-01-31', 'Maruba', 'outdoor', 'day 3', 13, 4, 90, 0.1, 'pago', 'cartao', 4),
(participanteId, 6142, 'ALISSON CHEN', '2024-02-05', 'Maruba', 'outdoor', 'day 3', 13, 2, 90, 0.1, 'pago', 'cartao', 4),
(participanteId, 6142, 'ERICA SANTANA', '2024-02-05', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 6149, 'JOYCE  SILVA', '2024-02-06', 'Maruba', 'outdoor', 'day 2', 12, 2, 80, 0.1, 'pago', 'cartao', 1),
(participanteId, 6161, 'NATASHA ANASTACIA FERREIRA PINTO', '2024-01-24', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'cartao', 4),
(participanteId, 6165, 'CAROLINE MACIEL', '2024-02-14', 'Maruba', 'outdoor', 'day 2', 12, 4, 80, 0.1, 'pago', 'cartao', 3),
(participanteId, 6187, 'MARIA FERNANDA  ERASMI', '2024-01-18', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 6202, 'PEDRO HENRIQUE  CASTRO', '2024-02-09', 'Maruba', 'sado room', 'day 2', 12, 4, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 6209, 'FERNANDA MUNIZ MAINENTE', '2024-01-31', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 6218, 'RENATA MULLER', '2024-01-24', 'Maruba', 'outdoor', 'day 2', 12, 1, 80, 0.1, 'pago', 'cartao', 1),
(participanteId, 6221, 'EDUARDO MAGALHÃES', '2024-01-30', 'Maruba', 'outdoor', 'day 3', 13, 2, 90, 0.1, 'pago', 'cartao', 6),
(participanteId, 6221, 'MARCELA REIS ', '2024-01-30', 'Maruba', 'outdoor', 'day 2', 12, 2, 80, 0.1, 'pago', 'cartao', 6),
(participanteId, 6234, 'MARIA LUIZA  GOMES DOS SANTOS', '2024-01-19', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 6249, 'PAULO SANTOS', '2024-01-24', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 6260, 'MARCELA MALIZIA', '2024-02-06', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 6265, 'JONATHAN  FERNANDES DA SILVA', '2024-02-02', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 6276, 'DANIELA SILVA', '2024-02-03', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 2),
(participanteId, 6283, 'RAQUEL  CARIELLO', '2024-01-25', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 6283, 'THIAGO S BRACONI', '2024-01-25', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 6283, 'VALERIA SILVA ', '2024-01-25', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 6283, 'DANIELLE  PINNA', '2024-01-25', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 6283, 'ANA PADILHA', '2024-01-25', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 6286, 'MAYRA RIZZI', '2024-02-09', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 6296, 'ERNST KOETSIER', '2024-02-14', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'cartao', 5),
(participanteId, 6306, 'MADALENA MINUSSI', '2024-02-11', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 6309, 'ANDRÉA ROSA', '2024-02-05', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 6311, 'CAROL LANNE DA SILVA CAMPOS DE MOURA DINIZ GONÇALVES ', '2024-02-10', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 6311, 'SIMONE FERREIRA', '2024-02-10', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 6425, 'RENATO DIAS', '2024-02-03', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 6470, 'PATRÍCIA  NASCIMENTO DA CRUZ BOSSOLO GARCIA ', '2024-02-11', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 4),
(participanteId, 6514, 'CAMILA RODRIGUES ', '2024-02-06', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 6521, 'BRENNO  OLIVEIRA', '2024-01-28', 'Maruba', 'sado room', 'day 1', 11, 2, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 6540, 'MARIELZA  MARINHO ', '2024-02-10', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'cartao', 6),
(participanteId, 6550, 'EDIMILSON  MARINHO ', '2024-02-10', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 1),
(participanteId, 6574, 'MONICA MACIEL', '2024-02-11', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 6636, 'JENIFER  BARBOZA ', '2024-01-24', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 6645, 'MARCELLE LEMOS', '2024-01-29', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 6644, 'ANA CAROLINA  BRITTES DE ASSIS MONTEIRO ', '2024-02-05', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 1),
(participanteId, 6653, 'PATRICIA LEIBAO DA ROCHA', '2024-01-22', 'Maruba', 'outdoor', 'day 3', 13, 4, 90, 0.1, 'pago', 'cartao', 5),
(participanteId, 6733, 'PAULA  GUIMARÃES ', '2024-01-27', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'cartao', 2),
(participanteId, 6733, 'ROSANA  MELO DE OLIVEIRA SIMIÃO', '2024-01-27', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 2),
(participanteId, 6780, 'WELLINGTON  SIMIÃO DE SOUZA', '2024-02-11', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 3),
(participanteId, 6821, 'BRUNO VINICIUS DA SILVA DANTAS', '2024-02-08', 'Maruba', 'outdoor', 'day 2', 12, 1, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 6829, 'YARLY QUEIROZ DE LIMA', '2024-01-30', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 1),
(participanteId, 6836, 'LIDIANE  JORDÃO ', '2024-01-23', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 6841, 'LEANDRO LEMOS', '2024-01-31', 'Maruba', 'sado room', 'day 2', 12, 1, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 6847, 'RODRIGO  MARTINS DA SILVA', '2024-02-09', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 6895, 'PATRICIA RAPHAEL DE MELO', '2024-01-26', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 6905, 'JULIANA VIEIRA', '2024-02-07', 'Maruba', 'privê room', 'day 1', 11, 1, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 6933, 'THAÍS PATRÍCIA  PORTO SOARES ', '2024-02-12', 'Maruba', 'sado room', 'day 1', 11, 4, 160, 0.1, 'pago', 'cartao', 1),
(participanteId, 6931, 'ELIANE  DA ROCHA ARAÚJO ', '2024-01-15', 'Maruba', 'sado room', 'day 3', 13, 4, 200, 0.1, 'pago', 'cartao', 6),
(participanteId, 6943, 'NATASHA LIGNEUL', '2024-02-02', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 6945, 'DOUGLAS  PAGANOTTI SANTOS ', '2024-02-01', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 6963, 'RENATA  CARVALHO ', '2024-02-02', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 6984, 'LIVIA MARTINS LUNAU', '2024-01-21', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 6998, 'LUISA TELLEZ', '2024-02-06', 'Maruba', 'privê room', 'day 1', 11, 1, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 7013, 'MARA DALILA  FERNANDES ', '2024-02-11', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 7019, 'GILCINEIA  TEIXEIRA CAMARA', '2024-01-29', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 7058, 'SARAH PIMENTEL', '2024-01-24', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 7065, 'MICHELE ROSÁRIO', '2024-01-25', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 7068, 'ICARO MACEDO BADENES', '2024-02-10', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'cartao', 6),
(participanteId, 7070, 'AMANDA LORENA NUNES CRUZ', '2024-01-25', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 7090, 'SIMONE DOS ANJOS', '2024-01-20', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'cartao', 4),
(participanteId, 7110, 'ROSENILDA  PEREIRA ', '2024-01-25', 'Maruba', 'privê room', 'day 2', 12, 1, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 7111, 'VIVIANE FRAZAO', '2024-01-20', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 5),
(participanteId, 7114, 'GABRIELA GAERTNER', '2024-01-28', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'cartao', 3),
(participanteId, 7135, 'ELDA BOTELHO ', '2024-01-20', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 3),
(participanteId, 7169, 'DANDARA OLIVEIRA SEBASTIÃO', '2024-02-06', 'Maruba', 'privê room', 'day 3', 13, 2, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 7180, 'ALESSANDRA  MARTINS ', '2024-02-12', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'cartao', 4),
(participanteId, 7184, 'ELISA  FAGUNDES', '2024-01-25', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 7217, 'CRISTIANE  CASSIANO ', '2024-01-21', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 6),
(participanteId, 7268, 'ANALICE  PEREIRA CARVALHO ', '2024-01-17', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 7301, 'TÁBATA GOUVIN', '2024-01-28', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 2),
(participanteId, 7308, 'ORLANDO CRUZ JUNIOR', '2024-01-29', 'Maruba', 'outdoor', 'day 2', 12, 3, 80, 0.1, 'pago', 'cartao', 5),
(participanteId, 7308, 'JOANNA TOLOMEI ', '2024-01-29', 'Maruba', 'sado room', 'day 3', 13, 3, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 7311, 'ROGERIO VILELA RODRIGUES', '2024-02-14', 'Maruba', 'sado room', 'day 1', 11, 4, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 7380, 'MILLA ZAMPIROLLI DE ALMEIDA RODRIGUES ', '2024-02-10', 'Maruba', 'sado room', 'day 3', 13, 2, 200, 0.1, 'pago', 'cartao', 2),
(participanteId, 7386, 'VANIA  CRUZ NASCIMENTO ', '2024-01-29', 'Maruba', 'outdoor', 'day 3', 13, 4, 90, 0.1, 'pago', 'cartao', 5),
(participanteId, 7403, 'MARÍLIA RAMOS COELHO', '2024-01-31', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 7421, 'ALEX EDUARDO  BARBOSA SANTARÉM ', '2024-02-03', 'Maruba', 'sado room', 'day 1', 11, 2, 160, 0.1, 'pago', 'cartao', 2),
(participanteId, 7436, 'HANNAH  LEAL GOMES ', '2024-01-30', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 5),
(participanteId, 7435, 'RICARDO UBIRATAN DE BRITO', '2024-01-31', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'cartao', 4),
(participanteId, 7442, 'LUIZ RODRIGO  TOZZI ', '2024-01-31', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 3),
(participanteId, 7478, 'LOANY GONZAGA', '2024-02-12', 'Maruba', 'outdoor', 'day 2', 12, 1, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 7478, 'ROMÁRIO CHAVES DELGADO', '2024-02-12', 'Maruba', 'sado room', 'day 2', 12, 1, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 7500, 'RAISSA BRASIL', '2024-01-18', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 7526, 'DELCICLEIDE  MACHADO ', '2024-02-07', 'Maruba', 'sado room', 'day 2', 12, 4, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 7527, 'ANA SANT’ANNA ', '2024-01-29', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 1),
(participanteId, 7533, 'CAMILA MOREIRA', '2024-01-27', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 7535, 'PAULA MALTA DEL SARTO ', '2024-01-27', 'Maruba', 'privê room', 'day 3', 13, 4, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 7593, 'ANDREIA LOUREIRO ', '2024-01-24', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 7620, 'ANA MOREIRA', '2024-02-07', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 1),
(participanteId, 7633, 'DAYSE SILVEIRA DA SILVA ', '2024-01-24', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 7709, 'RAYANNE  EMMANUELLE ', '2024-02-13', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 7746, 'CAMILLA  BARCELOS ', '2024-02-06', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 4),
(participanteId, 7762, 'GLEIDSON  MUNIZ ', '2024-02-13', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 4),
(participanteId, 7780, 'NATALI  VILAS BOAS SILVEIRA ', '2024-01-15', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 5),
(participanteId, 7803, 'MAGALI  SONES ', '2024-02-07', 'Maruba', 'privê room', 'day 1', 11, 4, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 7799, 'ANA CLAUDIA MADY DE FREITAS ', '2024-02-12', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 7815, 'REBECA FERREIRA SANTOS ', '2024-02-09', 'Maruba', 'privê room', 'day 1', 11, 2, 100, 0.1, 'pago', 'cartao', 5),
(participanteId, 7834, 'ROGER BRANCO SIMÕES', '2024-02-10', 'Maruba', 'privê room', 'day 2', 12, 1, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 7846, 'LUCAS PRIANTE', '2024-02-14', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 1),
(participanteId, 7851, 'CAROLINA BIZOTTO', '2024-01-29', 'Maruba', 'sado room', 'day 2', 12, 1, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 7853, 'SAVIO JANNUZZI ', '2024-02-06', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'cartao', 5),
(participanteId, 7862, 'SILVANA  DO NASCIMENTO PAIXÃO ', '2024-01-22', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 7867, 'ROSA OLIVEIRA', '2024-01-26', 'Maruba', 'privê room', 'day 1', 11, 2, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 8019, 'LUZIALBA  RODRIGUES MARREIROS ', '2024-02-13', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 8032, 'ANA  PIO DE SOUZA', '2024-01-21', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 8045, 'ELIANE  CAETANO ', '2024-02-13', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 1),
(participanteId, 8097, 'BÁRBARA  CAETANO', '2024-02-01', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 3),
(participanteId, 8100, 'CAROLINA  CAETANO PINHEIRO DE OLIVEIRA ', '2024-01-29', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 8221, 'KEYNI  AMBROGI LIMA', '2024-01-31', 'Maruba', 'privê room', 'day 1', 11, 4, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 8239, 'FREDERICO PAULO  DE OLIVEIRA CAETANO', '2024-02-12', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 8245, 'LEONARDO PARADELA', '2024-01-19', 'Maruba', 'outdoor', 'day 1', 11, 1, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 8258, 'MARIANA ROCHA', '2024-01-20', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 5),
(participanteId, 8258, 'PAMELLA  SARTORI', '2024-01-20', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 8271, 'LUIS CARLOS DE ALMEIDA SERPA', '2024-02-05', 'Maruba', 'privê room', 'day 1', 11, 1, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 8306, 'PAULO AFONSO  COELHO', '2024-01-25', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 8310, 'JULYA CRUZ OLÍMPIO DA SILVA', '2024-01-29', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 8337, 'BETO LUNDGREN COACHING', '2024-01-15', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 5),
(participanteId, 8383, 'REBECA  ANDRADE BARBOSA', '2024-02-06', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 8441, 'RAPHAEL  ORTIZ', '2024-01-23', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 8461, 'SIMONE MENDES', '2024-02-02', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 1),
(participanteId, 8515, 'ALESSANDRA  SAYÃO', '2024-01-16', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 8538, 'HYRLLANNA  ALMEIDA DE SOUZA ', '2024-02-13', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 8540, 'ALEXANDRO  LUCAS DE ALMEIDA ', '2024-01-16', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 8548, 'MARIA  MORAES DE ANDRADE', '2024-01-18', 'Maruba', 'sado room', 'day 2', 12, 1, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 8589, 'JOSEANY ALVES', '2024-02-01', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 3),
(participanteId, 8636, 'ANA CLARA  MONTEIRO ', '2024-02-02', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'cartao', 2),
(participanteId, 8677, 'DANIELLE  SOUZA GARCIA CONCEIÇÃO ', '2024-01-29', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 8692, 'EDILSON REIS', '2024-01-15', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 3),
(participanteId, 8708, 'ANA CLARA CALHEIROS', '2024-02-09', 'Maruba', 'outdoor', 'day 1', 11, 1, 70, 0.1, 'pago', 'cartao', 4),
(participanteId, 8739, 'NATHALY RABELO', '2024-01-22', 'Maruba', 'outdoor', 'day 3', 13, 4, 90, 0.1, 'pago', 'cartao', 5),
(participanteId, 8754, 'TALYSSA GAZEL DO NASCIMENTO ', '2024-01-27', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 8934, 'KALEEN SOUSA LEITE', '2024-02-08', 'Maruba', 'outdoor', 'day 3', 13, 4, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 9006, 'CRISTIE  SICSÚ', '2024-01-26', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 2),
(participanteId, 9079, 'ERICK COSTA', '2024-02-01', 'Maruba', 'sado room', 'day 1', 11, 4, 160, 0.1, 'pago', 'cartao', 3),
(participanteId, 9085, 'FRANCIMAR  SANTOS', '2024-01-29', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 5),
(participanteId, 9085, 'FRANCISCA BRITO', '2024-01-29', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 5),
(participanteId, 9102, 'LUCIANA MELO', '2024-02-06', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 1),
(participanteId, 9116, 'YAGO FERREIRA', '2024-02-06', 'Maruba', 'outdoor', 'day 1', 11, 1, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 9126, 'CIBELE  MONTEFUSCO', '2024-01-18', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 5),
(participanteId, 9138, 'TALYSSA GAZEL', '2024-01-28', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 1),
(participanteId, 9163, 'NERISSA CAVALCANTE', '2024-02-10', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 9169, 'JOSE PABULO DE SOUZA', '2024-01-30', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 9177, 'LUANA CARVALHO', '2024-02-06', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 4),
(participanteId, 9181, 'HEBERT  SAMPAIO ', '2024-01-21', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 9208, 'JOÃO PIETRO  CARVALHO', '2024-02-13', 'Maruba', 'outdoor', 'day 1', 11, 4, 70, 0.1, 'pago', 'cartao', 1),
(participanteId, 9208, 'BRUNA LOPES', '2024-02-13', 'Maruba', 'sado room', 'day 2', 12, 4, 180, 0.1, 'pago', 'cartao', 1),
(participanteId, 9215, 'FLAVIA  GALLINDO', '2024-01-23', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 5),
(participanteId, 9234, 'NATHALIE BRASIL', '2024-02-09', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 9276, 'NATHALIE LEITE', '2024-01-26', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 9291, 'ALDENIZE CHAGAS DE SOUSA SOUSA', '2024-02-09', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 4),
(participanteId, 9312, 'YANO RODRIGUES', '2024-02-11', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'cartao', 2),
(participanteId, 9316, 'YANO RODRIGUES DA SILVA', '2024-01-15', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 1),
(participanteId, 9339, 'AMANDA MONTEIRO', '2024-02-13', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 9347, 'CAMILLE DINARAY LEVY ANGELIM ', '2024-01-21', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 9350, 'NATALIA  CAMPOS', '2024-01-22', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 9352, 'MARCELE GUIMARAES', '2024-02-02', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 9357, 'SARAH FURTADO', '2024-02-03', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 3),
(participanteId, 9367, 'MICHELE MACIEL', '2024-02-13', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 9370, 'DENISE GUIMARAES ', '2024-02-07', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 9405, 'SABRINA MONTEIRO', '2024-02-09', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 9408, 'SANDRA BERNARDA', '2024-02-05', 'Maruba', 'outdoor', 'day 1', 11, 4, 70, 0.1, 'pago', 'cartao', 4),
(participanteId, 9425, 'YASMIM MONTEIRO', '2024-01-17', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'cartao', 4),
(participanteId, 9434, 'JUMARA PIMENTA', '2024-02-05', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 9440, 'FLÁVIA  LUZ', '2024-01-28', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 9476, 'EDUARDA ATAHYDE', '2024-02-05', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 2),
(participanteId, 9482, 'MIRYAM SAAD', '2024-02-05', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 9491, 'ALCIANE ROCHA', '2024-02-01', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 9503, 'ESTER  SILVA ', '2024-02-10', 'Maruba', 'privê room', 'day 2', 12, 1, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 9527, 'CAROLINE MARROCOS ALVES', '2024-02-13', 'Maruba', 'sado room', 'day 2', 12, 4, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 9532, 'JUMARA SOUZA PIMENTA', '2024-02-11', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 9545, 'SARAH  COSTA ', '2024-01-18', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 9552, 'BIANCA GONZAGA ', '2024-01-16', 'Maruba', 'sado room', 'day 3', 13, 2, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 9588, 'AMANDA PRESTES', '2024-02-07', 'Maruba', 'privê room', 'day 3', 13, 2, 140, 0.1, 'pago', 'cartao', 2),
(participanteId, 9599, 'VICTOR ARAUJO', '2024-01-20', 'Maruba', 'sado room', 'day 2', 12, 4, 180, 0.1, 'pago', 'cartao', 2),
(participanteId, 9606, 'MARILENA  NASCIMENTO ', '2024-01-28', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 9607, 'WILKER PEREIRA', '2024-01-30', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 9608, 'MÁRCIA  CAMINHA ', '2024-01-31', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 9617, 'LEANDRO ALMEIDA', '2024-01-22', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 9617, 'MÔNICA POTY', '2024-01-22', 'Maruba', 'privê room', 'day 3', 13, 2, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 9618, 'RAINÉRIO SANTOS COSTA', '2024-02-10', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 9618, 'MÁRCIA CAMINHA', '2024-02-10', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 9620, 'MARCOS COSTA', '2024-01-27', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 6),
(participanteId, 9633, 'YASMIN  FEITOSA', '2024-02-05', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 9642, 'ALCIANE  ROCHA', '2024-02-07', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'cartao', 2),
(participanteId, 9640, 'DANIEL  CUNHA', '2024-01-18', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'cartao', 5),
(participanteId, 9648, 'CINTHIA SÁ', '2024-01-30', 'Maruba', 'outdoor', 'day 1', 11, 2, 70, 0.1, 'pago', 'cartao', 2),
(participanteId, 9651, 'LEONARDO MOTA', '2024-02-13', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 9653, 'JOÃO ANTÔNIO  OLIVEIRA DA SILVA', '2024-02-07', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 2),
(participanteId, 9659, 'IOLENE  SOUZA', '2024-01-24', 'Maruba', 'privê room', 'day 1', 11, 2, 100, 0.1, 'pago', 'cartao', 4),
(participanteId, 9665, 'MARIANA FINOTTI', '2024-02-03', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 9671, 'SHAUANA NOGUEIRA', '2024-02-06', 'Maruba', 'privê room', 'day 2', 12, 1, 120, 0.1, 'pago', 'pix', 0),
(participanteId, 9677, 'CARLA NOGUEIRA', '2024-01-15', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 9685, 'PAOLA RODRIGUES', '2024-01-21', 'Maruba', 'outdoor', 'day 3', 13, 2, 90, 0.1, 'pago', 'cartao', 1),
(participanteId, 9698, 'JULIE ALENCAR', '2024-01-26', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 9699, 'DANIEL  FERREIRA', '2024-01-31', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 9702, 'MÔNICA ROCHA', '2024-01-27', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 9703, 'DENYS CRUZ', '2024-02-03', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 9703, 'FELIPE ZANUSSO SOUZA', '2024-02-03', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 9712, 'MÁRCIA  ZANUSSO', '2024-02-11', 'Maruba', 'sado room', 'day 3', 13, 2, 200, 0.1, 'pago', 'cartao', 2),
(participanteId, 9715, 'ADRIELY LAIS DE SOUZA PEREIRA ', '2024-01-27', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 2),
(participanteId, 9722, 'GRAZIELE GARCIA DE SOUZA DE AMARAL', '2024-01-27', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 3),
(participanteId, 9728, 'VIVIANE CAPELLA', '2024-01-15', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 9734, 'ANDRÉA AZEVEDO  BEZERRA ', '2024-01-20', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 5),
(participanteId, 9741, 'CAMILA  DANTAS', '2024-01-22', 'Maruba', 'sado room', 'day 3', 13, 3, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 9742, 'VINICIUS FAVERO', '2024-02-11', 'Maruba', 'sado room', 'day 1', 11, 2, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 9748, 'MARCELO THOMAZINI', '2024-02-08', 'Maruba', 'privê room', 'day 1', 11, 4, 100, 0.1, 'pago', 'cartao', 4),
(participanteId, 9752, 'MARCUS ANDRÉ  RABELO', '2024-01-22', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 9754, 'ANA LUIZA CLEMENTINO DA SILVA', '2024-02-14', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 9754, 'JÉSSICA  GONZAGA NAPOLEÃO VALOIS ', '2024-02-14', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 9757, 'RAQUEL KARINA  CARDOSO DE SOUZA ', '2024-02-10', 'Maruba', 'privê room', 'day 3', 13, 1, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 9764, 'LAION NOGUEIRA', '2024-02-13', 'Maruba', 'outdoor', 'day 3', 13, 3, 90, 0.1, 'pago', 'cartao', 3),
(participanteId, 9767, 'JOAQUIM DE J. GOMES NOGUEIRA', '2024-01-15', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 9768, 'ANA M. FERREIRA XAVIER', '2024-02-09', 'Maruba', 'privê room', 'day 1', 11, 2, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 9768, 'RODRIGO  MOREIRA ', '2024-02-09', 'Maruba', 'sado room', 'day 1', 11, 2, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 9784, 'GECYLANE LIMA', '2024-01-27', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 9787, 'BRUNA CECÍLIA  DE OLIVEIRA GOMES ', '2024-02-13', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 9789, 'CAROLINE AMENDOLA ', '2024-01-20', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 9792, 'ANDRESSA  CHAVES', '2024-01-17', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 6),
(participanteId, 9805, 'CAMILA RODRIGUES DA COSTA  RODRIGUES ', '2024-02-09', 'Maruba', 'sado room', 'day 3', 13, 3, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 9817, 'MÔNICA RAFAELLA MACEDO', '2024-02-13', 'Maruba', 'outdoor', 'day 1', 11, 4, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 9821, 'MÔNICA RAFAELLA  DOS SANTOS ', '2024-02-05', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'boleto', 0),
(participanteId, 9823, 'ROGÉRIO ARAÚJO TEIXEIRA', '2024-02-13', 'Maruba', 'privê room', 'day 1', 11, 2, 100, 0.1, 'pago', 'cartao', 2),
(participanteId, 9824, 'JANETH FERNANDES ', '2024-01-17', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 5),
(participanteId, 9826, 'KAREN DE SANTIS', '2024-01-21', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 9834, 'ALEXIA  LUIZA', '2024-02-08', 'Maruba', 'privê room', 'day 1', 11, 2, 100, 0.1, 'pago', 'cartao', 6),
(participanteId, 9839, 'ALEXIA COSTA', '2024-02-01', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 9839, 'GABRIELLE ANDRADE RIBEIRO', '2024-02-01', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 9847, 'VIVIAN FERNANDA  CARNEIRO MARTINS ', '2024-02-09', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 6),
(participanteId, 9850, 'ELLEN NEGREIROS ', '2024-01-16', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 1),
(participanteId, 9853, 'ELLEN AMAZONIA', '2024-02-07', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 9858, 'ELLEN  OLIVEIRA ', '2024-02-03', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 9859, 'SERGIO MAURÍCIO', '2024-01-28', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 9866, 'ANDRE LUIZ  ANDRADE', '2024-01-23', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 9868, 'DOMENICA  SARKOVAS ', '2024-02-04', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 5),
(participanteId, 9871, 'MARCELLY XAVIER', '2024-02-08', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'cartao', 6),
(participanteId, 9871, 'LIVIA  COSTA DA SILVA', '2024-02-08', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'cartao', 6),
(participanteId, 9874, 'RACHEL LOBO', '2024-02-03', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 3),
(participanteId, 9881, 'FABIO CARLOS  DA PAZ', '2024-01-22', 'Maruba', 'privê room', 'day 3', 13, 1, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 9882, 'NATÁLIA TUPINAMBÁ', '2024-01-20', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 2),
(participanteId, 9887, 'CAMILA  LOPES', '2024-01-20', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 9891, 'ERIKA  SANTANA', '2024-01-18', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 9893, 'CAMILA LOPES', '2024-01-25', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 9892, 'THIAGO SILVA', '2024-02-13', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 1),
(participanteId, 9895, 'ÍCARO FREITAS', '2024-01-22', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'boleto', 0),
(participanteId, 9906, 'WALTER JUUR', '2024-01-16', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 9908, 'ROBERTA  FURTADO ', '2024-01-15', 'Maruba', 'outdoor', 'day 2', 12, 3, 80, 0.1, 'pago', 'cartao', 4),
(participanteId, 9909, 'MAYARA  CARVALHO ', '2024-01-30', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 9910, 'MARCOS  ALVES', '2024-02-09', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 4),
(participanteId, 9910, 'JAQUELINE  SARMENTO DA SILVA ', '2024-02-09', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 4),
(participanteId, 9916, 'OSMAR CRISTIANO NEVES', '2024-02-12', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 6),
(participanteId, 9919, 'GABRIELA  SEQUEIRA DA SILVA ', '2024-01-25', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 9925, 'ANA PAULA MENDONÇA MONTEIRO', '2024-02-13', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 2),
(participanteId, 9928, 'SELMA SEQUEIRA DA SILVA ', '2024-01-31', 'Maruba', 'sado room', 'day 3', 13, 3, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 9938, 'CHARLANYS SANTOS ', '2024-01-17', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 5),
(participanteId, 9941, 'CAMILA CAMPOS', '2024-02-04', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'cartao', 1),
(participanteId, 9943, 'JÉSSICA SANTOS SILVA', '2024-01-16', 'Maruba', 'sado room', 'day 3', 13, 3, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 9948, 'MANUELA PREZZI', '2024-01-23', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 2),
(participanteId, 9953, 'GUSTAVO LACOMBE', '2024-01-28', 'Maruba', 'privê room', 'day 3', 13, 4, 140, 0.1, 'pago', 'cartao', 1),
(participanteId, 9955, 'ROBERTO  DE SOUZA ', '2024-01-18', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 1),
(participanteId, 9962, 'JESSICA PINHEIRO', '2024-01-27', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 4),
(participanteId, 9965, 'BEATRIZ DA COSTA', '2024-01-19', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 4),
(participanteId, 9968, 'ROBERTA  CAMPELO', '2024-01-30', 'Maruba', 'sado room', 'day 3', 13, 4, 200, 0.1, 'pago', 'cartao', 1),
(participanteId, 9970, 'NATALIA GAMA', '2024-01-17', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'cartao', 3),
(participanteId, 9975, 'LARA SILVA', '2024-01-24', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'pix', 0),
(participanteId, 9985, 'JEAN PAULO COSTA', '2024-02-02', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 1),
(participanteId, 9990, 'MARCIA  BRANDÃO DE ARAUJO OLIVEIRA ', '2024-02-04', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 10006, 'ANANDA  PRAIA', '2024-02-03', 'Maruba', 'outdoor', 'day 2', 12, 2, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 10013, 'LÍVIA BIBAS', '2024-02-03', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 4),
(participanteId, 10016, 'MARCELO FILHO', '2024-02-13', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 10024, 'CONCEICAO APARECIDA DE MARTINS', '2024-01-21', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 10026, 'VIVIAN SCHEIDEGGER WENDOS PEREIRA ', '2024-02-02', 'Maruba', 'sado room', 'day 2', 12, 4, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 10032, 'RAFAEL LOPES PEREIRA', '2024-01-31', 'Maruba', 'sado room', 'day 1', 11, 1, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 10034, 'MADALENA VIEIRA', '2024-02-02', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 6),
(participanteId, 10035, 'BRUNA  SOUZA', '2024-02-06', 'Maruba', 'sado room', 'day 1', 11, 3, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 10038, 'LUIZ FELIPE  SILVA XAVIER ', '2024-02-01', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 10043, 'ANNAMARIA MARCHESINI', '2024-01-29', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 5),
(participanteId, 10049, 'ESTHER NOBRE', '2024-01-30', 'Maruba', 'sado room', 'day 2', 12, 2, 180, 0.1, 'pago', 'cartao', 4),
(participanteId, 10053, 'GEISIANE LIMA', '2024-02-13', 'Maruba', 'outdoor', 'day 2', 12, 3, 80, 0.1, 'pago', 'cartao', 1),
(participanteId, 10053, 'MAYARA  PESSOA ', '2024-02-13', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'cartao', 1),
(participanteId, 10055, 'JOÃO VITOR SILVA DE SOUZA', '2024-02-12', 'Maruba', 'privê room', 'day 1', 11, NULL, 100, 0.1, 'pago', 'cartao', 6),
(participanteId, 10057, 'CAMILA MATOS', '2024-01-19', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 10058, 'JOÃO SILVA', '2024-01-25', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 10060, 'CAROLINA  COSTA', '2024-01-24', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 3),
(participanteId, 10066, 'CAROLINE  GAMA', '2024-02-13', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 3),
(participanteId, 10068, 'JOSÉ ADRIANO CASTRO DE OLIVEIRA JÚNIOR', '2024-01-25', 'Maruba', 'privê room', 'day 1', 11, 4, 100, 0.1, 'pago', 'cartao', 4),
(participanteId, 10072, 'MARCOS ROCHA', '2024-02-12', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 1),
(participanteId, 10074, 'PRISCILA  DA ROCHA SAVINO ', '2024-02-01', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 10081, 'ROZANA  TRILHA ', '2024-01-23', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'cartao', 2),
(participanteId, 10082, 'ELIZETE  GOMES DE SOUZA ', '2024-02-06', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 4),
(participanteId, 10082, 'RAFAEL TRISTAO', '2024-02-06', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 4),
(participanteId, 10090, 'PAULA GABRIEL', '2024-01-28', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 1),
(participanteId, 10089, 'LEANDRO AUGUSTO LEITE DOS SANTOS', '2024-02-01', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 2),
(participanteId, 10092, 'CARINA  CASTRO SANTOS GUEDES ', '2024-01-25', 'Maruba', 'outdoor', 'day 2', 12, 2, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 10099, 'ANA PAULA BELLO DE SOUSA BEZERRA', '2024-02-07', 'Maruba', 'privê room', 'day 3', 13, 2, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 10099, 'NATHALY  MARCULINO ', '2024-02-07', 'Maruba', 'outdoor', 'day 2', 12, 2, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 10107, 'VALÉRIA MARQUES', '2024-02-06', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 1),
(participanteId, 10111, 'ADRIANO GABRIEL VELLOSO BILBY', '2024-02-09', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'cartao', 6),
(participanteId, 10116, 'PATRICIA ARAÚJO', '2024-01-21', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'boleto', 0),
(participanteId, 10135, 'ANA PAULA BEZERRA', '2024-01-24', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 1),
(participanteId, 10136, 'LAY AMORIM ', '2024-02-06', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 1),
(participanteId, 10139, 'RODRIGO SILVA DE MELO', '2024-01-30', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'cartao', 2),
(participanteId, 10140, 'JOSE  LUCAS DE JESUS CANDIDO', '2024-02-01', 'Maruba', 'outdoor', 'day 3', 13, 4, 90, 0.1, 'pago', 'cartao', 1),
(participanteId, 10148, 'MARCELO  FRANCISCO COELHO', '2024-02-06', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 5),
(participanteId, 10149, 'LUCIANI PINTO', '2024-01-21', 'Maruba', 'outdoor', 'day 1', 11, 4, 70, 0.1, 'pago', 'cartao', 5),
(participanteId, 10151, 'NICHOLAS BITTENCOURT', '2024-02-02', 'Maruba', 'sado room', 'day 2', 12, 1, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 10151, 'BRENNER TENAZOR', '2024-02-02', 'Maruba', 'sado room', 'day 3', 13, 1, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 10157, 'YNARA  MIKILIS', '2024-01-16', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'cartao', 1),
(participanteId, 10158, 'MARCIO B R SILVA', '2024-01-23', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'cartao', 3),
(participanteId, 10159, 'JAÚ RIBEIRO VIEIRA', '2024-01-21', 'Maruba', 'outdoor', 'day 2', 12, 4, 80, 0.1, 'pago', 'cartao', 2),
(participanteId, 10159, 'LORRAINE  MATTOS ', '2024-01-21', 'Maruba', 'sado room', 'day 1', 11, 4, 160, 0.1, 'pago', 'cartao', 2),
(participanteId, 10162, 'RAPHAELA  DIOHANA', '2024-02-01', 'Maruba', 'sado room', 'day 3', 13, 3, 200, 0.1, 'pago', 'pix', 0),
(participanteId, 10164, 'SHARLENE ARAÚJO', '2024-02-06', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 3),
(participanteId, 10172, 'FLÁVIA GOMES', '2024-02-01', 'Maruba', 'outdoor', 'day 1', 11, NULL, 70, 0.1, 'pago', 'boleto', 0),
(participanteId, 10172, 'CAIO VINICIUS ', '2024-02-01', 'Maruba', 'sado room', 'day 3', 13, NULL, 200, 0.1, 'pago', 'boleto', 0),
(participanteId, 10176, 'ALINE  DUARTE ', '2024-01-18', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 2),
(participanteId, 10181, 'JÉSSICA  NERY', '2024-01-25', 'Maruba', 'privê room', 'day 3', 13, 2, 140, 0.1, 'pago', 'cartao', 3),
(participanteId, 10190, 'CARLA  DAMASCENO ', '2024-02-12', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 10188, 'EDINHO CRUZ', '2024-01-18', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 10192, 'JULIANA  NEVES ', '2024-01-28', 'Maruba', 'outdoor', 'day 1', 11, 3, 70, 0.1, 'pago', 'pix', 0),
(participanteId, 10198, 'WALTER BARRETO JÚNIOR', '2024-02-04', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0),
(participanteId, 10198, 'FERNANDA  DOS PASSOS CRUZ ', '2024-02-04', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 10206, 'JOÃO PEDRO ARAÚJO', '2024-02-14', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 10208, 'LAURIE RODRIGUES', '2024-01-29', 'Maruba', 'outdoor', 'day 2', 12, 2, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 10210, 'DENISE ROSA SANTOS  SANTOS ', '2024-02-04', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'pix', 0),
(participanteId, 10211, 'MARIA CLARA CASTIGLIA', '2024-01-17', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 2),
(participanteId, 10224, 'ANDREINA  BARBOSA', '2024-02-10', 'Maruba', 'sado room', 'day 2', 12, 3, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 10230, 'DENISE ROSA  SANTOS ', '2024-01-25', 'Maruba', 'outdoor', 'day 3', 13, 1, 90, 0.1, 'pago', 'boleto', 0),
(participanteId, 10235, 'RICARDO  CUNHA', '2024-01-27', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 6),
(participanteId, 10236, 'FRANCISCO JORGE  MESQUITA ', '2024-02-07', 'Maruba', 'privê room', 'day 2', 12, 3, 120, 0.1, 'pago', 'cartao', 6),
(participanteId, 10239, 'GRAZIELE GUERREIRO', '2024-02-03', 'Maruba', 'privê room', 'day 3', 13, 3, 140, 0.1, 'pago', 'boleto', 0),
(participanteId, 10242, 'MATHEUS  BRASIL', '2024-02-08', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'cartao', 4),
(participanteId, 10244, 'JULIANA  GOMES DA COSTA DE AZEVEDO ', '2024-02-07', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 10247, 'EMANUELLY  ALMEIDA', '2024-01-31', 'Maruba', 'outdoor', 'day 2', 12, 2, 80, 0.1, 'pago', 'boleto', 0),
(participanteId, 10247, 'JULIANA GOMES DA COSTA DE AZEVEDO', '2024-01-31', 'Maruba', 'privê room', 'day 2', 12, 2, 120, 0.1, 'pago', 'boleto', 0),
(participanteId, 10262, 'REBECA  GADELHA DA SILVA', '2024-01-22', 'Maruba', 'privê room', 'day 2', 12, 1, 120, 0.1, 'pago', 'cartao', 1),
(participanteId, 10265, 'KETHELEN  SILVA ', '2024-02-06', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'cartao', 4),
(participanteId, 10269, 'LARISSA  GADELHA FREITAS DA SILVA ', '2024-02-12', 'Maruba', 'privê room', 'day 2', 12, 4, 120, 0.1, 'pago', 'cartao', 3),
(participanteId, 10278, 'JOICIMONE PEREIRA', '2024-02-10', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'pix', 0),
(participanteId, 10280, 'BEATRIZ GUIMARÃES DA CONCEIÇÃO', '2024-02-06', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'pix', 0),
(participanteId, 10280, 'VITOR MOTTA', '2024-02-06', 'Maruba', 'outdoor', 'day 2', 12, NULL, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 10285, 'NOELE ANDRADE', '2024-01-21', 'Maruba', 'privê room', 'day 1', 11, 3, 100, 0.1, 'pago', 'cartao', 1),
(participanteId, 10292, 'BEATRIZ DA CONCEIÇÃO', '2024-01-21', 'Maruba', 'sado room', 'day 2', 12, NULL, 180, 0.1, 'pago', 'cartao', 1),
(participanteId, 10294, 'ROBERTO COSTA', '2024-01-16', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 3),
(participanteId, 10295, 'GIOVANA FIGUEIREDO', '2024-02-09', 'Maruba', 'privê room', 'day 3', 13, NULL, 140, 0.1, 'pago', 'cartao', 4),
(participanteId, 10298, 'GIOVANA COSTA', '2024-01-31', 'Maruba', 'outdoor', 'day 2', 12, 1, 80, 0.1, 'pago', 'cartao', 6),
(participanteId, 10299, 'LUCKA  BUTTER', '2024-01-27', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 3),
(participanteId, 10301, 'JOSELIA CONCEIÇÃO SOUSA DA  SILVA', '2024-02-06', 'Maruba', 'outdoor', 'day 2', 12, 4, 80, 0.1, 'pago', 'cartao', 6),
(participanteId, 10304, 'LUANA JASSET', '2024-02-05', 'Maruba', 'outdoor', 'day 2', 12, 4, 80, 0.1, 'pago', 'pix', 0),
(participanteId, 10303, 'ELISABETE  DE OLIVEIRA GOMES ', '2024-01-18', 'Maruba', 'sado room', 'day 1', 11, NULL, 160, 0.1, 'pago', 'cartao', 6),
(participanteId, 10303, 'PRISCIA GONÇALVES DAMASIO', '2024-01-18', 'Maruba', 'privê room', 'day 2', 12, NULL, 120, 0.1, 'pago', 'cartao', 6),
(participanteId, 10305, 'DIEGO MOTA DE SOUZA ', '2024-01-25', 'Maruba', 'outdoor', 'day 3', 13, NULL, 90, 0.1, 'pago', 'pix', 0);


insert into cupons values
(id, 'grandpaskite', 'fixo', 'tudo', NULL, 50),
(id, 'blackmamba', 'fixo', 'alguns', '11,12', 50),
(id, 'paumeirense', 'percentual', 'tudo', NULL, 0.1),
(id, 'spearofdestiny', 'percentual', 'alguns', '13', 0.1);

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
