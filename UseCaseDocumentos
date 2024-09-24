# USE CASE: Documentos Cliente

## UC0002 – Cadastrar Documentos do Cliente

### 1. Histórico de Atualizações
| Data     | Versão | Solicitação      | Descrição   | Autor   |
|----------|--------|------------------|-------------|---------|
| 22/09    | 01     | Professor Silvio  | Use Case    | Gabriel |

### 2. Descrição do Caso de Uso
O objetivo deste caso de uso é cadastrar documentos de um cliente no sistema, incluindo detalhes como tipo de documento, número, data de emissão e órgão emissor.

### 3. Pré-Condições
- O Usuário deve estar autenticado no sistema.
- O Usuário deve ter acesso de Inclusão, Alteração e Exclusão de Documentos (Roles: `INCLUIR_DOCUMENTOS`, `ALTERAR_DOCUMENTOS`, `EXCLUIR_DOCUMENTOS`).
- O Cliente deve estar previamente cadastrado no sistema.

### 4. Atores
- **Usuário**: Pessoa que interage com o sistema para cadastrar documentos de clientes.

### 5. Fluxos

#### Fluxo Principal
1. O sistema verifica o perfil do usuário. (RN-0001)
2. O sistema exibe o formulário para preenchimento dos dados do Documento do Cliente. (T01)
3. O usuário preenche os dados do Documento do Cliente.
4. O usuário clica em "Salvar".
5. O sistema verifica a consistência das informações. (RN-0005)
6. O sistema associa o documento ao Cliente.
7. O sistema exibe uma mensagem de confirmação de sucesso e o número único de registro do Documento. (RN-0002) (M1)
8. Fim do caso de uso.

#### Fluxos Alternativos

**Fluxo A1 – Dados obrigatórios não preenchidos**
1. O usuário tenta avançar sem preencher um ou mais campos obrigatórios.
2. O sistema identifica os campos faltantes e exibe uma mensagem de erro. (M2)
3. O usuário preenche os campos obrigatórios faltantes e tenta salvar novamente.
4. Retorna ao passo 4 do fluxo principal.

**Fluxo A2 – Documento já cadastrado**
1. O sistema detecta que o número do documento informado já está cadastrado para o Cliente. (RN-0003)
2. O sistema exibe uma mensagem de erro. (M3)
3. O usuário corrige os dados do Documento.
4. Retorna ao passo 4 do fluxo principal.

### 6. Regras
| Referência | Regra                                                                 |
|------------|----------------------------------------------------------------------|
| RN-0001    | O usuário deve ter acesso às opções de inclusão, alteração e exclusão. |
| RN-0002    | O código do Documento é gerado automaticamente pelo banco de dados de modo sequencial. |
| RN-0003    | Não poderá existir mais de um registro com o mesmo número de documento para o mesmo Cliente. |
| RN-0004    | O Documento só pode ser cadastrado se todos os campos obrigatórios estiverem preenchidos. |
| RN-0005    | Os dados inseridos devem ser válidos com a realidade.                |

### 7. Tabela de Mensagens
| Referência | Mensagem                             |
|------------|--------------------------------------|
| M1         | Registro de documento efetuado com sucesso.       |
| M2         | Registro de documento não efetuado.               |
| M3         | Documento já cadastrado para este Cliente.        |

### 8. Tabela de Validação de Campos da Tela
| Campo              | Tipo    | Tam | Máscara | Obrig | Vlr. Válido    | Tabela       | Msg Erro         |
|--------------------|---------|-----|---------|-------|----------------|--------------|------------------|
| id_documento       | Inteiro |     |         | Sim   | TipoDocumento  |              |                  |
| id_cliente          | Inteiro |     |         | Sim   | TipoDocumento  |              | Campo obrigatório |
| tipo_documento     | Texto   | 255 |         | Sim   | TipoDocumento  |              | Campo obrigatório |
| numero_documento   | Texto   | 255 |         | Sim   | TipoDocumento  |              | Campo obrigatório |
| data_emissao       | Data    |     |         | Sim   | TipoDocumento  |              | Campo obrigatório |
| orgao_emissor      | Texto   | 255 |         | Não   | TipoDocumento  |              |                  |

## 9. Protótipos de Tela/Relatórios
![Logo do Projeto](Telas/documentos.png)
