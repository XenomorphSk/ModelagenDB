Sistema de Gerenciamento de Seguradora

Este repositório contém o projeto de modelagem de banco de dados e levantamento de requisitos para o sistema de uma seguradora. O objetivo é desenvolver um sistema eficiente que permita gerenciar apólices, clientes, sinistros e funcionários de forma organizada e centralizada.
Objetivo do Projeto

O propósito deste projeto é criar um banco de dados que suporte as principais operações de uma seguradora, como:

    Cadastro de Clientes: Armazenamento de dados pessoais e informações de contato dos segurados.
    Gestão de Apólices: Registro e controle de diferentes tipos de apólices, suas coberturas e datas de vigência.
    Processo de Sinistros: Gestão de eventos de sinistros, com detalhes das ocorrências e status das indenizações.
    Gerenciamento de Funcionários: Informações sobre os funcionários responsáveis pelo atendimento e análise dos processos.
    Consultas e Relatórios: Geração de relatórios e consultas para apoio à tomada de decisões.

Tecnologias Utilizadas

    Banco de Dados: MySQL (padrão)
    Ferramenta de Modelagem: MySQL Workbench (para modelagem e visualização ER)
    Linguagem de Consulta: SQL

Estrutura do Banco de Dados

O banco de dados foi projetado com as seguintes principais entidades:

    Clientes: Tabela que armazena informações dos segurados (nome, CPF, endereço, etc.).
    Apólices: Tabela que contém detalhes sobre as apólices de seguro (tipo de cobertura, valor, data de início e fim).
    Sinistros: Tabela para registrar ocorrências de sinistros e o andamento do processo de indenização.
    Funcionários: Tabela que armazena os dados dos funcionários da seguradora.
    Pagamentos: Tabela para controle de pagamentos de apólices e recebimento de indenizações.

Requisitos Funcionais

    Cadastro de Clientes e Funcionários: O sistema deve permitir a inserção, atualização, e exclusão de registros de clientes e funcionários.
    Gerenciamento de Apólices: Apólices podem ser criadas, modificadas e encerradas, associando-as aos clientes.
    Registro de Sinistros: Clientes podem registrar sinistros, que devem ser acompanhados no sistema até sua conclusão.
    Relatórios: O sistema deve gerar relatórios mensais de sinistros, clientes e apólices ativas.

Referências e Homenagens

Este projeto foi inspirado por diversas fontes de conhecimento e referências acadêmicas. Gostaria de fazer uma homenagem especial aos seguintes:

    Leonardo Saba, pelo suporte e inspiração no desenvolvimento deste trabalho.
    O repositório do Alex Galhardo Software Engineering, que serviu como base de referência para a estruturação do projeto.

Como Usar

    Clone o repositório para o seu ambiente de desenvolvimento:

    bash

git clone https://github.com/seu-usuario/nome-do-repositorio.git

Crie o banco de dados MySQL e execute os scripts de criação das tabelas presentes na pasta sql/.

Configure o arquivo de conexão config.php (ou outra interface de aplicação) com suas credenciais do MySQL.

Utilize o MySQL Workbench para visualizar e modificar o modelo de dados ou realizar consultas SQL no banco.
