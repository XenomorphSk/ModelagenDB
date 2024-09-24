# USE CASE: Corretores

## UC0004 – Cadastrar Corretores

### 1. Histórico de Atualizações
| Data     | Versão | Solicitação      | Descrição   | Autor   |
|----------|--------|------------------|-------------|---------|
| 22/09    | 01     | Professor Silvio  | Use Case    | Gabriel |

### 2. Descrição do Caso de Uso
O objetivo deste caso de uso é cadastrar corretores no sistema, incluindo informações como nome, CPF, e-mail e a associação com um cliente.

### 3. Pré-Condições
- O Usuário deve estar autenticado no sistema.
- O Usuário deve ter acesso de Inclusão, Alteração e Exclusão de Corretores (Roles: `INCLUIR_CORRETORES`, `ALTERAR_CORRETORES`, `EXCLUIR_CORRETORES`).
- O Cliente deve estar previamente cadastrado no sistema.

### 4. Atores
- **Usuário**: Pessoa que interage com o sistema para cadastrar corretores.

### 5. Fluxos

#### Fluxo Principal
1. O sistema verifica o perfil do usuário. (RN-0001)
2. O sistema exibe o formulário para preenchimento dos dados do Corretor. (T01)
3. O usuário preenche os dados do Corretor.
4. O usuário clica em "Salvar".
5. O sistema verifica a consistência das informações. (RN-0005)
6. O sistema associa o corretor ao Cliente.
7. O sistema exibe uma mensagem de confirmação de sucesso e o número único de registro do Corretor. (RN-0002) (M1)
8. Fim do caso de uso.

#### Fluxos Alternativos

**Fluxo A1 – Dados obrigatórios não preenchidos**
1. O usuário tenta avançar sem preencher um ou mais campos obrigatórios.
2. O sistema identifica os campos faltantes e exibe uma mensagem de erro. (M2)
3. O usuário preenche os campos obrigatórios faltantes e tenta salvar novamente.
4. Retorna ao passo 4 do fluxo principal.

**Fluxo A2 – Corretor já cadastrado**
1. O sistema detecta que o CPF informado já está cadastrado. (RN-0003)
2. O sistema exibe uma mensagem de erro. (M3)
3. O usuário corrige os dados do Corretor.
4. Retorna ao passo 4 do fluxo principal.

### 6. Regras
| Referência | Regra                                                                 |
|------------|----------------------------------------------------------------------|
| RN-0001    | O usuário deve ter acesso às opções de inclusão, alteração e exclusão. |
| RN-0002    | O código do Corretor é gerado automaticamente pelo banco de dados de modo sequencial. |
| RN-0003    | Não poderá existir mais de um registro com o mesmo CPF.             |
| RN-0004    | O Corretor só pode ser cadastrado se todos os campos obrigatórios estiverem preenchidos. |
| RN-0005    | Os dados inseridos devem ser válidos com a realidade.                |

### 7. Tabela de Mensagens
| Referência | Mensagem                              |
|------------|---------------------------------------|
| M1         | Registro de corretor efetuado com sucesso.       |
| M2         | Registro de corretor não efetuado.               |
| M3         | Corretor já cadastrado no sistema.              |

### 8. Tabela de Validação de Campos da Tela
| Campo            | Tipo    | Tam | Máscara | Obrig | Vlr. Válido    | Tabela       | Msg Erro         |
|-------------------|---------|-----|---------|-------|----------------|--------------|------------------|
| id_corretor       | Inteiro |     |         | Sim   | TipoCorretor   |              |                  |
| nome              | Texto   | 255 |         | Sim   | TipoCorretor   |              | Campo obrigatório |
| cpf               | Texto   | 11  |         | Sim   | TipoCorretor   |              | Campo obrigatório |
| email             | Texto   | 255 |         | Não   | TipoCorretor   |              |                  |
| id_cliente        | Inteiro |     |         | Sim   | TipoCorretor   |              | Campo obrigatório |

## 9. Protótipos de Tela/Relatórios
![Logo do Projeto](Telas/documentos.png)
