# USE CASE: Apólices

## UC0006 – Cadastrar Apólices

### 1. Histórico de Atualizações
| Data     | Versão | Solicitação      | Descrição   | Autor   |
|----------|--------|------------------|-------------|---------|
| 22/09    | 01     | Professor Silvio  | Use Case    | Gabriel |

### 2. Descrição do Caso de Uso
O objetivo deste caso de uso é cadastrar apólices no sistema, incluindo informações como número da apólice, datas de início e fim, valores de cobertura e prêmio, e associação com um cliente e um veículo.

### 3. Pré-Condições
- O Usuário deve estar autenticado no sistema.
- O Usuário deve ter acesso de Inclusão, Alteração e Exclusão de Apólices (Roles: `INCLUIR_APOLICES`, `ALTERAR_APOLICES`, `EXCLUIR_APOLICES`).
- O Cliente e o Veículo devem estar previamente cadastrados no sistema.
- O Tipo de Cobertura deve estar previamente cadastrado.

### 4. Atores
- **Usuário**: Pessoa que interage com o sistema para cadastrar apólices.

### 5. Fluxos

#### Fluxo Principal
1. O sistema verifica o perfil do usuário. (RN-0001)
2. O sistema exibe o formulário para preenchimento dos dados da Apólice. (T01)
3. O usuário preenche os dados da Apólice.
4. O usuário clica em "Salvar".
5. O sistema verifica a consistência das informações. (RN-0005)
6. O sistema associa a apólice ao Cliente e ao Veículo.
7. O sistema exibe uma mensagem de confirmação de sucesso e o número único de registro da Apólice. (RN-0002) (M1)
8. Fim do caso de uso.

#### Fluxos Alternativos

**Fluxo A1 – Dados obrigatórios não preenchidos**
1. O usuário tenta avançar sem preencher um ou mais campos obrigatórios.
2. O sistema identifica os campos faltantes e exibe uma mensagem de erro. (M2)
3. O usuário preenche os campos obrigatórios faltantes e tenta salvar novamente.
4. Retorna ao passo 4 do fluxo principal.

**Fluxo A2 – Apólice já cadastrada**
1. O sistema detecta que o número da apólice informada já está cadastrada. (RN-0003)
2. O sistema exibe uma mensagem de erro. (M3)
3. O usuário corrige os dados da Apólice.
4. Retorna ao passo 4 do fluxo principal.

### 6. Regras
| Referência | Regra                                                                 |
|------------|----------------------------------------------------------------------|
| RN-0001    | O usuário deve ter acesso às opções de inclusão, alteração e exclusão. |
| RN-0002    | O código da Apólice é gerado automaticamente pelo banco de dados de modo sequencial. |
| RN-0003    | Não poderá existir mais de um registro com o mesmo número de apólice.|
| RN-0004    | A Apólice só pode ser cadastrada se todos os campos obrigatórios estiverem preenchidos. |
| RN-0005    | Os dados inseridos devem ser válidos com a realidade.                |

### 7. Tabela de Mensagens
| Referência | Mensagem                                  |
|------------|-------------------------------------------|
| M1         | Registro de apólice efetuado com sucesso.|
| M2         | Registro de apólice não efetuado.        |
| M3         | Apólice já cadastrada no sistema.       |

### 8. Tabela de Validação de Campos da Tela
| Campo                 | Tipo      | Tam | Máscara | Obrig | Vlr. Válido     | Tabela          | Msg Erro         |
|-----------------------|-----------|-----|---------|-------|-----------------|------------------|------------------|
| id_apolice            | Inteiro   |     |         | Sim   | TipoApolice    |                  |                  |
| numero_apolice        | Texto     | 255 |         | Sim   | TipoApolice    |                  | Campo obrigatório |
| data_inicio           | Data      |     |         | Sim   | TipoApolice    |                  | Campo obrigatório |
| data_fim              | Data      |     |         | Sim   | TipoApolice    |                  | Campo obrigatório |
| valor_cobertura       | Decimal   |     |         | Sim   | TipoApolice    |                  | Campo obrigatório |
| valor_premio          | Decimal   |     |         | Sim   | TipoApolice    |                  | Campo obrigatório |
| id_cliente            | Inteiro   |     |         | Sim   | TipoApolice    | Clientes         | Campo obrigatório |
| id_veiculo            | Inteiro   |     |         | Sim   | TipoApolice    | Veiculos         | Campo obrigatório |
| id_tipo_cobertura     | Inteiro   |     |         | Sim   | TipoApolice    | TiposCobertura   | Campo obrigatório |

### 9. Tabela SQL para Apólices

