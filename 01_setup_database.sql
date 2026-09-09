CREATE DATABASE IF NOT EXISTS rh_analytics_db;
USE rh_analytics_db;

CREATE TABLE tb_funcionarios_raw (
    id_funcionario VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    departamento VARCHAR(50),
    salario VARCHAR(20),
    data_admissao VARCHAR(50),
    data_demissao VARCHAR(50),
    status_ativo VARCHAR(15)
);

CREATE TABLE tb_engajamento_raw (
    id_avaliacao VARCHAR(10) PRIMARY KEY,
    id_funcionario VARCHAR(10),
    data_pesquisa VARCHAR(50),
    nota_satisfacao_1a5 INT,
    horas_extras_mensais DECIMAL(5,2)
);