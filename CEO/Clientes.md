# UC0001 – Cadastrar Cliente - Especificação

## DADOS:

- **id_cliente**: Identidade única de um certo cliente no sistema. Essa identidade é usada apenas pelo próprio sistema, sendo gerada pelo mesmo.
- **nome**: Nome completo do cliente.
- **cpf**: Cadastro de Pessoa Física do cliente.
- **email**: Endereço de e-mail do cliente (ex: cliente@email.com).
- **telefone**: Número de telefone celular do cliente (somente telefone celular).
- **endereco**: Endereço físico do cliente (rua e número da residência).
- **data_nascimento**: Data de nascimento do cliente (dia, mês e ano).

## REGRAS

| Referência | Regra                                                                 |
|------------|-----------------------------------------------------------------------|
| RN-0001    | O usuário deve ter acesso às opções de inclusão, alteração e exclusão. |
| RN-0002    | O código do Cliente é gerado automaticamente pelo banco de dados de modo sequencial. |
| RN-0003    | Não poderá existir mais de um registro com o mesmo CPF.               |
| RN-0004    | O Cliente só pode ser cadastrado se todos os campos obrigatórios estiverem preenchidos. |
| RN-0005    | Os dados inseridos devem ser válidos com a realidade.                 |

### **RN-0001: O usuário deve ter acesso às opções de inclusão, alteração e exclusão.**

Você pode adicionar, editar ou remover clientes quando necessário. Isso ajuda a manter os dados sempre atualizados e precisos.

---

### **RN-0002: O código do Cliente é gerado automaticamente pelo banco de dados de modo sequencial.**

O sistema cria um número único (ID) para cada cliente automaticamente. Assim, você não precisa se preocupar em gerar ou gerenciar esses códigos manualmente.

---

### **RN-0003: Não poderá existir mais de um registro com o mesmo CPF.**

Cada cliente deve ter um CPF único no sistema. Isso evita duplicidades e garante que cada pessoa seja cadastrada apenas uma vez.

---

### **RN-0004: O Cliente só pode ser cadastrado se todos os campos obrigatórios estiverem preenchidos.**

Para cadastrar um cliente, é preciso preencher todos os campos essenciais, como nome, CPF e telefone. Isso garante que não faltem informações importantes.

---

### **RN-0005: Os dados inseridos devem ser válidos com a realidade.**

As informações cadastradas precisam ser reais e corretas. Por exemplo, o CPF deve ser válido, e o e-mail deve seguir um formato adequado. Isso evita erros e inconsistências.

## INTERFACE

![Interface](https://github.com/user-attachments/assets/ffa48925-4573-45dc-9f36-9b1d79f52332)

1. Botão para aba de cadastro de cliente.
2. Botão para aba de cadastro de documento de cliente.
3. Botão para aba de cadastro de dependente do cliente.
4. Botão para aba de cadastro de corretores.
5. Botão para aba de cadastro de veículos dos clientes.
6. Botão para aba de cadastro de apólices de seguro.
7. Botão para aba de cadastro de sinistros dos clientes.
8. Botão para aba de cadastro de funcionários.
9. Título do formulário de cadastro de cliente.
10. Caixa de inserção de nome do cliente.
11. Caixa de inserção de CPF do cliente.
12. Caixa de inserção de email do cliente.
13. Caixa de inserção de telefone do cliente.
14. Caixa de inserção de endereço físico do cliente.
15. Caixa de seleção de data de nascimento do cliente.
16. Caixa de seleção de gênero do cliente.
17. Caixa de seleção de etnia do cliente.
18. Caixa de seleção de orientação sexual do cliente.
19. Botão de conclusão de formulário. O sistema valida os dados e os adiciona ao banco de dados.
