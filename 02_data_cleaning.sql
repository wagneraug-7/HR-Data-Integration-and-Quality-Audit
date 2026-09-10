USE rh_analytics_db;

-- Identificar funcionários inativos sem data de demissão preenchida
SELECT 
    id_funcionario, 
    nome, 
    status_ativo, 
    data_demissao 
FROM 
    tb_funcionarios_raw 
WHERE 
    status_ativo = 'Falso' 
    AND (data_demissao IS NULL OR data_demissao = '');

-- Identificar registros com salários ausentes
SELECT 
    id_funcionario, 
    nome, 
    cargo, 
    salario 
FROM 
    tb_funcionarios_raw 
WHERE 
    salario IS NULL OR salario = '';

-- Encontrar notas de engajamento de funcionários que não existem no sistema de RH (LEFT JOIN para achar órfãos)
SELECT 
    e.id_avaliacao,
    e.id_funcionario AS id_no_engajamento,
    f.nome AS nome_no_rh,
    e.nota_satisfacao_1a5
FROM 
    tb_engajamento_raw e
LEFT JOIN 
    tb_funcionarios_raw f ON e.id_funcionario = f.id_funcionario
WHERE 
    f.id_funcionario IS NULL;

-- Identificar avaliações de engajamento com notas inválidas (fora do range 1 a 5)
SELECT 
    id_avaliacao, 
    id_funcionario, 
    nota_satisfacao_1a5 
FROM 
    tb_engajamento_raw 
WHERE 
    nota_satisfacao_1a5 < 1 
    OR nota_satisfacao_1a5 > 5;