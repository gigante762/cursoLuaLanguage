function love.load()
    love.window.maximize( )
    --pega a imagem
    imagedata = love.image.newImageData("palografico.jpeg")
    imgbkp =  imagedata:clone()
    image = love.graphics.newImage(imagedata) 
end

function love.draw()
    love.graphics.draw(image)
end

function love.keypressed(key)
    if key == "g" then
        imagedata:mapPixel(function(x, y,r, g, b, a)
            local gray = (r+g+b)/3
            return gray,gray,gray,a
        end)
    elseif key == "q" then
        imagedata:mapPixel(function(x, y,r, g, b, a)
            local r2 = r - 0.1
            local g2 = g - 0.1
            local b2 = b - 0.1
            return r2,g2,b2,a
        end)
    elseif key == "v" then
        imagedata:mapPixel(function(x, y, r, g, b, a)
            local gray = (r+g+b)/3
            --127.7
            if (gray < 20 ) then
                return 255,0,0,a
            end
            return r,g,b,a
        end)
    elseif key == "r" then
        imagedata = imgbkp:clone()
    elseif key == "s" then
        imagedata:mapPixel(function(x, y,r, g, b, a)

            local r2 = (r * .393) + (g *.769) + (b * .189)
            local g2 = (r * .349) + (g *.686) + (b * .168)
            local b2 = (r * .272) + (g *.534) + (b * .131)
           
            return r2,g2,b2,a
        end)
    end
   
    image:replacePixels(imagedata)
end