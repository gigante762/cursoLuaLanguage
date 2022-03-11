--[[ For genérico ]]

local numeros = {1,5,3,7,8,6,9,4,10,25,61,37,26}

--[[ ipairs()

-- indice e valor, só lembrar do ipairs
for i,v in ipairs(numeros) do
    print(i,v)
end

--]]


--[[ pairs()

-- traz a chaves
for i,v in pairs(numeros) do
    print(i,v)
end

--]]

local dias = {"Segunda", "Terca", "Quarta", "Quinta",
"Sexta", "Sabado", "Domingo"}

--[[ for i, v in ipairs(dias) do
    print(i,v)
end ]]






local ordDias = {
    ["Domingo"] = 1, ["Segunda"] = 2, ["Terca"] = 3, ["Quarta"] = 4,
    ["Quinta"] = 5, ["Sexta"] = 6, ["Sabado"] = 7,"Segunda", "Terca", "Quarta", "Quinta",
    "Sexta", "Sabado", "Domingo"
    
}

for k, v in pairs(ordDias) do
    print(k,v)
end