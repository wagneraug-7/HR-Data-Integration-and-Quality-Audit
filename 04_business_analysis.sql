USE rh_analytics_db;
SELECT 
    f.departamento_padronizado,
    ROUND(AVG(e.horas_extras_mensais), 2) AS media_horas_extras,
    ROUND(AVG(e.nota_satisfacao_valida), 2) AS media_satisfacao
FROM 
    tb_engajamento_clean e
JOIN 
    tb_funcionarios_clean f ON e.id_funcionario = f.id_funcionario
GROUP BY 
    f.departamento_padronizado
ORDER BY 
    media_horas_extras DESC;

SELECT 
    departamento_padronizado,
    COUNT(id_funcionario) AS total_funcionarios,
    ROUND(AVG(salario_num), 2) AS media_salarial,
    -- Conta quantos funcionários estão com o status inativo sem data (o erro que tratamos)
    SUM(CASE WHEN data_demissao_tratada = 'Dado Ausente (Erro DP)' THEN 1 ELSE 0 END) AS erros_registro_demissao
FROM 
    tb_funcionarios_clean
GROUP BY 
    departamento_padronizado
ORDER BY 
    media_salarial DESC;