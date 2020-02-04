module Criar
    include HTTParty
    default_options.update(verify: false)
    base_uri 'https://api-de-tarefas.herokuapp.com'
    format :json
end

