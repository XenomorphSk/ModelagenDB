# USE CASE: Suporte à Gestão

## UC0010 – Suporte à Gestão

### 1. Histórico de Atualizações
| Data     | Versão | Solicitação      | Descrição   | Autor   |
|----------|--------|------------------|-------------|---------|
| 22/09    | 01     | Professor Silvio  | Use Case    | Gabriel |

### 2. Descrição do Caso de Uso
Este caso de uso tem como objetivo fornecer suporte à gestão de uma empresa de seguros, permitindo a análise de dados estruturados sobre clientes, apólices de seguros, veículos, sinistros, funcionários, pagamentos e documentos, entre outros. Isso auxiliará na tomada de decisões estratégicas e na otimização dos processos.

### 3. Pré-Condições
- O usuário deve estar autenticado no sistema.
- O usuário deve ter acesso às funcionalidades de geração de relatórios e consultas (Roles: `VISUALIZAR_RELATORIOS`, `GERAR_RELATORIOS`).

### 4. Atores
- **Gestor**: Responsável por monitorar e analisar dados da empresa.
- **Analista**: Profissional que utiliza os dados para gerar relatórios e insights.

### 5. Fluxos

#### Fluxo Principal
1. O sistema exibe o painel de controle com opções de análise de dados. (T01)
2. O usuário seleciona a análise desejada (ex.: Número Total de Clientes Ativos).
3. O sistema processa a consulta SQL correspondente. (RN-0006)
4. O sistema exibe os resultados da análise na tela, apresentando gráficos ou tabelas, conforme aplicável. (M1)
5. O usuário pode exportar os resultados em formatos como PDF ou Excel. (M2)
6. Fim do caso de uso.

#### Fluxos Alternativos

**Fluxo A1 – Falha na Consulta**
1. O sistema encontra um erro durante a execução da consulta SQL. (RN-0007)
2. O sistema exibe uma mensagem de erro, informando que a consulta não pôde ser realizada. (M3)
3. O usuário pode tentar outra análise.
4. Retorna ao passo 2 do fluxo principal.

**Fluxo A2 – Análise Sem Resultados**
1. O usuário seleciona uma análise que não retorna dados (ex.: nenhum sinistro registrado em um ano específico).
2. O sistema exibe uma mensagem informando que não foram encontrados resultados. (M4)
3. O usuário pode ajustar os parâmetros de pesquisa.
4. Retorna ao passo 2 do fluxo principal.

### 6. Regras
| Referência | Regra                                                                          |
|------------|-------------------------------------------------------------------------------|
| RN-0006    | O sistema deve ser capaz de executar consultas SQL de forma eficiente.         |
| RN-0007    | O sistema deve garantir que as consultas sejam seguras e não causem injeções SQL. |
| RN-0008    | O sistema deve garantir que os dados apresentados sejam atualizados e precisos. |
| RN-0009    | O usuário deve ter permissões adequadas para gerar relatórios e análises.      |

### 7. Tabela de Mensagens
| Referência | Mensagem                                             |
|------------|------------------------------------------------------|
| M1         | Análise realizada com sucesso.                       |
| M2         | Resultados exportados com sucesso.                   |
| M3         | Erro ao processar a consulta.                        |
| M4         | Nenhum resultado encontrado para a análise selecionada. |

