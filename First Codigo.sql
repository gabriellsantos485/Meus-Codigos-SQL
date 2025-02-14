CREATE DATABASE BDEmpresa;
USE bdempresa;

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

CREATE TABLE departamento (
dep_codigo int,
dep_sigla     varchar(04),
dep_nome    varchar(30),
dep_ramal    varchar(03),
dep_email    varchar(60),
primary key (dep_codigo)
);


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
    fun_cargo)
VALUES
	(1, 'João Silva', '123.456.789-00', '12.345.678-9', 'Rua A, 123', 101, '12345-678', 'Centro', 'São Paulo', 'SP', 'M', 'Solteiro', 2500.50, '(11) 2345-6789', '(11) 98765-4321', 'joao.silva@exemplo.com', 'Analista de Sistemas'),
	(2, 'Maria Oliveira', '234.567.890-11', '23.456.789-0', 'Avenida B, 456', 202, '23456-789', 'Jardim das Flores', 'Rio de Janeiro', 'RJ', 'F', 'Casada', 3000.00, '(21) 2345-6789', '(21) 98765-4322', 'maria.oliveira@exemplo.com', 'Gerente de RH'),
	(3, 'Carlos Pereira', '345.678.901-22', '34.567.890-1', 'Rua C, 789', 303, '34567-890', 'Vila Nova', 'Belo Horizonte', 'MG', 'M', 'Divorciado', 4000.75, '(31) 2345-6789', '(31) 98765-4323', 'carlos.pereira@exemplo.com', 'Supervisor de Vendas'),
	(4, 'Ana Costa', '456.789.012-33', '45.678.901-2', 'Rua D, 101', 404, '45678-901', 'Boa Vista', 'Salvador', 'BA', 'F', 'Viúva', 2200.30, '(71) 2345-6789', '(71) 98765-4324', 'ana.costa@exemplo.com', 'Assistente Administrativa'),
	(5, 'Pedro Almeida', '567.890.123-44', '56.789.012-3', 'Avenida E, 202', 505, '56789-012', 'Novo Horizonte', 'Curitiba', 'PR', 'M', 'Casado', 5000.00, '(41) 2345-6789', '(41) 98765-4325', 'pedro.almeida@exemplo.com', 'Coordenador de Marketing'),
	(6, 'Fernanda Souza', '678.901.234-55', '67.890.123-4', 'Rua F, 303', 606, '67890-123', 'Santa Clara', 'Fortaleza', 'CE', 'F', 'Solteira', 2800.45, '(85) 2345-6789', '(85) 98765-4326', 'fernanda.souza@exemplo.com', 'Consultora de TI'),
	(7, 'Ricardo Lima', '789.012.345-66', '78.901.234-5', 'Avenida G, 404', 707, '78901-234', 'Alto da Serra', 'Porto Alegre', 'RS', 'M', 'Casado', 3500.80, '(51) 2345-6789', '(51) 98765-4327', 'ricardo.lima@exemplo.com', 'Analista de Suporte'),
	(8, 'Juliana Martins', '890.123.456-77', '89.012.345-6', 'Rua H, 505', 808, '89012-345', 'Jardim Europa', 'Brasília', 'DF', 'F', 'Solteira', 2700.90, '(61) 2345-6789', '(61) 98765-4328', 'juliana.martins@exemplo.com', 'Assistente de Compras'),
	(9, 'Gustavo Rocha', '901.234.567-88', '90.123.456-7', 'Avenida I, 606', 909, '90123-456', 'Parque Industrial', 'Manaus', 'AM', 'M', 'Divorciado', 4500.60, '(92) 2345-6789', '(92) 98765-4329', 'gustavo.rocha@exemplo.com', 'Supervisor de Logística'),
	(10, 'Patrícia Ferreira', '012.345.678-99', '01.234.567-8', 'Rua J, 707', 1010, '01234-567', 'Vila Mariana', 'Recife', 'PE', 'F', 'Casada', 3800.25, '(81) 2345-6789', '(81) 98765-4330', 'patricia.ferreira@exemplo.com', 'Gerente Comercial');
    
SELECT fun_n FROM  ;
    