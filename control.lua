function initPlayer(player)
  if player.character == nil then return end
	if global == nil then
		global = {}
	end
	if global.donePlayers == nil then
		global.donePlayers = {}
	end
	if global.donePlayers[player.index] ~= nil then return end
	global.donePlayers[player.index] = true
  player.force.technologies["weplay-starting-tech-enhancements"].researched = true

  player.force.character_build_distance_bonus = 100
  player.force.character_reach_distance_bonus = 100
  player.force.character_resource_reach_distance_bonus = 100
end

function onPlayerJoined(event)
	local player = game.players[event.player_index]
	initPlayer(player)
end

script.on_event({defines.events.on_player_joined_game, defines.events.on_player_created}, onPlayerJoined)


-- remote.add_interface("WePlaySEK2BZSimple", {
--   jetpack_fuels = function() return {["plutonium-fuel"] = 1.2} end
-- })
remote.add_interface("WePlaySEK2BZSimple", {
  jetpack_fuels = function() return {["shielded-plutonium-jetpack-fuel"] = 1.2} end
})


-- /c for i=7, 20, 1 do
--   game.player.force.technologies["artillery-shell-range-"..i].researched = true end