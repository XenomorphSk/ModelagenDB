# UC0001 – Cadastrar Cliente - Especificação 

## DADOS:

  id_cliente 	--> Identidade unica de um certo cliente ao sistema, etsa identidade é usada apenas pelo próprio sistema, sendo gerado pelo mesmo.
  nome 	--> Nome completo do cliente.
  cpf 	--> Cadastro de Pessoa física do cliente.
  email 	--> É o endereço de e-mail do cliente, cliente@email.com.
  telefone 	--> É o número de telefone celular do cliente, somente telefone celular.
  endereco 	--> É o endereço físico do cliente, rua e número da residencia.
  data_nascimento --> É a data de quando, o cliente nasceu, dia, mês e ano.



## REGRAS

Referência 	Regra
RN-0001 	O usuário deve ter acesso às opções de inclusão, alteração e exclusão.
RN-0002 	O código do Cliente é gerado automaticamente pelo banco de dados de modo sequencial.
RN-0003 	Não poderá existir mais de um registro com o mesmo CPF.
RN-0004 	O Cliente só pode ser cadastrado se todos os campos obrigatórios estiverem preenchidos.
RN-0005 	Os dados inseridos devem ser válidos com a realidade.

