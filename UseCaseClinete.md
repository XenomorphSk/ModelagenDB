# UC0001 – Cadastrar Cliente

## 1. Histórico de Atualizações
| Data     | Versão | Solicitação     | Descrição  | Autor   |
|----------|--------|------------------|------------|---------|
| 22/09    | 01     | Professor Silvio  | Use Case   | Gabriel |

## 2. Descrição do Caso de Uso
O objetivo deste caso de uso é cadastrar um cliente no sistema, incluindo informações pessoais e detalhes relacionados.

## 3. Pré-Condições
- O Usuário deverá estar autenticado no sistema.
- O Usuário deverá ter acesso de Inclusão, Alteração e Exclusão de Registros (Roles INCLUIR_REGISTROS, ALTERAR_REGISTROS, EXCLUIR_REGISTROS).

## 4. Atores
- Usuário

## 5. Fluxos

### Fluxo Principal
1. O sistema verifica o perfil do usuário. (RN-0001)
2. O sistema exibe o formulário para preenchimento dos dados do Cliente. (T01)
3. O usuário clica em "Salvar".
4. O sistema verifica a consistência das informações. (RN-0005)
5. O sistema exibe uma mensagem de confirmação de sucesso e o número único de registro do Cliente. (RN-0002) (M1)
6. Fim do caso de uso.

### Fluxos Alternativos
#### Fluxo A1 – Dados obrigatórios não preenchidos
1. O usuário tenta avançar sem preencher um ou mais campos obrigatórios.
2. O sistema identifica os campos faltantes e exibe uma mensagem de erro. (M2)
3. O usuário preenche os campos obrigatórios faltantes e tenta salvar novamente.
4. Retorna ao passo 3 do fluxo principal.

#### Fluxo A2 – Cliente já cadastrado
1. O sistema detecta que o CPF informado já está cadastrado. (RN-0003)
2. O sistema exibe uma mensagem de erro. (M3)
3. O usuário corrige os dados do Cliente.
4. Retorna ao passo 3 do fluxo principal.

## 6. Regras
| Referência | Regra                                                        |
|------------|--------------------------------------------------------------|
| RN-0001    | O usuário deve ter acesso às opções de inclusão, alteração e exclusão. |
| RN-0002    | O código do Cliente é gerado automaticamente pelo banco de dados de modo sequencial. |
| RN-0003    | Não poderá existir mais de um registro com o mesmo CPF.     |
| RN-0004    | O Cliente só pode ser cadastrado se todos os campos obrigatórios estiverem preenchidos. |
| RN-0005    | Os dados inseridos devem ser válidos com a realidade.       |

## 7. Tabela de Mensagens
| Referência | Mensagem                          |
|------------|-----------------------------------|
| M1         | Registro efetuado com sucesso.    |
| M2         | Registro não efetuado.            |
| M3         | Cliente já cadastrado no sistema. |

## 8. Tabela de Validação de Campos da Tela
| Campo                       | Tipo    | Tam | Máscara | Obrig | Vlr. Válido   | Tabela      | Msg Erro               |
|----------------------------|---------|-----|---------|-------|---------------|-------------|------------------------|
| id_cliente                 | Inteiro |     |         | Sim   | TipoCliente   |             |                        |
| nome                       | Texto   | 255 |         | Sim   | TipoCliente   |             | Campo obrigatório      |
| cpf                        | Texto   | 11  |         | Sim   | TipoCliente   |             | Campo obrigatório      |
| email                      | Texto   | 255 |         | Não   | TipoCliente   |             |                        |
| telefone                   | Texto   | 20  |         | Não   | TipoCliente   |             |                        |
| endereco                   | Texto   | 255 |         | Não   | TipoCliente   |             |                        |
| data_nascimento            | Data    |     |         | Sim   | TipoCliente   |             | Campo obrigatório      |
| id_genero                 | Inteiro |     |         | Sim   | TipoCliente   |             | Campo obrigatório      |
| id_etnia                  | Inteiro |     |         | Sim   | TipoCliente   |             | Campo obrigatório      |
| id_orientacao_sexual      | Inteiro |     |         | Sim   | TipoCliente   |             | Campo obrigatório      |

## 9. Protótipos de Tela/Relatórios
(Adicione aqui protótipos se necessário)

# UC0002 – Cadastrar Identidade de Gênero

