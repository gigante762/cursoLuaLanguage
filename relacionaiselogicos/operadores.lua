--[[ 
    OPERADORES
    +     -     *     /     % módulo     ^     #
    ==    ~=    <=    >=    <     >     =
 ]]

--[[ Operadores aritméticos  +     -     *     /     %     ^
    -- 1+2 , 3*3 ...

    -- precedência de Operadores
    print(3-3*3)
    print(3*(3 - 3))

    -- isso você vê o básico na escola, e sim é igual.
    -- na dúvida usa () para forçar a precedência.
    --[=[
    3.4.7 – Precedência
    A precedência dos operadores em Lua segue a tabela a seguir,
    da menor prioridade para a maior:
     or
     and
     <     >     <=    >=    ~=    ==
     ..
     +     -
     *     /     %
     not   #     - (unário)
     ^
     ]=]

--]]

--[[ Operadores relacionais  ==    ~=    <=    >=    <     >]]

--[[ Operadores relacionais

print(3 == 3)
print('a' == 'b')

print('a' ~= 'c')
print(5 ~= 2)

print(3 > 7)
print(3 < 7)

print(7 >= 7)
print(2 <= 7)

--]]

--[[ Operadores lógicos  and or not ]]

--[[ OPERADOR LÓGICO NOT
    
    print(false)
    print(not false)
    
    print(true)
    print(not true)

    print(3)
    print(not 3)
    print(not not 3)

    print(nil)
    print(not nil)

    print(not not false)
    print(not not nil)
    print(not not 3)

    -- Não se prendam a esses detalhes, somente estou demonstrando porque vejo
    -- que devo fazer isso.
    -- Peguem de início que o not é negação, não true = false, não false = true

--]]

--[[ OPERADORES LÓGICOS and(e) or(ou)
   
    --------------------
    tenhoDinheiro  = true
    estaChovendo = false 

    vouNaRua = tenhoDinheiro and not estaChovendo
    print(vouNaRua)


    --------------------
    tenhoDinheiro  = true
    estaChovendo = false

    taTudoRuim = not tenhoDinheiro and estaChovendo
    print(taTudoRuim)

    --------------------
    tenhoDinheiro  = true
    estaChovendo = false

    temAlgoRuim = not tenhoDinheiro or estaChovendo
    print(temAlgoRuim)


    --------------------
    tenhoDinheiro  = false
    estaChovendo = false

    vouNaRua = tenhoDinheiro or not estaChovendo
    print(vouNaRua)

    -- é geralmente nessa parte de operadores relacionais que muitos se 
    -- enrolam, as condições e regras moram na grande parte ali.

--]]

-- veremos a aplicação desse assunto nas próximas aulas quando
-- falarmos de desvios condicionais, repetições.

