describe 'fazer uma requisicão' do
    it 'post' do
        @body ={
            "name": "bruno 850",
            "last_name": "batista 850",
            "email": "brunotop850@gmail.com",
            "age": "28",
            "phone": "21984759575",
            "address": "Rua dois",
            "state": "Minas Gerais",
            "city": "Belo Horizonte"
        }.to_json

       #@headers =  {
        #"Accept": 'application/vnd.tasksmanager.v2',
        #'Content-Type': 'application/json'
       #}
       
       #@request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts',body: @body, headers:@headers) 
       #puts @request

       @request = Contato.post('/contacts', body: @body)
       puts @request
    end
end
