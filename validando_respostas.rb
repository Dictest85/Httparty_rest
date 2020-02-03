describe 'fazer uma requisicão' do
    it 'get' do
        @melhor_opcao = Contato.get('/contacts/568')
        #puts @melhor_opcao 
        #puts @melhor_opcao.code
        #expect(@melhor_opcao.code).to eq 200
        puts @melhor_opcao.body
        #puts @melhor_opcao.parsed_response['data']['atributes']['name']
        expect(@melhor_opcao.parsed_response['data']['attributes']['name']).to eq 'bruno batista 1000'
        expect(@melhor_opcao.parsed_response['data']['attributes']['last-name']).to eq 'batista 1000'
        expect(@melhor_opcao.parsed_response['data']['attributes']['email']).to eq 'brunotop1000@gmail.com'
        expect(@melhor_opcao.parsed_response['data']['attributes']['age']).to eq 28
    end
end

