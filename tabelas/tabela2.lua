--[[ Operações com tabelas ]]

---[[ Funcoes para a pratica ]]
do 

    function mostrarImagem(tab)
        io.write('0000 0100')
        io.write('0000 0100')
        for i = 1, #tab do
            io.write(tab[i])
        end
    end
end

dados = {"teste", 2, false}

---[[ Operações Operador de tamanho #
    print(#dados)
--]]

---[[ inserir um novo valor no final da minha tabela
    dados[4] = 'Novo valor'
    print(#dados)
--]]

---[[ mostrar o primeiro valor
    print(dados[1])
--]]

---[[ mostrar o ultimo valor
    tamanho = #dados -- 4
    print(dados[tamanho])
--]]

---[[ inserir um novo valor ao final da tabela
    dados[#dados+1] = 99
    print(#dados)   
--]]

---[[ remover o ultimo elemento
    -- qual é o valor que está após a última posição?
    -- o ultimo + 1 ou #dados+1
    print(dados[#dados+1])


    -- como remover o ultimo elemento, pego o ultimo e torno ele nil
    print('Ultimo valor: "'..dados[#dados]..'"')
    dados[#dados] = nil
    print('Ultimo valor: "'..dados[#dados]..'"')
--]]

--[[ Prática de manipulação de imagens com tableas de uma dimensão

https://studio.code.org/s/pixelation/lessons/1/levels/1

0000 0100 | Binário = 4 | Decimal

    0000 0100
    0000 0100

    0 0 0 0 
    0 1 1 0 
    0 1 1 0 
    0 0 0 0 

  ---- Representação em 2D ----
      1 2 3 4
    1 0 0 0 0 
    2 0 1 1 0 
    3 0 1 1 0 
    4 0 0 0 0 

    --- Transformacao para tabela de uma dimensão
    -- Pega todas as linhas e vai colocando do lado direito
    -- Ex:   1 3
    --       5 7
    --       Vira -> 1 3 5 7

    -- Código abaixo
--]]


imagem = {0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0 }


--[[ Demonstração 
-- mostrarImagem()
-- Manipule a tabela imagem para 'apagar' o centro da imagem
--]]

imagem[6] = 0
imagem[7] = 0
imagem[10] = 0
imagem[11] = 0

mostrarImagem(imagem)

--[[ Desafio: 
Manipule os pixels para 
desenhar um padrão de xadrez sendo o primeiro pixel branco.

Depois usa a função mostrarImagem(tabela), para gerar o código da imagem.
]]







