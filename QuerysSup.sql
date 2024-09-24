-- Número Total de Clientes Ativos
SELECT COUNT(DISTINCT c.id_cliente) AS total_clientes_ativos
FROM clientes c
JOIN apolices a ON c.id_cliente = a.id_cliente
WHERE a.status = 'Ativa';

-- Picos de Atividade 
SELECT MONTH(a.data_inicio) AS mes, YEAR(a.data_inicio) AS ano, COUNT(a.id_apolice) AS novas_apolices
FROM apolices a
GROUP BY mes, ano
ORDER BY novas_apolices DESC;

-- Distribuição por Localização 
SELECT c.endereco, COUNT(c.id_cliente) AS total_clientes
FROM clientes c
GROUP BY c.endereco
ORDER BY total_clientes DESC;

-- Número de Clientes por Faixa Etária
SELECT 
    CASE 
        WHEN TIMESTAMPDIFF(YEAR, c.data_nascimento, CURDATE()) BETWEEN 18 AND 25 THEN '18-25'
        WHEN TIMESTAMPDIFF(YEAR, c.data_nascimento, CURDATE()) BETWEEN 26 AND 35 THEN '26-35'
        WHEN TIMESTAMPDIFF(YEAR, c.data_nascimento, CURDATE()) BETWEEN 36 AND 45 THEN '36-45'
        WHEN TIMESTAMPDIFF(YEAR, c.data_nascimento, CURDATE()) BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+' 
    END AS faixa_etaria,
    COUNT(c.id_cliente) AS total_clientes
FROM clientes c
GROUP BY faixa_etaria
ORDER BY faixa_etaria;

-- Perfil de Cliente 
SELECT AVG(TIMESTAMPDIFF(YEAR, c.data_nascimento, CURDATE())) AS idade_media,
       v.descricao AS tipo_veiculo
FROM clientes c
JOIN apolices a ON c.id_cliente = a.id_cliente
JOIN veiculos v ON a.id_veiculo = v.id_veiculo
GROUP BY tipo_veiculo;

-- Análise de Vendas 
SELECT tc.descricao AS tipo_apolice, COUNT(a.id_apolice) AS total_apolices
FROM apolices a
JOIN tipos_cobertura tc ON a.id_tipo_cobertura = tc.id_tipo_cobertura
GROUP BY tipo_apolice
ORDER BY total_apolices DESC;

-- Tendências de Sinistros 
SELECT YEAR(s.data_sinistro) AS ano, COUNT(s.id_sinistro) AS total_sinistros
FROM sinistros s
GROUP BY ano
ORDER BY ano DESC;

-- Distribuição de Recursos 
SELECT v.descricao AS tipo_veiculo, COUNT(s.id_sinistro) AS total_sinistros
FROM sinistros s
JOIN veiculos v ON s.id_veiculo = v.id_veiculo
GROUP BY tipo_veiculo
ORDER BY total_sinistros DESC;

-- Número Total de Solicitações por Tipo de Serviço
SELECT tp.descricao AS tipo_pagamento, COUNT(p.id_pagamento) AS total_solicitacoes
FROM pagamentos p
JOIN tipos_pagamento tp ON p.id_tipo_pagamento = tp.id_tipo_pagamento
GROUP BY tipo_pagamento
ORDER BY total_solicitacoes DESC;

-- Análise de Veículos com Mais Problemas Mecânicos
SELECT v.descricao AS tipo_veiculo, COUNT(s.id_sinistro) AS total_problemas
FROM sinistros s
JOIN veiculos v ON s.id_veiculo = v.id_veiculo
WHERE s.descricao LIKE '%problema mecânico%'
GROUP BY tipo_veiculo
ORDER BY total_problemas DESC;
