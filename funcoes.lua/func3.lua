--[[ Função anônima e eventos]]

--[[ Parte que você não tem controle ]]
do 
    --map para receber eventos
    map = { }

    eventoNumeroSorteado = function()
        print("Evento Numero Sorteado Disparado")
        
        local n = math.random(1,10)
        if map['numeroSorteado'] then
            map['numeroSorteado'](n)
        end
    end

    eventoNovoJogadorConectado = function(nome)
        print("Evento Jogador Conectado Disparado")
        if map['novoJogadorConectado'] then
            map['novoJogadorConectado'](nome)
        end
    end

    escutarEvento = function (event, callback)
        map[event] = callback
    end

end



--[[ Parte que você tem controle ]]
-- pegar o evento e pegar o dado recebido com uma função

--[[ Eventos disponíveis, use escutarEvento(evento, callback)
    numeroSorteado
    novoJogadorConectado
]]

function tratar(n)
    print('\t estou ouvindo 3', n)
end

escutarEvento('numeroSorteado', tratar)
escutarEvento('novoJogadorConectado', function(j)
    print("Jogar "..j..' entrou na partida.')
end)



















--[[ Parte que você não tem controle ]]
eventoNovoJogadorConectado('Ana')
eventoNumeroSorteado()
eventoNumeroSorteado()
eventoNovoJogadorConectado('Pedro')
eventoNovoJogadorConectado('Jorge')
eventoNovoJogadorConectado('Lucas')
eventoNumeroSorteado()
eventoNovoJogadorConectado('Julia')