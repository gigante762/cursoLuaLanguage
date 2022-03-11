--[[ For numérico e escopo de variável

for variavel = incial, final, incremento do

end

]]

---[[
--[[ local c = 0

for i = 1,10 do
    print(i)
    c = i
end

-- verificar a visibilidade de i
print(i)
print(c) ]]


-- trocar por c global e refazer o teste

-- parar um for com break

--]]


---[[ Procurando valores em uma lista

    -- encontre o numero 4
    local numeros = {1,5,3,7,8,6,9,4,10,25,61,37,26}


    for i = 1,#numeros do
        if numeros[i] == 4 then
            print("valor encontrado")
            break
        end
        print("Valor: "..numeros[i])
    end


    -- sair de um for

--]]


