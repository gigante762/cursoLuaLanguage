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


--[[ Praticas com for ]]
-- getPlayers()
Players = getPlayers()


--[[ Escreva na tela a quantidade de jogadores na partida.
    print(#Players)
--]]

---[[ Escreva na tela a média dos pontos dos jogadores

    local totalPontos = 0

    for i = 1,#Players do
        totalPontos = totalPontos + Players[i].pontos
    end

    print("Media de pontos: " .. totalPontos/#Players)

--]]


---[[ Algo aconteceu.
    --Ana e Marcos ganharam 8 e 10 pontos respectivamente.
    --Atualiza a pontuação deles e monstre a nova pontuação na tela.
--[[ 
    for k,jogador in pairs(Players) do
        --print(jogador.nome)
        if jogador.nome == 'Ana' then
            jogador.pontos = jogador.pontos + 8
            print(jogador.nome, jogador.pontos)

        elseif jogador.nome == 'Marcos' then
            jogador.pontos = jogador.pontos + 10
            print(jogador.nome, jogador.pontos)
        end
    end ]]
    


--]]


---[[ 
    -- O jogador Lucas mudor o nome para Lucas Silva, atualize o nome dele
    -- e escreva na tela os dados nome e pontos desse jogador

    --[[ for i = 1, #Players do
        if Players[i].nome == 'Lucas' then
            Players[i].nome = 'Lucas Silva'
            print(Players[i].nome, Players[i].pontos)
        end
    end ]]

--]]






--[[ Desafios:  ]]

---[[ Escreva na tela o nome do jogado com a maior pontuação junto com os pontos
    
    -- encontrar o jogador com a maior pontuação

    local maiorPontuacao  = -2
    local jogadorComMaiorPontuacao = ''

    for k,v in pairs(Players) do
        if v.pontos > maiorPontuacao then
            maiorPontuacao = v.pontos
            jogadorComMaiorPontuacao = v.nome
        end
    end

    print(jogadorComMaiorPontuacao,maiorPontuacao)
    
--]]

---[[ Escreva na tela o nome do jogado com a menor pontuação junto com os pontos
    
--]]