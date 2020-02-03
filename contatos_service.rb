module Contato
    include HTTParty
    default_options.update(verify: false) ## - para poder chamar rodar os specs mesmo com restrição de conexão.
    ## - Deverá ser utilizado com conexão Wifi
    base_uri 'https://api-de-tarefas.herokuapp.com'
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
                    'Content-Type': 'application/json'
end