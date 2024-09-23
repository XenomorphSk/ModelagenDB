-- TABELAS PRINCIPAIS

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    email VARCHAR(100),
    telefone VARCHAR(15),
    endereco VARCHAR(200),
    data_nascimento DATE,
    id_tipo_cliente INT,
    FOREIGN KEY (id_tipo_cliente) REFERENCES tipos_clientes(id_tipo_cliente)
);

CREATE TABLE apolices (
    id_apolice INT AUTO_INCREMENT PRIMARY KEY,
    numero_apolice VARCHAR(20),
    data_inicio DATE,
    data_fim DATE,
    valor_cobertura DECIMAL(10, 2),
    valor_premio DECIMAL(10, 2),
    id_cliente INT,
    id_tipo_apolice INT,
    id_status_apolice INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_tipo_apolice) REFERENCES tipos_apolices(id_tipo_apolice),
    FOREIGN KEY (id_status_apolice) REFERENCES status_apolices(id_status_apolice)
);

CREATE TABLE veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10),
    chassi VARCHAR(50),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    ano_fabricacao YEAR,
    ano_modelo YEAR,
    id_cliente INT,
    id_tipo_veiculo INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_tipo_veiculo) REFERENCES tipos_veiculos(id_tipo_veiculo)
);

CREATE TABLE sinistros (
    id_sinistro INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT,
    data_ocorrencia DATE,
    valor_indenizacao DECIMAL(10, 2),
    id_apolice INT,
    id_veiculo INT,
    id_status_sinistro INT,
    FOREIGN KEY (id_apolice) REFERENCES apolices(id_apolice),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo),
    FOREIGN KEY (id_status_sinistro) REFERENCES status_sinistros(id_status_sinistro)
);

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    data_contratacao DATE,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

CREATE TABLE pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10, 2),
    data_pagamento DATE,
    id_apolice INT,
    id_cliente INT,
    id_tipo_pagamento INT,
    id_status_pagamento INT,
    FOREIGN KEY (id_apolice) REFERENCES apolices(id_apolice),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_tipo_pagamento) REFERENCES tipos_pagamentos(id_tipo_pagamento),
    FOREIGN KEY (id_status_pagamento) REFERENCES status_pagamentos(id_status_pagamento)
);

-- TABELAS AUXILIARES

CREATE TABLE tipos_apolices (
    id_tipo_apolice INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100)
);

CREATE TABLE status_apolices (
    id_status_apolice INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100)
);

CREATE TABLE status_sinistros (
    id_status_sinistro INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100)
);

CREATE TABLE status_pagamentos (
    id_status_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100)
);

CREATE TABLE tipos_pagamentos (
    id_tipo_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100)
);

CREATE TABLE tipos_clientes (
    id_tipo_cliente INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100)
);

CREATE TABLE departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE tipos_veiculos (
    id_tipo_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50)
);

CREATE TABLE documentos_clientes (
    id_documento INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    tipo_documento VARCHAR(50),
    numero_documento VARCHAR(50),
    data_emissao DATE,
    orgao_emissor VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE dependentes_clientes (
    id_dependente INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    nome_dependente VARCHAR(100),
    relacao VARCHAR(50),
    data_nascimento DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE corretores (
    id_corretor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    email VARCHAR(100),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

