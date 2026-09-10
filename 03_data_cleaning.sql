USE rh_analytics_db;

-- 1. Criação da Tabela Limpa de Funcionários (Corrigida)
CREATE TABLE tb_funcionarios_clean AS
SELECT 
    id_funcionario,
    UPPER(TRIM(nome)) AS nome_padronizado,
    CASE 
        WHEN LOWER(cargo) LIKE '%mobile%' THEN 'Desenvolvedor Mobile'
        WHEN LOWER(cargo) LIKE '%backend%' THEN 'Desenvolvedor Backend'
        WHEN LOWER(cargo) LIKE '%ux%' OR LOWER(cargo) LIKE '%ui%' THEN 'UI/UX Designer'
        ELSE TRIM(cargo)
    END AS cargo_padronizado,
    UPPER(TRIM(departamento)) AS departamento_padronizado,
    CAST(NULLIF(TRIM(salario), '') AS DECIMAL(10,2)) AS salario_num,
    data_admissao,
    CASE 
        WHEN status_ativo = 'Falso' AND (data_demissao IS NULL OR data_demissao = '') THEN 'Dado Ausente (Erro DP)'
        ELSE IFNULL(data_demissao, 'Ativo')
    END AS data_demissao_tratada,
    status_ativo
FROM 
    tb_funcionarios_raw;
-- 2. Criação da Tabela Limpa de Engajamento com Cruzamento
CREATE TABLE tb_engajamento_clean AS
SELECT 
    e.id_avaliacao,
    e.id_funcionario,
    f.departamento_padronizado,
    e.data_pesquisa,
    CASE 
        WHEN e.nota_satisfacao_1a5 < 1 OR e.nota_satisfacao_1a5 > 5 THEN NULL
        ELSE e.nota_satisfacao_1a5
    END AS nota_satisfacao_valida,
    e.horas_extras_mensais
FROM 
    tb_engajamento_raw e
INNER JOIN 
    tb_funcionarios_clean f ON e.id_funcionario = f.id_funcionario;