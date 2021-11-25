---------------------------------------------------ATARI PONG 2020.1 REMASTERED---------------------------------------------------------------------------
--by Gabriel B. Duek---------------------------------------------------------------------------------------------------------
--Load Settings : 1280x720 msaa 16x-----------------------------------------------------------------------------------------------------------------------
function love.load()
  --window
  love.window.setTitle("Atari Pong")
  love.window.setMode(1280, 720, {msaa = 16})
  love.graphics.setBackgroundColor(0.0, 0.0, 0.0)
  --objects
  atari_classic = love.graphics.newFont("AtariClassicChunky-PxXP.ttf", 70)
  paddle_left = love.graphics.newImage("paddle_left.png")
  paddle_right = love.graphics.newImage("paddle_right.png")
  ball = love.graphics.newImage("ball.png")
end 
--Board lines
function divide_mesa()
  love.graphics.rectangle('fill', 632.5, 0, 15, 30)
  love.graphics.rectangle('fill', 632.5, 60, 15, 30)
  love.graphics.rectangle('fill', 632.5, 120, 15, 30)
  love.graphics.rectangle('fill', 632.5, 180, 15, 30)
  love.graphics.rectangle('fill', 632.5, 240, 15, 30)
  love.graphics.rectangle('fill', 632.5, 300, 15, 30)
  love.graphics.rectangle('fill', 632.5, 360, 15, 30)
  love.graphics.rectangle('fill', 632.5, 420, 15, 30)
  love.graphics.rectangle('fill', 632.5, 480, 15, 30)
  love.graphics.rectangle('fill', 632.5, 540, 15, 30)
  love.graphics.rectangle('fill', 632.5, 600, 15, 30)
  love.graphics.rectangle('fill', 632.5, 660, 15, 30)
  love.graphics.rectangle('fill', 632.5, 720, 15, 30)
  love.graphics.rectangle('fill', 632.5, 750, 15, 30)
end
--Score
function desenha_placares()
  love.graphics.setFont(atari_classic)
  love.graphics.setColor(0.5, 0.5, 0.5)
  love.graphics.print("0", 420, 50)
  love.graphics.print("0", 780,50)
end
--Paddles
function desenha_raquetes()
  local paddle_size_left = 150
  local paddle_size_right = 150
  local paddle_height_left = 285
  local paddle_height_right = 285
  love.graphics.setColor(0.5, 0.5, 0.5)
  love.graphics.draw(paddle_left, 50, 360-149/2)
  love.graphics.draw(paddle_right, 1192, 360-149/2)
end
--Ball 
function desenha_bola()
  love.graphics.draw(ball, 629, 318)
end
--Draw
function love.draw()
  desenha_placares()
  divide_mesa()
  desenha_bola() 
  desenha_raquetes()
end
