-- [[ Demonstração de funções, closures, técnicas de funções

-- ]]


function mostrarElementos(tab)
    for k, v in pairs(tab) do
        io.write(v..' ')
    end
    print()
end


--[[ Funções que recebem funções

-- table sort
local numeros = {1,5,3,7,8,6,9,4,10,25,61,37,26}
--mostrarElementos(numeros)

table.sort(numeros, function(a,b)
    return a < b
end)

--mostrarElementos(numeros)


local Players = {
    {nome='Ana', pontos = 76},
    {nome='Pedro', pontos = 54},
    {nome='Lucas', pontos = 61},
    {nome='Julia', pontos = 82},
    {nome='Marcos', pontos = 23},
    {nome='Jose', pontos = 52},
    {nome='Fernanda', pontos = 97},
    {nome='Mateus', pontos = 23},
    {nome='Jorge', pontos = 87},
    {nome='Joao', pontos = 35},
    {nome='Carlos', pontos = 23}
}
mostrarElementos(Players)
print('----------')
table.sort(Players, function (a,b)
    return a.pontos > b.pontos
end)
mostrarElementos(Players)



--]]


--[[ Criação de uma função map
-- ver inspiração em Js

function map(tab, callback)
    for i=1,#tab do
        tab[i] = callback(tab[i])
    end
end

local numeros = {1,5,3,7,8,6,9,4,10,25,61,37,26}
mostrarElementos(numeros)

map(numeros, function(n)
    return n/5
end)

mostrarElementos(numeros)

map(numeros, function(n)
    return math.floor(n)
end)

mostrarElementos(numeros)

--]]



--[[ Funções que retornam funções, (função que gera função)
-- função doble, triple, ...

    local x = 10

    function funcaoGeradoraDeMultiplos(multiplo)
        return function (n)
            return n * multiplo
        end
    end

    local mult = funcaoGeradoraDeMultiplos(3)

    local doble = funcaoGeradoraDeMultiplos(2)
    local triple = funcaoGeradoraDeMultiplos(3)

    print(doble(x))
    print(triple(x))

    
--]]


---[[ Técnica de argumentos nomeados

-- imagine que eu tenha uma função que é +- assim:

    -- darItem(a,b)

    
    function darItem(tab,...)
        print("Dando item "..tab.item..' para '..tab.to) 
    end

    darItem({to='Marc',item='Sword'})
    darItem({item='Sword',to='Tony',})

    darItem{item='Sword',to='Mike',}
  



    --[=[Exemplo real: 
        https://developer.roblox.com/en-us/api-reference/property/Tween/TweenInfo
    ]=]
--]]


