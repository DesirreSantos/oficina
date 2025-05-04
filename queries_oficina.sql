-- Consultar ordens de serviço em aberto
SELECT * FROM OrdensServico WHERE status = 'Em andamento';

-- Consultar serviços executados por uma equipe
SELECT os.numero, s.descricao, s.valor_mao_de_obra 
FROM OrdensServico os
JOIN ItensOS ios ON os.numero = ios.os_id
JOIN Servicos s ON ios.servico_id = s.id
WHERE os.equipe_id = 1;

-- Total de faturamento por período
SELECT SUM(valor_total) AS faturamento_total 
FROM OrdensServico 
WHERE data_emissao BETWEEN '2025-05-01' AND '2025-05-31';

-- Peças mais utilizadas
SELECT p.nome, COUNT(ios.peça_id) AS quantidade_usada
FROM ItensOS ios
JOIN Pecas p ON ios.peça_id = p.id
GROUP BY p.nome
ORDER BY quantidade_usada DESC;
