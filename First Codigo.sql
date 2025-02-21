CREATE DATABASE BDEmpresa;
USE bdempresa; # Usar o Banco de dados 

#CRIANDO A TABELA FUNCIONARIO 
CREATE TABLE funcionario(
	fun_codigo      int,
	fun_nome        varchar(60),
	fun_cpf            varchar(14),
	fun_rg             varchar(15),
	fun_endereco   varchar(60),
	fun_numero      int,
	fun_cep            varchar(09),
	fun_bairro        varchar(30),
	fun_cidade       varchar(30),
	fun_estado       varchar(02),
	fun_sexo          varchar(01),
	fun_estadocivil    varchar(20), 
	fun_salario       decimal(10,2),
	fun_telefone     varchar(15),
	fun_celular       varchar(15),
	fun_email         varchar(60),
	fun_cargo        varchar(30),
	primary key(fun_codigo)
); 


#CRIANDO A TABELA DEPARTAMENTO
CREATE TABLE departamento (
	dep_codigo int,
	dep_sigla     varchar(04),
	dep_nome    varchar(30),
	dep_ramal    varchar(03),
	dep_email    varchar(60),
	primary key (dep_codigo)
);


# INSERIR DADOS NOS DEPARTAMENTOS
INSERT INTO departamento (
	dep_codigo, 
    dep_sigla,
	dep_nome, 
	dep_ramal, 
	dep_email
)
VALUES 
	/*(1, 'INFO', 'Informática', "101", 'info@redes.com.br'),*/
	(2, 'RH', 'Recursos Humanos', "102", 'rh@redes.com.br'),
	(3, 'VEN', 'Vendas', "103", NULL);


#INSERIR DADOS DE FUNCIONARIOS 
INSERT INTO funcionario(
	fun_codigo,
    fun_nome,
    fun_cpf,
    fun_rg,
    fun_endereco,
    fun_numero,
    fun_cep,
    fun_bairro,
    fun_cidade,
    fun_estado,
    fun_sexo,
    fun_estadocivil,
    fun_salario,
    fun_telefone,
    fun_celular,
    fun_email,
    fun_cargo,
    fun_mae,
    fun_pai,
    dep_codigo)
VALUES
	#(11, 'João Silva', '123.456.789-00', '12.345.678-9', 'Rua A, 123', 101, '12345-678', 'Centro', 'São Paulo', 'SP', 'M', 'Solteiro', 2500.50, '(11) 2345-6789', '(11) 98765-4321', 'joao.silva@exemplo.com', 'Analista de Sistemas', "Maria do Carmo", "Vinicio Andrade", 2),
	#(12, 'Maria Oliveira', '234.567.890-11', '23.456.789-0', 'Avenida B, 456', 202, '23456-789', 'Jardim das Flores', 'Rio de Janeiro', 'RJ', 'F', 'Casada', 3000.00, '(21) 2345-6789', '(21) 98765-4322', 'maria.oliveira@exemplo.com', 'Gerente de RH', "Ramona", "Fernão dias",3),
	#(13, 'Carlos Pereira', '345.678.901-22', '34.567.890-1', 'Rua C, 789', 303, '34567-890', 'Vila Nova', 'Belo Horizonte', 'MG', 'M', 'Divorciado', 4000.75, '(31) 2345-6789', '(31) 98765-4323', 'carlos.pereira@exemplo.com', 'Supervisor de Vendas', "Aline", "João", 3),
	#(14, 'Ana Costa', '456.789.012-33', '45.678.901-2', 'Rua D, 101', 404, '45678-901', 'Boa Vista', 'Salvador', 'BA', 'F', 'Viúva', 2200.30, '(71) 2345-6789', '(71) 98765-4324', 'ana.costa@exemplo.com', 'Assistente Administrativa', "Fabiane", "Jefferson",3),
	#(15, 'Pedro Almeida', '567.890.123-44', '56.789.012-3', 'Avenida E, 202', 505, '56789-012', 'Novo Horizonte', 'Curitiba', 'PR', 'M', 'Casado', 5000.00, '(41) 2345-6789', '(41) 98765-4325', 'pedro.almeida@exemplo.com', 'Coordenador de Marketing', "Carla", "Rafael", 3),
	#(16, 'Guanabara', '567.890.123-44', '56.789.012-3', 'Avenida E, 202', 505, '56789-012', 'Novo Horizonte', 'Curitiba', 'PR', 'M', 'Casado', 5000.00, '(41) 2345-6789', '(41) 98765-4325', 'pedro.almeida@exemplo.com', 'Coordenador de Marketing', "Carla", "Rafael", 3);
    (17, 'Juca', '567.890.123-44', '56.789.012-3', 'Avenida E, 202', 505, '56789-012', 'Novo Horizonte', 'Curitiba', 'SC', 'M', 'Casado', 5000.00, '(41) 2345-6789', '(41) 98765-4325', 'juca.almeida@exemplo.com', 'Coordenador de Marketing', "Carla", "Rafael", 3);
 
 #ALTERAR TABELA FUNCIONARIO ADICIONANDO A fun_pai e fun_mae
 ALTER TABLE funcionario
	ADD fun_pai VARCHAR(20),
    ADD fun_mae VARCHAR(20);


