# USE CASE: Cadastro de Funcionários

## UC0009 – Cadastrar Funcionário

### 1. Histórico de Atualizações
| Data     | Versão | Solicitação      | Descrição   | Autor   |
|----------|--------|------------------|-------------|---------|
| 22/09    | 01     | Professor Silvio  | Use Case    | Gabriel |

### 2. Descrição do Caso de Uso
O objetivo deste caso de uso é cadastrar um funcionário no sistema, incluindo informações pessoais e documentos relacionados.

### 3. Pré-Condições
- O Usuário deve estar autenticado no sistema.
- O Usuário deve ter acesso de Inclusão, Alteração e Exclusão de Funcionários (Roles: `INCLUIR_FUNCIONARIOS`, `ALTERAR_FUNCIONARIOS`, `EXCLUIR_FUNCIONARIOS`).

### 4. Atores
- **Usuário**: Pessoa que interage com o sistema para cadastrar funcionários.

### 5. Fluxos

#### Fluxo Principal
1. O sistema verifica o perfil do usuário. (RN-0001)
2. O sistema exibe o formulário para preenchimento dos dados do Funcionário. (T01)
3. O usuário preenche os dados do Funcionário.
4. O usuário clica em "Salvar".
5. O sistema verifica a consistência das informações. (RN-0005)
6. O sistema associa o funcionário ao registro.
7. O sistema exibe uma mensagem de confirmação de sucesso e o número único de registro do Funcionário. (RN-0002) (M1)
8. Fim do caso de uso.

#### Fluxos Alternativos

**Fluxo A1 – Dados obrigatórios não preenchidos**
1. O usuário tenta avançar sem preencher um ou mais campos obrigatórios.
2. O sistema identifica os campos faltantes e exibe uma mensagem de erro. (M2)
3. O usuário preenche os campos obrigatórios faltantes e tenta salvar novamente.
4. Retorna ao passo 4 do fluxo principal.

**Fluxo A2 – Funcionário já cadastrado**
1. O sistema detecta que o CPF informado já está cadastrado. (RN-0003)
2. O sistema exibe uma mensagem de erro. (M3)
3. O usuário corrige os dados do Funcionário.
4. Retorna ao passo 4 do fluxo principal.

### 6. Regras
| Referência | Regra                                                                 |
|------------|----------------------------------------------------------------------|
| RN-0001    | O usuário deve ter acesso às opções de inclusão, alteração e exclusão. |
| RN-0002    | O código do Funcionário é gerado automaticamente pelo banco de dados de modo sequencial. |
| RN-0003    | Não poderá existir mais de um registro com o mesmo CPF.              |
| RN-0004    | O Funcionário só pode ser cadastrado se todos os campos obrigatórios estiverem preenchidos. |
| RN-0005    | Os dados inseridos devem ser válidos com a realidade.                |

### 7. Tabela de Mensagens
| Referência | Mensagem                                     |
|------------|----------------------------------------------|
| M1         | Registro de funcionário efetuado com sucesso. |
| M2         | Registro de funcionário não efetuado.         |
| M3         | Funcionário já cadastrado no sistema.        |

### 8. Tabela de Validação de Campos da Tela
| Campo                 | Tipo      | Tam | Máscara | Obrig | Vlr. Válido      | Tabela           | Msg Erro         |
|-----------------------|-----------|-----|---------|-------|------------------|------------------|------------------|
| id_funcionario        | Inteiro   |     |         | Sim   | TipoFuncionario   |                  |                  |
| nome                  | Texto     | 255 |         | Sim   | TipoFuncionario   |                  | Campo obrigatório |
| cpf                   | Texto     | 11  |         | Sim   | TipoFuncionario   |                  | Campo obrigatório |
| email                 | Texto     | 255 |         | Não   | TipoFuncionario   |                  |                  |
| telefone              | Texto     | 20  |         | Não   | TipoFuncionario   |                  |                  |
| endereco              | Texto     | 255 |         | Não   | TipoFuncionario   |                  |                  |
| data_nascimento       | Data      |     |         | Sim   | TipoFuncionario   |                  | Campo obrigatório |
| id_genero             | Inteiro   |     |         | Sim   | TipoFuncionario   |                  | Campo obrigatório |
| id_etnia             | Inteiro   |     |         | Sim   | TipoFuncionario   |                  | Campo obrigatório |
| id_orientacao_sexual | Inteiro   |     |         | Sim   | TipoFuncionario   |                  | Campo obrigatório |


