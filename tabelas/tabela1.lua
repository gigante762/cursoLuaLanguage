--[[ Tabelas

    O coração de Lua são as tabelas.

    As tabelas, em Lua, não são valores nem variáveis: elas são objetos.
    Nosso programa manipula as referências desses objetos.

    Imagine uma 'lista de valores', array associativo
    que podem ser indexadas por número, strings, ou qualquer valor ~= nil

]]


-- Expressão contrutora = {}

tabela = {} -- agora eu tenho uma tabela
print(tabela)
print(type(tabela))

numeros = {2, 3, 5, 7, 9} -- tabela com numeros

palavras = {"Ana", "papel", "escada", "Lua"} -- tabelas com strings

--[[ Tabela heterogênia, com valores de tipos diferentes ]]
misto = {7,'Escada',true, {5,'palavras'}, print, false }


--[[ Acessando valores das tabelas

    -- o primeiro índice de uma tabela é o [1]
    -- índices inteiros
    print( misto[4][2] )

-- ]]

--[[ Modificando valores

    numeros[3]  = 80 -- 5
    print(numeros[3])

    palavras[1] = 'Computacao' -- Ana
    print(palavras[1])

--]]

---[[ Criacao de tabela e manipulacao de dados

    --Crie uma tabela e guarde o nome da pessoa e o saldo dela.

    pessoa = {}

    pessoa[1] = "Pedro"
    pessoa[2] = 30

    -- pessoa = {"Pedro", 30}

    print('Nome: '..pessoa[1])
    print('Saldo: '..pessoa[2])

    -- Em Lua as tabelas podem ser indexadas por strings

    pessoa2 = {nome = "Fernanda", saldo = 30}

    pessoa2["nome"] = "Fernanda"
    pessoa2["saldo"] = 30
    
    -- ou 

    pessoa2.nome = "Fernanda"
    pessoa2.saldo = 30

    print('Nome: '..pessoa2.nome)
    print('Saldo: '..pessoa2.saldo)
--]]










