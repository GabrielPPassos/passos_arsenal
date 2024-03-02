-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vARSENAL = Tunnel.getInterface("passos_arsenal")

Passos = {}
Tunnel.bindInterface("passos_arsenal", Passos)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Funções
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3Ds(x, y, z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local factor = #text / 370
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	DrawRect(_x,_y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 120)
end

function Passos.giveWeapon(weapon, ammo)  
	GiveWeaponToPed(PlayerPedId(),GetHashKey(weapon),ammo,0,1)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- Threads
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    local timer = 5
	while true do
		timer = 3000
        local ped = PlayerPedId()
        for k,v in pairs(Config["Arsenais"]) do
            local Locates = v["Locates"]
            for l,w in pairs(Locates) do
                local x,y,z = table.unpack(w)
                local pCoords = GetEntityCoords(ped)
                local distance = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, x, y, z, true)
                local alpha = math.floor(255 - (distance * 30))
                if distance <= 10.0 then
                    timer = 5
                    DrawMarker(21, x, y, z-0.4,0,0,0,0,180.0,130.0,0.3,0.3,0.3,255,255,255,50,1,0,0,1)
                    if distance < 2.0 then
                        DrawText3Ds(x, y, z, "~y~[E] | ~w~Arsenal Policial")
                        if (IsControlJustReleased(1, 38)) then
                            vARSENAL.openArsenal(v["Permission"], v["Choices"])
                        end
                    end
                end
            end
        end
        Citizen.Wait(timer)
    end
end)