## 1. Histórico de Atualizações
| Data     | Versão | Solicitação     | Descrição  | Autor   |
|----------|--------|------------------|------------|---------|
| 22/09    | 01     | Professor Silvio  | Use Case   | Gabriel |

## 2. Descrição do Caso de Uso
O objetivo deste caso de uso é cadastrar a definição de identidade de gênero no sistema.

## 3. Pré-Condições
- O Usuário deverá estar autenticado no sistema.
- O Usuário deverá ter acesso de Inclusão de Registros (Role INCLUIR_REGISTROS).

## 4. Atores
- Usuário

## 5. Fluxos

### Fluxo Principal
1. O sistema verifica o perfil do usuário. (RN-0001)
2. O sistema exibe o formulário para preenchimento dos dados de Identidade de Gênero. (T01)
3. O usuário clica em "Salvar".
4. O sistema verifica a consistência das informações. (RN-0005)
5. O sistema exibe uma mensagem de confirmação de sucesso e o número único de registro da Identidade de Gênero. (RN-0002) (M1)
6. Fim do caso de uso.

### Fluxos Alternativos
#### Fluxo A1 – Dados obrigatórios não preenchidos
1. O usuário tenta avançar sem preencher um ou mais campos obrigatórios.
2. O sistema identifica os campos faltantes e exibe uma mensagem de erro. (M2)
3. O usuário preenche os campos obrigatórios faltantes e tenta salvar novamente.
4. Retorna ao passo 3 do fluxo principal.

## 6. Regras
| Referência | Regra                                                         |
|------------|---------------------------------------------------------------|
| RN-0001    | O usuário deve ter acesso às opções de inclusão.             |
| RN-0002    | O código da Identidade de Gênero é gerado automaticamente pelo banco de dados. |
| RN-0003    | Não poderá existir mais de um registro com a mesma definição de gênero. |
| RN-0004    | A Identidade de Gênero só pode ser cadastrada se todos os campos obrigatórios estiverem preenchidos. |
| RN-0005    | Os dados inseridos devem ser válidos com a realidade.        |

## 7. Tabela de Mensagens
| Referência | Mensagem                           |
|------------|------------------------------------|
| M1         | Registro efetuado com sucesso.     |
| M2         | Registro não efetuado.             |
| M3         | Identidade de Gênero já cadastrada no sistema. |

## 8. Tabela de Validação de Campos da Tela
| Campo                | Tipo    | Tam | Máscara | Obrig | Vlr. Válido     | Tabela          | Msg Erro               |
|---------------------|---------|-----|---------|-------|-----------------|------------------|------------------------|
| id_genero           | Inteiro |     |         | Sim   | IdentidadeGenero |                  |                        |
| definicao_genero    | Texto   | 255 |         | Sim   | IdentidadeGenero |                  | Campo obrigatório      |

## 9. Protótipos de Tela/Relatórios
(Adicione aqui protótipos se necessário)

# UC0003 – Cadastrar Etnia

## 1. Histórico de Atualizações
| Data     | Versão | Solicitação     | Descrição  | Autor   |
|----------|--------|------------------|------------|---------|
| 22/09    | 01     | Professor Silvio  | Use Case   | Gabriel |

## 2. Descrição do Caso de Uso
O objetivo deste caso de uso é cadastrar a etnia no sistema.

## 3. Pré-Condições
- O Usuário deverá estar autenticado no sistema.
- O Usuário deverá ter acesso de Inclusão de Registros (Role INCLUIR_REGISTROS).

## 4. Atores
- Usuário

## 5. Fluxos

### Fluxo Principal
1. O sistema verifica o perfil do usuário. (RN-0001)
2. O sistema exibe o formulário para preenchimento dos dados da Etnia. (T01)
3. O usuário clica em "Salvar".
4. O sistema verifica a consistência das informações. (RN-0005)
5. O sistema exibe uma mensagem de confirmação de sucesso e o número único de registro da Etnia. (RN-0002) (M1)
6. Fim do caso de uso.

### Fluxos Alternativos
#### Fluxo A1 – Dados obrigatórios não preenchidos
1. O usuário tenta avançar sem preencher um ou mais campos obrigatórios.
2. O sistema identifica os campos faltantes e exibe uma mensagem de erro. (M2)
3. O usuário preenche os campos obrigatórios faltantes e tenta salvar novamente.
4. Retorna ao passo 3 do fluxo principal.

