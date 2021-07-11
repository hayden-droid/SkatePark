local RedeemCode = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CodeService.Redeem
local RenderStepped = game:GetService("RunService").RenderStepped
local Codes = {'8k', '7k','milo','retromada','race','razor','starsub','flamingo', '100k','sorry','update','newpark','vacation','skateboarding','tistheseason'}


function Redeem()
    for i=1,#Codes do 
    RenderStepped:Connect(function()
        wait()
        RedeemCode:InvokeServer(Codes[i])
    end)
end
end

RenderStepped:Connect(function()
    Redeem()
end)
