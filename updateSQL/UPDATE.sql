
CREATE DATABASE carro_db;

USE carro_db;

CREATE TABLE tbl_carros (
	placa VARCHAR(7),
	marca VARCHAR(30) NOT NULL,
	modelo VARCHAR (20) NOT NULL,
	ano INT NOT NULL,
	combustivel VARCHAR (1) NOT NULL,
	PRIMARY KEY (placa)
	);

INSERT INTO tbl_carros (placa, marca, modelo, ano, combustivel) VALUES
('ABC1234', 'Ford', 'Corcel II', 1982, 'G'),
('JKG5678', 'Ford', 'Focus',2001, 'A'),
('LKO8954', 'Renault', 'Clio', 2007, 'F'),
('MMS1609', 'VolksWagen', 'Fusca', 1973, 'G'),
('ASD123', 'Honda', 'Civic', 2010, 'F'),
('GRT4596', 'GM', 'Corsa', 2004, 'A');

SELECT * FROM tbl_carros;
DROP TABLE tbl_carros;


CREATE TABLE tbl_vendedores (
	codigo INT,
	nome VARCHAR(100) NOT NULL,
	carro VARCHAR(7) NULL,
	cidade VARCHAR (50) NOT NULL,
	estado VARCHAR (50) NOT NULL,
	comissao DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (codigo),
	FOREIGN KEY (carro) REFERENCES tbl_carros (placa)
	);

INSERT INTO tbl_vendedores (codigo, nome, carro, cidade, estado, comissao) VALUES
(1, 'Juca da Silva', 'ABC1234', 'Pelotas', 'RS', 3.50),
(3, 'Antonio Vieira', 'JKG5678', 'Dois Vizinhos', 'PR', 5.00),
(44, 'Julieta da Silva', NULL, 'Verê', 'PR', 2.50),
(6, 'Maria Francisca', 'LKO8954', 'Dois Vizinhos', 'PR', 2.00),
(45, 'Marieta da Silva', NULL, 'Verê', 'PR', 2.80),
(9, 'Juca Silva', NULL, 'Pelotas', 'RS', 3.50),
(18, 'Maria Guedes', 'MMS1609', 'Brasilia', 'DF', 5.40),
(20, 'Jian de Barros', 'ASD123', 'Curitiba', 'PR', 3.40),
(28, 'Fagundes de Azevedo', NULL, 'Verê', 'PR', 2.80),
(40, 'Ari Ribas', 'GRT4596', 'Erechim', 'RS', 3.50);

SELECT * FROM tbl_vendedores;
DROP TABLE tbl_vendedores;


INSERT INTO tbl_carros (placa, marca, modelo, ano, combustivel) VALUES
('MBC1801', 'RAY TPN', 'Limousine',2011, 'A'),
('HEL1502', 'CHARIOT', 'Tesla', 1997, 'F'),
('MIL2411', 'SHERLOCK', 'Corsa', 2016, 'G'),
('ART0607', 'SIX SEVEN', 'Lambourguini', 2015, 'A');

UPDATE tbl_vendedores
SET carro = 'MBC1801'
WHERE codigo = 44;

UPDATE tbl_vendedores
SET carro = 'HEL1502'
WHERE codigo = 9;

UPDATE tbl_vendedores
SET carro = 'MIL2411'
WHERE codigo = 45;

UPDATE tbl_vendedores
SET carro = 'ART0607'
WHERE codigo = 28;

SELECT * FROM tbl_vendedores;