## 6. Regras
| Referência | Regra                                                        |
|------------|--------------------------------------------------------------|
| RN-0001    | O usuário deve ter acesso às opções de inclusão.            |
| RN-0002    | O código da Etnia é gerado automaticamente pelo banco de dados. |
| RN-0003    | Não poderá existir mais de um registro com a mesma etnia.   |
| RN-0004    | A Etnia só pode ser cadastrada se todos os campos obrigatórios estiverem preenchidos. |
| RN-0005    | Os dados inseridos devem ser válidos com a realidade.       |

## 7. Tabela de Mensagens
| Referência | Mensagem                          |
|------------|-----------------------------------|
| M1         | Registro efetuado com sucesso.     |
| M2         | Registro não efetuado.            |
| M3         | Etnia já cadastrada no sistema.   |

## 8. Tabela de Validação de Campos da Tela
| Campo                | Tipo    | Tam | Máscara | Obrig | Vlr. Válido     | Tabela          | Msg Erro               |
|---------------------|---------|-----|---------|-------|-----------------|------------------|------------------------|
| id_etnia            | Inteiro |     |         | Sim   | Etnia           |                  |                        |
| definicao_etnia     | Texto   | 255 |         | Sim   | Etnia           |                  | Campo obrigatório      |

## 9. Protótipos de Tela/Relatórios
(Adicione aqui protótipos se necessário)

# UC0004 – Cadastrar Orientação Sexual

## 1. Histórico de Atualizações
| Data     | Versão | Solicitação     | Descrição  | Autor   |
|----------|--------|------------------|------------|---------|
| 22/09    | 01     | Professor Silvio  | Use Case   | Gabriel |

## 2. Descrição do Caso de Uso
O objetivo deste caso de uso é cadastrar a orientação sexual no sistema.

## 3. Pré-Condições
- O Usuário deverá estar autenticado no sistema.
- O Usuário deverá ter acesso de Inclusão de Registros (Role INCLUIR_REGISTROS).

## 4. Atores
- Usuário

## 5. Fluxos

### Fluxo Principal
1. O sistema verifica o perfil do usuário. (RN-0001)
2. O sistema exibe o formulário para preenchimento dos dados da Orientação Sexual. (T01)
3. O usuário clica em "Salvar".
4. O sistema verifica a consistência das informações. (RN-0005)
5. O sistema exibe uma mensagem de confirmação de sucesso e o número único de registro da Orientação Sexual. (RN-0002) (M1)
6. Fim do caso de uso.

### Fluxos Alternativos
#### Fluxo A1 – Dados obrigatórios não preenchidos
1. O usuário tenta avançar sem preencher um ou mais campos obrigatórios.
2. O sistema identifica os campos faltantes e exibe uma mensagem de erro. (M2)
3. O usuário preenche os campos obrigatórios faltantes e tenta salvar novamente.
4. Retorna ao passo 3 do fluxo principal.

## 6. Regras
| Referência | Regra                                                        |
|------------|--------------------------------------------------------------|
| RN-0001    | O usuário deve ter acesso às opções de inclusão.            |
| RN-0002    | O código da Orientação Sexual é gerado automaticamente pelo banco de dados. |
| RN-0003    | Não poderá existir mais de um registro com a mesma definição de orientação sexual. |
| RN-0004    | A Orientação Sexual só pode ser cadastrada se todos os campos obrigatórios estiverem preenchidos. |
| RN-0005    | Os dados inseridos devem ser válidos com a realidade.       |

## 7. Tabela de Mensagens
| Referência | Mensagem                           |
|------------|------------------------------------|
| M1         | Registro efetuado com sucesso.     |
| M2         | Registro não efetuado.             |
| M3         | Orientação Sexual já cadastrada no sistema. |

## 8. Tabela de Validação de Campos da Tela
| Campo                  | Tipo    | Tam | Máscara | Obrig | Vlr. Válido        | Tabela               | Msg Erro               |
|-----------------------|---------|-----|---------|-------|--------------------|-----------------------|------------------------|
| id_orientacao_sexual  | Inteiro |     |         | Sim   | OrientacaoSexual   |                       |                        |
| definicao_orientacao  | Texto   | 255 |         | Sim   | OrientacaoSexual   |                       | Campo obrigatório      |

## 9. Protótipos de Tela/Relatórios
(Adicione aqui protótipos se necessário)

