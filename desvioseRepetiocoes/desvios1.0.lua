--[[ Estruturas de Controle e escopos de variáveis]]
-- desvios, verificações

-- testar uma determinada CONDIÇÃO e executar partes de códigos condicionalmente

--executa a condição se for verdade

--[[ 
verdade = false
if not verdade then 
    print('Verdade')
end

verdade = false
if verdade then 
    print('Verdade')
else
    print('Mentira')
end

idade = 18
if idade >= 18 then
    print('Adulto')
elseif idade >= 14 then
    print('Adolescente')
else
    print('Crianca')
end ]]


--[[ um pouco de escopo ]]

--[[ Considere que eu preciso saber da área de um quadrado e assim saber se
    dá ou não para construir uma casa;

    -- exemplo meramente didático

    primeiro eu sei que todos as casa precisar ao menos ter
    15x15 = 225m²

    então todas as casa precisam ter ao menos esse tamanho
    caso contrario não se pode construir.

    e depois temos as classificações das casa

    maior 400m² = grande
    maior que 300 e menor que 400 = medio
    maior ou igual a 225 = pequena

    Escreve um programa que leia(io.read()) um lado do terreno e classifique a casa.
]]


print('Escreva o valor de uma lado: ')
lado = tonumber(io.read())

if lado == nil then
    print("lado invalido")
    return
end

metrosQuadrado = lado * lado -- lado ^ 2

-- and or not

if metrosQuadrado >= 225 then
    print('Pode construir')
    if metrosQuadrado > 400 then
        print("casa grande")
    elseif metrosQuadrado >= 300 and metrosQuadrado <= 400 then
        print("casa media")
    else
        print("Casa pequena")
    end
else
    print("Nao pode construir")
end




