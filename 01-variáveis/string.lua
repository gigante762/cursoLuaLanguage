--[[

    Variáveis do tipo string guardam textos
    Pode ser uma unica letra, uma palavra, um frase, ou um livro inteiro...

    Podemos usar aspas simples ou duplas para delimitar uma string

 ]]

-- Exemplo:
letra = 'a'
letraMaiuscula = "R"
print(letra)
print(letraMaiuscula)

frase = 'ola a todos do canal, aqui voces vao aprender lua de verdade!'
print(frase)

texto = "Lua é uma linguagem de programação de extensão projetada para dar suporte à programação procedimental em geral com facilidades para a descrição de dados. Ela também oferece um bom suporte para programação orientada a objetos, programação funcional, e programação orientada a dados. Lua é planejada para ser usada como uma linguagem de script poderosa, leve, e embarcável por qualquer programa que necessite de uma. Lua é implementada como uma biblioteca, escrita em C puro, o subconjunto comum de C Padrão e C++."
print(texto)

textoGrande = [[
    Lua é uma linguagem de programação de extensão projetada
    para dar suporte à programação procedimental em geral com facilidades para a descrição de dados.
    Ela também oferece um bom suporte para programação orientada a objetos, programação funcional,
    e programação orientada a dados. Lua é planejada para ser usada como uma linguagem de script poderosa,
    leve, e embarcável por qualquer programa que necessite de uma. 
    Lua é implementada como uma biblioteca, escrita em C puro, o subconjunto comum de C Padrão e C++.
]]
print(textoGrande)


-- falar do 'erro' vscode, sublinhado de azul

--[[ Imaginem a seguinte situação
    

    10 + 2            => 12
    'Banana' + 'pera' => 'Salada' ? '????'
    "Bom" + "dia"     => "Bom dia" ??

    Definicação dos Operadores

    3 + 4 => 7
    3 + 'kl' => ???


 ]]



-- Como 'juntar' duas string, formalmente chamamos de "concatenar"
-- Juntar '20' e 'reais', usando o operador de concatenação '..'

print(20 ..'reais') -- Atenção 20..'reais' => '20..' erro, "20 .. " ok, note o espaço.



--[[ Faça um programa que leia um nome e escreva:
    Oi(a), 'nome'! 

    EX: Oi, Jorge!
        Oi, Pedro!
        Oi, ana!
]]

-- Para lermos um valor usamos a função read (que está dentro da biblioteca io),
-- assim como a função print, e type. As funções são chamadas como <indentificador>(<argumentos>)

print('Digite um nome: ')
nome = io.read()
print("Oi, ".. nome .."!")

--[[ Transformar de string para number, ou de number para string ]]

dinheiro = io.read() -- '100' , 20 => '20'
dinheiroNumerico = tonumber(dinheiro)
print(type(dinheiroNumerico))


numeroQueViraTexto = 67
--numeroQueViraTexto= tostring(numeroQueViraTexto)
print(type(numeroQueViraTexto))

print(type(  tonumber('10kisd')  ))


--[[ Como pegar a quantidade de caracteres de uma string ]]

texto = 'abcd'
print(#texto)



---[[ Sequências de escape '\'

print('\ttexto comum') -- tabulação \t
print('texto \\ comum') -- barra invertida \\

print('texto \' comum') -- aspas duplas \'
print("texto ' comum") -- aspas duplas \'

print("texto \" comum") -- aspas simples \"
print('texto " comum') -- aspas simples \"

print('textocomum')
print('texto\ncomum') -- quebra de linha \n

--]]



--[[ 
    Faça um programa que leia a idade, o nome e saldo de uma pessoa
    e escreva como o exemplo abaixo:

    -----------
    Nome: 'Ana Julia'
        Idade: 15 anos. Daqui a 3 anos terá: 18 anos.
        Saldo: 140 reais
    -----------
    

    Restrições usando como delimitador de string aspas simples
    e escrevendo tudo um uma única linha
        Ex: 'bla bla bla \\ bla bla bla: bla bla :bla 22 blabla'..'231'..'asdasd'

]]
