local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
vARSENAL = Tunnel.getInterface("passos_arsenal")

Passos = {}
Proxy.addInterface("passos_arsenal", Passos)
Tunnel.bindInterface("passos_arsenal", Passos)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Funções
-----------------------------------------------------------------------------------------------------------------------------------------
function Notify(a,b,c,d)
	TriggerClientEvent("Notify", a, b, c, d)
end

function Passos.openArsenal(Permission, Choices)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, Permission) then
			local Arsenal = vRP.buildMenu("Passos:Arsenal", { player = source })
			Arsenal.name = "Arsenal"

			Arsenal["> Guardar Tudo"] = {function(source, choices)
				vRPclient.setArmour(source,0)
				vRPclient.replaceWeapons(source, {})
				Notify(source, "sucesso", "Você guardou os seus kits policiais .")
			end}

			for k,v in pairs(Choices) do
				local permissions = v["Permission"]
				for _,permissions in pairs(permissions) do
					if vRP.hasPermission(user_id, permissions) then
						Arsenal[v["choiceName"]] = {function(source, choices)
							if v["submenuExists"] then
								local submenuChoices = v["submenu"]
								local submenu = vRP.buildMenu("Passos:Arsenal:submenu", { player = source})
								submenu.name = v["Nomenclature"]
	
								for _,choicesNew in pairs(submenuChoices) do
									submenu[choicesNew["displayName"]] = {function(source, choices)
										if choicesNew["weaponIndex"] ~= "all" then
											if choicesNew["weaponIndex"] == "colete3" then
												vRPclient.setArmour(source,100)
												Notify(source, "sucesso", "Você pegou um colete!")
											else
												vARSENAL.giveWeapon(source, choicesNew["weaponIndex"], choicesNew["ammoAmount"])
												Notify(source, "sucesso", "Você recebeu uma <b>".. choicesNew["displayName"] .."</b> com <b>".. vRP.format(choicesNew["ammoAmount"]) .."</b> munições.")
											end
										else
											for a,b in pairs(v["submenu"]) do
												if b["weaponIndex"] ~= "all" then
													local displayName = b["displayName"]
													local weapon = b["weaponIndex"]
													local ammo = tonumber(b["ammoAmount"])
													if weapon == "colete3" then
														vRPclient.setArmour(source,100)
														Notify(source, "sucesso", "Você pegou um colete!")
													else
														vARSENAL.giveWeapon(source, weapon, ammo)
														Notify(source, "sucesso", "Você recebeu uma <b>".. displayName .."</b> com <b>".. vRP.format(ammo) .."</b> munições.")
													end
												end
											end
										end
									end}
								end
	
								vRP.openMenu(source, submenu)
							else
								if v["item"] == "colete3" then
									vRPclient.setArmour(source,100)
									vRP.giveInventoryItem(user_id, v["item"], 5)
									Notify(source, "sucesso", "Você pegou o <b>Kit Colete</b>.")
								elseif v["item"] == "recharge" then
									local anythingFind = true
									local playerWeapons = vRPclient.getWeapons(source)
									for weapon,data in pairs(playerWeapons) do
										for _,ammoDefault in pairs(v["ammoAmount"]) do

											if weapon == ammoDefault["weaponIndex"] then
												local minimumAmmo = ammoDefault["ammoAmount"]
												if data.ammo < minimumAmmo then
													data.ammo = ammoDefault["ammoAmount"]
													anythingFind = false
													Notify(source, "info", "Sua <b>".. ammoDefault["displayName"] .."</b> foi recarregada e agora está com <b>".. vRP.format(tonumber(ammoDefault["ammoAmount"])) .."</b> munições.")
												end
											end
										end
									end
									if not anythingFind then
										vRPclient.replaceWeapons(source, playerWeapons)
									else
										Notify(source, "negado", "Não há nada para recarregar.")
									end
								end
							end
						end}
					end
				end
				
			end


			vRP.openMenu(source, Arsenal)
		else
			Notify(source, "negado", "Você não tem permissão pra fazer isso.")
		end
	end
end