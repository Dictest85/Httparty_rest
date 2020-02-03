describe 'usando' do
    it 'token' do
        @email = Faker::Internet.email

        @body = {
            user: {
                email: @email,
                password: '123456',
                password_confirmation: '123456'
            } 
        }.to_json
         
        @header = {
            Accept: 'application/vmd.taskmanager.v2',
            'Content-Type': 'application/json'
        }

        @criar = Criar.post('/users',body: @body, headers: @header)
        puts @criar.body
        puts @criar.parsed_response['data']['attributes']['auth-token']
        #puts @criar.parsed_response['data']['attributes']['ue38eu38ue38eu83eu83']

        @body_one = {
            session: {
                email: @email,
                password: '123456'
            }

        }.to_json

        @header_one = {
            Accept: 'application/vmd.taskmanager.v2',
            'Content-Type': 'application/json',
            Authorization:"#{@criar.parsed_response['data']['attributes']['auth-token']}"
            #Authorization:"ue38eu38ue38eu83eu83"
        }

        @login = Criar.post('/sessons',body: @body_one, headers: @header_one)
        puts @login.body
    end
end