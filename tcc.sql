-- CREATE TABLES CANDIDATOS

create table usuarios (
	id_usuario INT,
	nome VARCHAR(50),
	sobrenome VARCHAR(50),
	cpf VARCHAR(11),
	data_nascimento DATE,
	email VARCHAR(50),
	PRIMARY KEY (id_usuario)
);

create table login_usuarios (
	id_login_usuario INT,
	id_usuario INT,
	usuario VARCHAR(50),
	senha VARCHAR(50),
	PRIMARY KEY (id_login_usuario),
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

create table endereco (
	id_endereco INT,
	id_usuario INT,
	logradouro VARCHAR(50),
	numero INT,
	complemento VARCHAR(50),
	bairro VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(2),
	PRIMARY KEY (id_endereco),
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

create table perfil_profissional (
	id_pp INT,
	id_usuario INT,
	PRIMARY KEY (id_pp),
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

create table historico_profissional  (
	id_hp INT,
	id_pp INT,
	nome_empresa VARCHAR(50),
	funcao VARCHAR(50),
	descricao VARCHAR(150),
	data_inicio DATE,
	data_termino DATE,
	PRIMARY KEY (id_hp),
	FOREIGN KEY (id_pp) REFERENCES perfil_profissional(id_pp)
);

create table formacao_profissional (
	id_fp INT,
	id_pp INT,
	nome_instituicao VARCHAR(50),
	curso VARCHAR(50),
	nivel VARCHAR(50),
	data_inicio DATE,
	data_termino DATE,
	PRIMARY KEY (id_fp),
	FOREIGN KEY (id_pp) REFERENCES perfil_profissional(id_pp)
);

create table skill_profissional (
	id_sp INT,
	id_pp INT,
	skill VARCHAR(50),
	PRIMARY KEY (id_sp),
	FOREIGN KEY (id_pp) REFERENCES perfil_profissional(id_pp)
);

---- INSERT INTO USUARIOS

insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (1, 'Solène', 'Brewer', '43848858236', '1965-06-12 14:18:45', 'mbrewer0@ted.com');
insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (2, 'Andréanne', 'Rainford', '94811377206', '1964-03-21 12:58:11', 'yrainford1@odnoklassniki.ru');
insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (3, 'Tú', 'Sydney', '56279231508', '1965-01-22 14:32:15', 'esydney2@nasa.gov');
insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (4, 'Kévina', 'Chishull', '13726194226', '1952-01-09 03:48:54', 'echishull3@omniture.com');
insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (5, 'Torbjörn', 'Greenaway', '20353105334', '1965-06-24 19:59:25', 'ngreenaway4@1688.com');
insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (6, 'Faîtes', 'Emmens', '20287027054', '1982-09-22 03:34:34', 'kemmens5@desdev.cn');
insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (7, 'Néhémie', 'Kellitt', '85619657513', '1974-11-15 18:35:46', 'rkellitt6@gizmodo.com');
insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (8, 'Göran', 'Cheetham', '18211479007', '2000-01-29 12:47:36', 'tcheetham7@zdnet.com');
insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (9, 'Torbjörn', 'Solomonides', '40326339322', '1966-05-23 18:15:47', 'msolomonides8@paypal.com');
insert into usuarios (id_usuario, nome, sobrenome, cpf, data_nascimento, email) values (10, 'Maéna', 'Conibeer', '98885853492', '1965-12-02 12:14:22', 'cconibeer9@comsenz.com');

insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (1, 1, 'fbirchenhead0', 'Ae97Cn');
insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (2, 2, 'bconnechy1', 'XgD0rUvbY1T');
insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (3, 3, 'rasif2', 'l2OdSQxcLY');
insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (4, 4, 'enibloe3', '4ypr6ePQ1');
insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (5, 5, 'ablankman4', 'Mk0WapUGnhX');
insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (6, 6, 'murquhart5', 'K1ueeb');
insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (7, 7, 'pbroz6', 'pYRKQJ');
insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (8, 8, 'dbucknell7', 'BmShJK5uywn');
insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (9, 9, 'fheffernon8', 'SAHpugcF');
insert into login_usuarios (id_login_usuario, id_usuario, usuario, senha) values (10, 10, 'ksugden9', 'VcV7OwEgn');

insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (1, 1, 'Butterfield', '83951', 'Way', 'Indiana', 'IN', 'Indianapolis');
insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (2, 2, 'Stang', '9', 'Place', 'Georgia', 'GA', 'Lawrenceville');
insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (3, 3, 'Roxbury', '2650', 'Pass', 'West Virginia', 'WV', 'Charleston');
insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (4, 4, 'Glacier Hill', '1', 'Road', 'Arizona', 'AZ', 'Mesa');
insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (5, 5, 'Graedel', '05', 'Circle', 'District of Columbia', 'DC', 'Washington');
insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (6, 6, 'Hauk', '00587', 'Court', 'Connecticut', 'CT', 'New Haven');
insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (7, 7, 'Caliangt', '99768', 'Junction', 'District of Columbia', 'DC', 'Washington');
insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (8, 8, 'Colorado', '515', 'Place', 'Oklahoma', 'OK', 'Oklahoma City');
insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (9, 9, 'Colorado', '81998', 'Junction', 'Florida', 'FL', 'Naples');
insert into endereco (id_endereco, id_usuario, logradouro, numero, complemento, bairro, estado, cidade) values (10, 10, 'Gulseth', '73', 'Terrace', 'Massachusetts', 'MA', 'Boston');



-- CREATE TABLES EMPRESAS

create table empresas (
	id_empresa INT,
	nome_exibicao VARCHAR(50),
	nome_fantasia VARCHAR(50),
	cnpj VARCHAR(14),
	email VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(2),
	PRIMARY KEY (id_empresa)
);

create table vagas (
	id_vaga INT,
	id_empresa INT,
	titulo VARCHAR(50),
	data_limite DATE,
	area_atuacao VARCHAR(50),
	faixa_salarial VARCHAR(50),
	tipo_contratacao VARCHAR(50),
	PRIMARY KEY (id_vaga),
	FOREIGN KEY (id_empresa) REFERENCES empresas(id_empresa)
);



create table login_empresas (
	id_login_empresa INT,
	id_empresa INT,
	usuario VARCHAR(50),
	senha VARCHAR(50),
	PRIMARY KEY (id_login_empresa),
	FOREIGN KEY (id_empresa) REFERENCES empresas(id_empresa)
);

---- INSERT EMPRESAS

insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (1, 'Realcube', 'Bogan Inc', '23062454171861', 'kyanshonok0@e-recht24.de', 'Washington', 'DC');
insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (2, 'Linkbuzz', 'Lindgren-Spinka', '91224626668390', 'rhehl1@techcrunch.com', 'Birmingham', 'AL');
insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (3, 'Jaxnation', 'Rath LLC', '33664535320240', 'kjunkin2@go.com', 'Hartford', 'CT');
insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (4, 'Skajo', 'Stehr-Morissette', '43584678388483', 'bglabach3@friendfeed.com', 'Fort Worth', 'TX');
insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (5, 'Blogpad', 'Kutch, Grimes and Sanford', '90093582428909', 'tdurbyn4@walmart.com', 'Denver', 'CL');
insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (6, 'Jabbersphere', 'Haley-Rolfson', '95792788425773', 'rwhates5@discuz.net', 'Brooklyn', 'NY');
insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (7, 'Jaxspan', 'Brekke-Wiegand', '79824182458338', 'ssweetman6@shutterfly.com', 'Daytona Beach', 'FL');
insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (8, 'Leenti', 'Willms, Schinner and Davis', '32303862104014', 'wpaulson7@networksolutions.com', 'Lincoln', 'NB');
insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (9, 'Agimba', 'Bashirian Group', '90851462565615', 'pabley8@sun.com', 'Naples', 'FL');
insert into empresas (id_empresa, nome_exibicao, nome_fantasia, cnpj, email, cidade, estado) values (10, 'Ozu', 'Schamberger, Olson and Moen', '65009381360207', 'jwoodcock9@soundcloud.com', 'Garland', 'TX');

---- INSERT VAGAS

insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (1, 1, 'Health Coach IV', '2020-11-01 00:05:27', 'n/a', '$69599.16', 'Turquoise');
insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (2, 2, 'Senior Sales Associate', '2020-09-17 23:29:44', 'Trucking Freight/Courier Services', '$48897.02', 'Fuscia');
insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (3, 3, 'Executive Secretary', '2020-08-29 00:17:58', 'Specialty Chemicals', '$56407.59', 'Crimson');
insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (4, 4, 'Clinical Specialist', '2020-09-27 18:23:35', 'Telecommunications Equipment', '$70783.22', 'Teal');
insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (5, 5, 'Help Desk Technician', '2020-12-02 00:39:57', 'Property-Casualty Insurers', '$30394.45', 'Fuscia');
insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (6, 6, 'Systems Administrator II', '2020-10-15 19:21:27', 'Real Estate Investment Trusts', '$61365.83', 'Teal');
insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (7, 7, 'Registered Nurse', '2020-10-24 03:48:10', 'n/a', '$93917.10', 'Yellow');
insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (8, 8, 'Help Desk Technician', '2020-09-15 03:30:59', 'n/a', '$36527.50', 'Violet');
insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (9, 9, 'Structural Analysis Engineer', '2020-09-28 23:32:14', 'Major Banks', '$96482.47', 'Orange');
insert into vagas (id_vaga, id_empresa, titulo, data_limite, area_atuacao, faixa_salarial, tipo_contratacao) values (10, 10, 'Technical Writer', '2020-11-20 01:15:30', 'Oil & Gas Production', '$46799.56', 'Blue');

---- INSERT LOGIN EMPRESAS

insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (1, 1, 'btennet0', 'Dxy62O8Zkpp');
insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (2, 2, 'dnorthridge1', 'Fw9YCiSHRe');
insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (3, 3, 'tmclanachan2', 'WG7Sn8dPw3B');
insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (4, 4, 'wthomkins3', 'nDGCxXVhjH1H');
insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (5, 5, 'fdankov4', 'gRAOMHhMla');
insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (6, 6, 'gclempton5', 'y5L7NyU3eXt');
insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (7, 7, 'tollington6', 'XLjoRGY');
insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (8, 8, 'afranchyonok7', 'ZunuhdJ29Q');
insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (9, 9, 'mlefley8', 'BSOrUDk');
insert into login_empresas (id_login_empresa, id_empresa, usuario, senha) values (10, 10, 'adeadman9', '5l4hvx99fxK');

-- CREATE TABLE INTERMEDIÁRIA CANDIDATO-VAGA

create table cadastro_vagas(
	id_cadastro INT,
	id_vaga INT,
	id_usuario INT,
	PRIMARY KEY (id_cadastro),
	FOREIGN KEY (id_vaga) REFERENCES vagas(id_vaga),
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);


