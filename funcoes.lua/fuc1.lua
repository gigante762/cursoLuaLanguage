--[[ Introdução a Funções ]]
--[[
    São o mecanismo principal de abstração de comandos e expressões em Lua.
    Elas são ultilizadas para reaproveitar pedaços de códigos, realizar uma tarefa específica,
    computar e retornar valores.

    É um assunto bem importante. E são várias as suas utilizações.
]]

---[[

    -- Algumas funções de exemplo
    -- print, tonumber, tostring, type, io.read, getPlayers ...

--]]

--[[ print(type(print))
print(type(type))
print(type(tonumber))
print(type(io.read)) ]]

--[[ Funções que não tem retorno / procedimento ]]

--[[ local result = print('as')
print(result) ]]

--[[ Funções que tem retorno  ]]
--[[ local result = type(7) -- retora uma string
print(result)
 ]]

--[[ Funções com argumentos ]]
--[[ local result = tonumber('0100',2)
print(result) ]]


--[[ Funções sem argumentos ]]
--[[ local tempo = os.clock()
print(tempo) ]]


--[[ Ler a documentação de uma função ]]
-- https://www.lua.org/manual/5.2/pt/manual.html#6.6

--[[ Criando nossa primeira função simples, que escreve 'Minha primeira funcao' ]]


function nome()
    print('Minha primeira funcao')
end

nome()