CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(11),
    email VARCHAR(255),
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    data_nascimento DATE,
    id_genero INT,
    id_etnia INT,
    id_orientacao_sexual INT,
    FOREIGN KEY (id_genero) REFERENCES IdentidadeGenero(id_genero),
    FOREIGN KEY (id_etnia) REFERENCES Etnia(id_etnia),
    FOREIGN KEY (id_orientacao_sexual) REFERENCES OrientacaoSexual(id_orientacao)
);

CREATE TABLE IdentidadeGenero (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    definicao_genero VARCHAR(255)
);

CREATE TABLE Etnia (
    id_etnia INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE OrientacaoSexual (
    id_orientacao INT AUTO_INCREMENT PRIMARY KEY,
    definicao_orientacao VARCHAR(255)
);

CREATE TABLE DocumentosCliente (
    id_documento INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    tipo_documento VARCHAR(255),
    numero_documento VARCHAR(255),
    data_emissao DATE,
    orgao_emissor VARCHAR(255),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE DependentesCliente (
    id_dependente INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    nome_dependente VARCHAR(255),
    relacao VARCHAR(255),
    data_nascimento DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Corretores (
    id_corretor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(11),
    email VARCHAR(255),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE TiposVeiculo (
    id_tipo_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255)
);

CREATE TABLE Veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10),
    chassi VARCHAR(255),
    id_marca INT,
    id_modelo INT,
    ano_fabricacao YEAR,
    ano_modelo YEAR,
    id_cliente INT,
    id_tipo_veiculo INT,
    FOREIGN KEY (id_marca) REFERENCES Marca(id_marca),
    FOREIGN KEY (id_modelo) REFERENCES Modelo(id_modelo),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_tipo_veiculo) REFERENCES TiposVeiculo(id_tipo_veiculo)
);

CREATE TABLE Marca (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255)
);

CREATE TABLE Modelo (
    id_modelo INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255),
    ano_fabricacao YEAR
);

CREATE TABLE Apolices (
    id_apolice INT AUTO_INCREMENT PRIMARY KEY,
    numero_apolice VARCHAR(255),
    data_inicio DATE,
    data_fim DATE,
    valor_cobertura DECIMAL(10, 2),
    valor_premio DECIMAL(10, 2),
    id_cliente INT,
    id_veiculo INT,
    id_tipo_cobertura INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo),
    FOREIGN KEY (id_tipo_cobertura) REFERENCES TiposCobertura(id_tipo_cobertura)
);

CREATE TABLE TiposCobertura (
    id_tipo_cobertura INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255),
    porcentagem_valor_cobertura INT
);

CREATE TABLE Pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10, 2),
    data_pagamento DATE,
    id_apolice INT,
    id_tipo_pagamento INT,
    FOREIGN KEY (id_apolice) REFERENCES Apolices(id_apolice),
    FOREIGN KEY (id_tipo_pagamento) REFERENCES TiposPagamento(id_tipo_pagamento)
);

CREATE TABLE TiposPagamento (
    id_tipo_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255)
);

CREATE TABLE Sinistro (
    id_sinistro INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT,
    data_ocorrencia DATE,
    valor_indenizacao DECIMAL(10, 2),
    id_apolice INT,
    id_veiculo INT,
    FOREIGN KEY (id_apolice) REFERENCES Apolices(id_apolice),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id_veiculo)
);

CREATE TABLE Funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(11),
    cargo VARCHAR(255),
    salario DECIMAL(10, 2),
    data_contratacao DATE,
    id_departamento INT,
    id_genero INT,
    id_etnia INT,
    id_orientacao_sexual INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento),
    FOREIGN KEY (id_genero) REFERENCES IdentidadeGenero(id_genero),
    FOREIGN KEY (id_etnia) REFERENCES Etnia(id_etnia),
    FOREIGN KEY (id_orientacao_sexual) REFERENCES OrientacaoSexual(id_orientacao)
);

CREATE TABLE Departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE DocumentosFuncionarios (
    id_documento INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT,
    tipo_documento VARCHAR(255),
    numero_documento VARCHAR(255),
    data_emissao DATE,
    orgao_emissor VARCHAR(255),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);
