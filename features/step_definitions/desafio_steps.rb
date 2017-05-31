Dado(/^que eu esteja logado no site da empresa OrangeHRM$/) do                       
  visit 'http://opensource.demo.orangehrmlive.com'
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')        
end                                                                                  
                                                                                     
Quando(/^cadastrar um novo funcionário$/) do                                         
  #Acesso a área de cadastro de funcionários
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')

  #Preenchimento dos dados do novo funcinario
  fill_in('firstName', :with => 'José')
	fill_in('middleName', :with => 'Silva')
	fill_in('lastName', :with => 'Medeiros')
	fill_in('employeeId', :with => '231530052017')
	check('chkLogin')
	fill_in('user_name', :with => 'jsilva')
	fill_in('user_password', :with => 'jsilva123')
	fill_in('re_password', :with => 'jsilva123')
	select('Enabled', :from => 'status')
end                                                                                  
                                                                                     
Então(/^o sistema vai incluir o novo funcionário na lista de funcionários após submeter o formulario$/) do      
  click_button('btnSave')
  click_link('menu_pim_viewEmployeeList')      
end                                                                                  
                                                                                     
Quando(/^alterar os dados de um funcionário existente$/) do                          
   #Seleção do funcionário da lista
  click_link('menu_pim_viewPimModule')
  click_link('Ágatha Souza')

  #Habilitando campos para edição
  click_button('btnSave')

  #Alteração dos dados cadastrados
  fill_in('personal[txtEmployeeId]', :with => '233230052017')
  choose('personal_optGender_2')
  select('Brazilian', :from => 'personal[cmbNation]')
end                                                                                  
                                                                                     
Então(/^o sistema vai realizar a alteração dos dados do funcionário selecionado$/) do
  click_button('btnSave')        
end                                                                                  
                                                                                     
Então(/^a alteração será refletida na lista$/) do                                    
  click_link('menu_pim_viewEmployeeList')
  binding.pry        
end                                                                                  