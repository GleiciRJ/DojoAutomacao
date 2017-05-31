#language: pt
#utf-8

@cadastroEmpregado
Funcionalidade: Cadastrar Empregado
	Eu como profissional de RH da OrangeHRM
	Desejo cadastrar novos funcionarios
	Para aumentar o quadro de funcionarios da empresa

Contexto: Acessar e fazer Login no site da OrangeHRM
	Dado que eu esteja logado no site da empresa OrangeHRM

@inclusaoEmpregado
Cenário: Cadastrar novo empregado
	Quando cadastrar um novo funcionário
	Então o sistema vai incluir o novo funcionário na lista de funcionários após submeter o formulario

@alteracaoEmpregado
Cenário: Editar dados de empregado
	Quando alterar os dados de um funcionário existente
	Então o sistema vai realizar a alteração dos dados do funcionário selecionado
	E a alteração será refletida na lista