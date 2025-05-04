INSERT INTO Clientes (nome, endereco, telefone) VALUES
('João Silva', 'Rua das Oficinas, 123', '11987654321'),
('Maria Souza', 'Avenida Central, 456', '21987654321');

INSERT INTO Veiculos (placa, modelo, ano, cliente_id) VALUES
('ABC1234', 'Fiat Uno', 2015, 1),
('XYZ5678', 'Honda Civic', 2020, 2);

INSERT INTO Mecanicos (nome, endereco, especialidade) VALUES
('Carlos Pereira', 'Rua dos Motores, 789', 'Suspensão'),
('Ana Rodrigues', 'Rua das Engrenagens, 321', 'Freios');

INSERT INTO Equipes (id) VALUES (1), (2);

INSERT INTO Mecanicos_Equipes (equipe_id, mecanico_id) VALUES
(1, 1),
(2, 2);

INSERT INTO Servicos (descricao, valor_mao_de_obra) VALUES
('Troca de óleo', 150.00),
('Alinhamento', 200.00);

INSERT INTO Pecas (nome, valor) VALUES
('Filtro de óleo', 50.00),
('Pneu 175/65R14', 350.00);
