--[[ Criação de funções ]]

--[[ copia de funções 

    local escreva = print
    --escreva('ola')

    local seno = math.sin
    --escreva(seno(math.pi/2))
    
    local tipo = type
    --escreva(tipo({}))

--]]


--[[ Declaração de função

    local function escreverBoasVindas(a) -- a,b,c,d,e,...
        print("Bem vindo(a), "..a..'.')
    end

    escreverBoasVindas(7)


    local multiplica = function(n1, n2)
        print(n1 * n2)
    end

    function sub(n1,n2)
        print( n1-n2)
        return n1-n2
    end


    -- As vezes é melhor retonar o valor do que escrever na tela
    -- Assim se caso a pessoa quiser escrever ele chama o print
    -- Agora, e se ela não quiser que escreva e a sua função faz isso ??
    -- Nesse caso o melhor é retonar o valor.

--]]


--[[ Funções com multiplos retornos
    
    local function muitoRetorno()
        -- logica aqui.
        -- ativar a linha 3
        return 'a', 7, {}, true, escreva
    end

    r1, r2, r3 ,r4, r5, r6 = muitoRetorno()
    --print(r1,r2,r3,r4,r5,r6)

    local trs = { muitoRetorno() }
    for k, v in pairs(trs) do
        --print(k,v)
    end


    print(type(trs[5]))
    
    trs[5]("Ola pessoal")

--]]



