function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
end


function update (elapsed) -- example https://twitter.com/KadeDeveloper/status/1382178179184422918
	local currentBeat = (songPos / 1000)*(bpm/165)
	for i=0,17 do
		setActorX(_G['defaultStrum'..i..'X'] + 35 * math.sin((currentBeat + i*3.18) * math.pi), i)
		setActorY(_G['defaultStrum'..i..'Y'] + 50 * math.cos((currentBeat + i*3.52) * math.pi), i)
	end
end

function playerTwoTurn()
    tweenCameraZoom(1.3,(crochet * 1) / 1000)
end

function playerOneTurn()
    tweenCameraZoom(1,(crochet * 60) / 1000)
end