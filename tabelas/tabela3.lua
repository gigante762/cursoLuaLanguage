--[[ Análise e manipulação de tabelas ]]
--[[ Funcoes para a pratica ]]
do 

    function getPlayers()
       return {
        {nome='Ana', pontos = 76},
        {nome='Pedro', pontos = 54},
        {nome='Lucas', pontos = 61},
        {nome='Julia', pontos = 82},
        {nome='Marcos', pontos = 23}
       }
    end
end
--[[ Vamos praticar um pouco a análise e as manipulações das tabelas

    De início vamos fazer operações de extração de informações e modificações

    Mais pra frente quando aprendermos mais coisas vamos estar capacitados
    para manipular dados em tabelas de forma mais 'profissional'

]]

--[[ Cenário
    Temos um jogo, pode ser o Roblox. Fiz algumas modificações.
    Muitos dados são armazenados em tabelas visto que podemos fazê-las
    crescer e dinimuir de tamanho sem nenhum problemas. Além do mais
    as tabelas podem armazenar muitos dados de forma indexados permitindo 
    fácil acesso a eles.

    Observe a tabela abaixo que guarda informações dos jogadores de uma partida.

]]

--[[ Use a função getPlayers() para pegar todos os jogadores
        Players = {
    {nome='Ana', pontos = 76},
    {nome='Pedro', pontos = 54},
    {nome='Lucas', pontos = 61},
    {nome='Julia', pontos = 82},
    {nome='Marcos', pontos = 23}
} ]]

Players = getPlayers()
--print(Players)

---[[ Escreva na tela a quantidade de jogadores na partida. 
    print(#Players)
--]]

---[[ Escreva na tela o nome do jogado com a maior pontuação junto com os pontos
    print(Players[4].nome..' '.. Players[4].pontos)
--]]

---[[ Escreva na tela o nome do jogado com a menor pontuação junto com os pontos
    print(Players[#Players].nome..' '.. Players[#Players].pontos)
--]]

---[[ Escreva na tela a média dos pontos dos jogadores
    totalPontos = 0
    totalJogadores = #Players

    totalPontos = totalPontos + Players[1].pontos
    totalPontos = totalPontos + Players[2].pontos
    totalPontos = totalPontos + Players[3].pontos
    totalPontos = totalPontos + Players[4].pontos
    totalPontos = totalPontos + Players[5].pontos

    media = totalPontos / totalJogadores

    print("Media de pontos: ".. media)

--]]


--[[ 

     Players = {
    {nome='Ana', pontos = 76},

    {nome='Pedro', pontos = 54},
    {nome='Lucas', pontos = 61},
    {nome='Julia', pontos = 82},
    {nome='Marcos', pontos = 23}
}
 ]]

---[[ Escreva na tela os nomes dos jogadores em ordem alfabética
    print(Players[1].nome)
    print(Players[4].nome)
    print(Players[3].nome)
    print(Players[5].nome)
    print(Players[2].nome)
--]]

---[[ Escreva na tela os nomes dos jogadores em ordem decrescente pela pontuação
    print(Players[4].nome)
    print(Players[1].nome)
    print(Players[3].nome)
    print(Players[2].nome)
    print(Players[5].nome)
--]]


---[[ Algo aconteceu.
    --Ana e Marcos ganharam 8 e 10 pontos respectivamente.
    --Atualiza a pontuação deles e monstre a nova pontuação na tela.

    Players[1].pontos = Players[1].pontos + 8
    Players[#Players].pontos = Players[#Players].pontos + 10

    print(Players[1].nome..' '.. Players[1].pontos)
    print(Players[#Players].nome..' '.. Players[#Players].pontos)


--]]


---[[ 
    --O jogador Lucas mudor o nome para Lucas Silva, atualize o nome dele
    --e escreva na tela os dados nome e pontos desse jogador

    print(Players[3].nome..' '.. Players[3].pontos)
    
    Players[3].nome = Players[3].nome .. ' Silva'

    print(Players[3].nome..' '.. Players[3].pontos)
--]]


---[[ 
    --O jogador Marcos se desconectou. Remova-o da lista de jogadores.
    --E mostre a nova quantidade de jogadores na partida.

    Players[#Players] = nil

    print("Nova quantidade de jogadores: "..#Players)
--]]
