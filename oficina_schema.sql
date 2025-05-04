CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15)
);

CREATE TABLE Veiculos (
    placa VARCHAR(10) PRIMARY KEY,
    modelo VARCHAR(100) NOT NULL,
    ano INT NOT NULL,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE Mecanicos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    especialidade VARCHAR(100) NOT NULL
);

CREATE TABLE Equipes (
    id INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Mecanicos_Equipes (
    equipe_id INT,
    mecanico_id INT,
    PRIMARY KEY (equipe_id, mecanico_id),
    FOREIGN KEY (equipe_id) REFERENCES Equipes(id),
    FOREIGN KEY (mecanico_id) REFERENCES Mecanicos(id)
);

CREATE TABLE OrdensServico (
    numero INT PRIMARY KEY AUTO_INCREMENT,
    data_emissao DATE NOT NULL,
    valor_total DECIMAL(10,2),
    status VARCHAR(50),
    data_conclusao DATE,
    veiculo_id VARCHAR(10),
    equipe_id INT,
    FOREIGN KEY (veiculo_id) REFERENCES Veiculos(placa),
    FOREIGN KEY (equipe_id) REFERENCES Equipes(id)
);

CREATE TABLE Servicos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    valor_mao_de_obra DECIMAL(10,2)
);

CREATE TABLE Pecas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2)
);

CREATE TABLE ItensOS (
    id INT PRIMARY KEY AUTO_INCREMENT,
    os_id INT,
    servico_id INT,
    peça_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (os_id) REFERENCES OrdensServico(numero),
    FOREIGN KEY (servico_id) REFERENCES Servicos(id),
    FOREIGN KEY (peça_id) REFERENCES Pecas(id)
);