#ADICIONANDO A CONSTRAINT de chave estrangeira
ALTER TABLE funcionario 
	ADD CONSTRAINT dep_codigo FOREIGN KEY(dep_codigo) REFERENCES departamento(dep_codigo);
    
    
#ALTERANDO OS DADOS 
UPDATE funcionario SET 
        fun_cargo = "vendedor",
        fun_telefone = '(11) 9 72687894'
	WHERE
    fun_codigo = 2;


 # 17 - Exibir o nome e endereço completo de todos os Vendedores, que possuem o número de celular com o prefixo 11
SELECT fun_nome, fun_endereco
	FROM funcionario 
	WHERE fun_telefone LIKE '%11%' AND fun_cargo = "vendedor";

# 18 - Quantos funcionários trabalham na empresa?
SELECT COUNT(*)
FROM funcionario;

# 19 - Acrescentar na tabela de "funcionario" o campo fun_nfilhos (número de filhos).
ALTER TABLE funcionario
	ADD fun_nfilhos INT;
    
# 20 - Qual o menor salário da empresa? 
SELECT MIN(fun_salario)
	FROM funcionario;
    
# 21 - Adicionar o nome do pais a todos os funcionários já cadastrados.
UPDATE funcionario SET 
        fun_pai = "Carlos Almeida",
        fun_mae = 'Karina'
	WHERE
    fun_codigo = 10;
    
# 22 - Quantos funcionários residem no estado do Amazonas? 
SELECT COUNT(*)
	FROM funcionario
    WHERE fun_estado = "AM";
    
# 23 - Exibir o valor do maior e o menor salário da empresa.
SELECT MIN(fun_salario), MAX(fun_salario)
	FROM funcionario;
    
# 24 - Recuperar o total de salários entre os funcionários do sexo masculino. 
SELECT SUM(fun_salario)
	FROM funcionario 
	WHERE fun_sexo = "M";

# 25 - Alterar o conteúdo do campo número de filhos para 2 (todos os funcionários).
UPDATE funcionario SET
		fun_nfilhos = 2
	WHERE fun_codigo > 0;
    
# 26 - Qual a média de salário da empresa?
SELECT AVG(fun_salario)
	FROM funcionario;
    
# 27 - Quantos funcionários trabalham no departamento de informática?
SELECT COUNT(*)
	FROM funcionario
    WHERE dep_codigo = 1;

# 28 - Qual o total de salários entre os funcionários da região sudeste.
SELECT SUM(fun_salario)
	FROM funcionario
	WHERE fun_estado = "SP" OR fun_estado = "MG" OR fun_estado = "ES" OR fun_estado = "RJ";
    
# 29 - Recuperar o nome de todos os DBA´s, que residem na região Sul em ordem de nome
SELECT fun_nome
	FROM funcionario 
	WHERE fun_estado = "SC" OR fun_estado = "RGS" OR fun_estado = "PR"
    ORDER BY fun_nome;
    
# 30 - Recuperar o maior salário entre os funcionários o sexo feminino, que residem no centro-oeste.
SELECT SUM(fun_salario) 
	FROM funcionario 
    WHERE fun_estado = "GO" OR fun_estado = "MT" OR fun_estado = "MS" OR fun_estado = "DF";
    
# 31. Exibir o nome, cargo e estado civil de todos os funcionários do departamento de informática.
SELECT fun_nome, fun_cargo, fun_estadocivil
	FROM funcionario 
    WHERE dep_codigo = 1;
    
# 32 - Exibir o nome, cargo e email de todos os funcionários do sexo feminino, que não trabalham no departamento de informática, em ordem de cargo e salário.
SELECT fun_nome, fun_cargo, fun_email
	FROM funcionario 
    WHERE fun_sexo = "F" AND dep_codigo = 1
    ORDER BY fun_nome;
