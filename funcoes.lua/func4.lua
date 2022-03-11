--[[ Introdução ao tratamento de erros em funções ]]


--[[ Funções das aulas passadas

   
    local function escreverBoasVindas(nome)
        print("Bem vindo(a), "..nome..'.')
    end

    --escreverBoasVindas('false')

    local div = function(n1,n2)

        local nd = n2 or 1
        return n1 // nd

    end

    print(div(10))

--]]


--[[ Lancamento de erros

    local function escreverBoasVindas(nome)

        if type(nome) ~= 'string' and type(nome) ~= 'number' then
            error("#1 argumento invalido, recebido '"..type(nome).."'. Aceito string e number")
        end

        print("Bem vindo(a), "..nome..'.')
    end

    escreverBoasVindas('asdasd')
    escreverBoasVindas(82)
    escreverBoasVindas(nil)
    --escreverBoasVindas(true)
    --escreverBoasVindas({})
    --escreverBoasVindas(function() end)
    


--]]

--[[ Chamada protegida de Funções

    local success, result = pcall(function ()
       return div(10,2)
    end)
    print(success, result)

    if not success then
        -- s
    end
--]]

--[[ Argumentos default

-- princípio de lógica de boole, referência pra você pesquisar.
-- aulas de operadores lógicos

-- Relembrando: and not or | e não ou
--[=[ Todos os operadores consideram false e nil como false e qualquer outra coisa com true. !"Em Lua"!

O operador "and" retornará o seu primeiro argumento se ele for falso;
caso contrário retornará o segundo.

O operador "or" retornará o seu primeiro argumento caso se ele não for false,
caso contrário retornará o segundo
]=]

print(4 and 5)
print(nil and 13)
print(false and 13)
print(4 or 5)
print(false or 5)

local final =  nil or false or false or 8
print(final)

--]]


---[[ Exemplo de aplicação

--[=[ Dados de contato para fazer uma entrega! ]=]
    
    -- Ordem de preferência.
    celular            = nil
    celularAlternativo = nil
    telefone           = nil
    email              = false
    fax                = nil
    caixa_postal       = nil

local contato = celular or celularAlternativo or telefone or email or fax or caixa_postal or 'Retornar Pedido'

print(contato)
-- enviarContato(contato)

--]]






