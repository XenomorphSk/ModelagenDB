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


## ITERFACE

![(1)](https://github.com/user-attachments/assets/ffa48925-4573-45dc-9f36-9b1d79f52332)

(1) Botão para aba de cadastro de cliente
(2) Botão para aba de cadastro de documento de cliente 
(3) Botão para aba de cadastro de dependendente do cliente
(4) Botão para aba de cadastro de corretores
(5) Botão para aba de cadastro de veiculos dos clientes
(6) Botão para aba de cadastro de apolices de seguro
(7) Botão para aba de cadastro de sinistros dos clientes
(8) Botão para aba de cadastro de funcionarios
(9) titulo de formulario de cadastro de cliente
(10) caixa de inserçao de nome de cliente
(11) caixa de inserçao de CPF de cliente
(12) caixa de inserçao de email de cliente
(13) caixa de inserçao de telefone de cliente
(14) caixa de inserçao de endereço fisico de cliente
(15) caixa de seleçào de data de nascimento do cliente
(16) caixa de seleçào de data de genero do cliente
(17) caixa de seleçào de data de etinia do cliente
(18) caixa de seleçào de data de orientaçào sexual do cliente do cliente
(19) botào de conclusào de formulario, o sistema valida os dados e adicionas os no banco de dados.
