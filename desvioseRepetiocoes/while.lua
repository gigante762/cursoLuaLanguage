-- while
--[[ Funcoes para a pratica ]]
do 
    function getPlayers()
       return {
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
    end
end

--[[

    O while repete o comando enquanto a condição foi verdadeira.

    while condicao do
        -- bloco a ser repetido
    end
 ]]

--[[ i = 1
while i <= 5 do
    print(i)
    i = i + 1
end ]]



-- se eu nao colocar a linha i= i + 1, esse programa "nunca" vai terminar.
-- esse é o famoso while true bug. Vai travar!


--[[ repeat
    print(i)
until false ]]


---[[ Exemplo de uso do while 
    
    -- Escrever o nome de Todos os jogadores que estão na partida.

    Players = getPlayers()

    --[[ posicao = 1

    while posicao <= #Players do
        print('Estou na posicao '..posicao)
        print(Players[posicao].nome.. ' '..Players[posicao].pontos)
        posicao  = posicao + 1
    end ]]

    -- se os pontos desse jogar for maior que 50, escreva 'Passou de fase'


    i = 1

    while i <= #Players do
        print(Players[i].nome.. ' '..Players[i].pontos)

        if Players[i].pontos > 50 then
            print('\t passou de fase.')
        end

        i = i + 1
    end

    
--]]



 