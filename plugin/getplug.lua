-- create by https://github.com/RoyalTeam 
-- @RoyalTeamCh
local function run(msg, matches)
  if matches[1] == "getplug" then
    local file = matches[2]
    if is_sudo(msg) then
      local receiver = get_receiver(msg)
      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
    end
  end
end

return {
  patterns = {
  "^[!/](getplug) (.*)$",
  "^(getplug) (.*)$"
  },
  run = run
  -- create by https://github.com/RoyalTeam 
-- @RoyalTeamCh
