function love.load()
    love.window.maximize( )
    imagedata = love.image.newImageData("shark.png")
    image = love.graphics.newImage(imagedata)
    width = imagedata:getWidth( )
    height =  imagedata:getHeight( )



    x = 0
    d = true

    for i = 1, width/2 do
        local r, g, b, a = imagedata:getPixel( i, x )
        local gray = (r+g+b)/3
        local outputRed = (r * .3) + (g *.7) + (b * .1)
        local outputGreen = (r * .3) + (g *.6) + (b * .1)
        local outputBlue = (r * .2) + (g *.5) + (b * .1)

        local r2 = r + 0.01
        local g2 = g + 0.01
        local b2 = b + 0.01
        imagedata:setPixel( i, x, r2, g2, b2, a )
        --imagedata:setPixel( i, x, outputRed, outputGreen, outputBlue, a )
        --imagedata:setPixel( i, x, gray, gray, gray, a )
        --imagedata:setPixel( i, x, 255, 0, 0, a )
        --image:replacePixels(imagedata)
    end

    imagedata:encode('png', 'tes1.png')
    
end

function dark()
    for j = 1, 10, 1 do
        for i = 1, width/2 do
            local r, g, b, a = imagedata:getPixel( i, x )
            local gray = (r+g+b)/3
            local outputRed = (r * .3) + (g *.7) + (b * .1)
            local outputGreen = (r * .3) + (g *.6) + (b * .1)
            local outputBlue = (r * .2) + (g *.5) + (b * .1)

            local r2 = r - 0.01
            local g2 = g- 0.01
            local b2 = b- 0.01
            imagedata:setPixel( i, x, r2, g2, b2, a )
            --imagedata:setPixel( i, x, outputRed, outputGreen, outputBlue, a )
            --imagedata:setPixel( i, x, gray, gray, gray, a )
            --imagedata:setPixel( i, x, 255, 0, 0, a )
            --image:replacePixels(imagedata)
        end
    image:replacePixels(imagedata)
    end
end

function brit()
    for j = 1, 10, 1 do
        for i = 1, width/2 do
            local r, g, b, a = imagedata:getPixel( i, x )
            local gray = (r+g+b)/3
            local outputRed = (r * .3) + (g *.7) + (b * .1)
            local outputGreen = (r * .3) + (g *.6) + (b * .1)
            local outputBlue = (r * .2) + (g *.5) + (b * .1)

            local r2 = r + 0.01
            local g2 = g + 0.01
            local b2 = b + 0.01
            imagedata:setPixel( i, x, r2, g2, b2, a )
            --imagedata:setPixel( i, x, outputRed, outputGreen, outputBlue, a )
            --imagedata:setPixel( i, x, gray, gray, gray, a )
            --imagedata:setPixel( i, x, 255, 0, 0, a )
            --image:replacePixels(imagedata)
        end
    image:replacePixels(imagedata)
    end
end

function love.update(dt)
   --[[  --imagedata:setPixel( x, 30, gray, gray, gray, a )
    imagedata:setPixel( x, 30, 255, 0, 0, a )
    image:replacePixels(imagedata) ]]
    x = x + 1
    x = x % height
    if x  == 0 then
        d = not d
    end 

    if d then
        dark()
    else
        brit()
    end

end
function love.draw()
    love.graphics.draw(image)

end

function love.keypressed(key)
    for w = 1, width do
        for h = 1, height do
            local r, g, b, a = imagedata:getPixel( h, w )
            local gray = (r+g+b)/3
            imagedata:setPixel( h, w, gray, gray, gray, a )
            love.graphics.draw(image)
            
        end
    end
end