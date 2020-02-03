#coding:utf-8
Dado("que eu faça um GET") do
   #describe 'fazer uma requisicão' do - comando utilizado via rspec 
end
  
Quando("eu executar tipo de comando GET") do
   #it 'get' do - comando utilizado via rspec
   #@melhor_opcao = Contato.get('/contacts/') - comando utilizado via rspec
   @melhor_opcao = HTTParty.get('/contacts')
end
  
Entao("o retorno trara todos os registros") do
   puts = @melhor_opcao
end