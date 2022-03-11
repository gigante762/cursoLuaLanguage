-- comentários de multiplas linhas --[[]]

--[[ Coerções ]]

--[[ 
    Lua provê conversões automáticas entre números e strings em tempo de excução.
]]


--[[ Operações numéricas em string, lua tentará converter a string para numero

print("10" + '7')

print("10 + 1") -- pegadinha

print('7' * '3')

print('oi' * '3')

--]]


--[[ Operações de concatenação de numeros, lua tentará converter o numero para string

print(65 .. 32)

print('B' .. 32)

--]]

--[[ Exemplos 

print('Soma: ' .. 3+4)

print('Soma: ' .. 3 + '2')

--]]

--[[ Nota do Roberto, um dos Desenvolvedores de Lua - Livro Programando em Lua Terceira Edição, Cap 2 p 16
    
    "Não temos hoje, muita certeza de que essas coerções automáticas foram uma boa ideia
    no projeto Lua. Como regra é melhor não contar com elas... Afinal string e numeros são coisas
    diferentes."
]]


--[[ Exemplos de igualdade

print("10" == "10")

print(10 == "10")

print( type(10) == type('10') )

print(tostring(10) == '10')

print(10 .."" == 10)

print(10 .."" == '10')

--]]

---[[ 
    x = '10'
    x = tonumber(x)
    -- teria uma verificão aqui...
    y = x + 3

    valor = tostring(y)
    mensagem = "Valor: "..valor
--]]


