describe ' fazer requisicao' do
    context 'para alterar dados com' do 
        it 'put' do
          @body_put = {
            "id": "570",
            "name": "bruno 850",
            "last_name": "batista 850",
            "email": "brunotop850028@gmail.com",
            "age": "28",
            "phone": "21984759575",
            "address": "Rua dois",
            "state": "Minas Gerais",
            "city": "Belo Horizonte",
          }.to_json 
          @requisicao_put = Contato.put('/contacts/570', body: @body_put)
          puts @requisicao_put
        end

        it 'patch' do
          @body_patch = {
            "id": "554",
            "name": "bruno 85030",
            "last_name": "batista 85030",
            "email": "brunotop85030@gmail.com",
          }.to_json
          @requisicao_patch = Contato.patch('/contacts/554', body: @body_patch)
          puts @requisicao_patch
        end
    end       
end