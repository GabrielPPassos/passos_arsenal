Config = {}

Config["Arsenais"] = {
    {
        ["Permission"] = "policia.arsenal",

        ["Choices"] = {
            {
                ["choiceName"] = "B. Kit Soldados",
                ["Nomenclature"] = "Kit Soldados",
                ["Permission"] = { "arsenal.nivel_um", "arsenal.nivel_dois", "arsenal.nivel_tres", "arsenal.nivel_special" },
                ["submenuExists"] = true,
                ["submenu"] = {
                    { ["displayName"] = "> Pegar Tudo", ["weaponIndex"] = "all", ["ammoAmount"] = 0, ["isVest"] = false },
                    { ["displayName"] = "SMG", ["weaponIndex"] = "WEAPON_SMG", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Glock 18", ["weaponIndex"] = "WEAPON_COMBATPISTOL", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Escopeta", ["weaponIndex"] = "WEAPON_PUMPSHOTGUN", ["ammoAmount"] = 50, ["isVest"] = false },
                    { ["displayName"] = "Colete", ["weaponIndex"] = "colete3", ["ammoAmount"] = 100, ["isVest"] = true },
                },
            },
            {
                ["choiceName"] = "C. Kit Cabos e Sargentos",
                ["Nomenclature"] = "Kit Cabos e Sargentos",
                ["Permission"] = { "arsenal.nivel_dois", "arsenal.nivel_tres", "arsenal.nivel_special" },
                ["submenuExists"] = true,
                ["submenu"] = {
                    { ["displayName"] = "> Pegar Tudo", ["weaponIndex"] = "all", ["ammoAmount"] = 0, ["isVest"] = false },
                    { ["displayName"] = "Parafal", ["weaponIndex"] = "WEAPON_SPECIALCARBINE", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Escopeta MK2", ["weaponIndex"] = "WEAPON_PUMPSHOTGUN_MK2", ["ammoAmount"] = 50, ["isVest"] = false },
                    { ["displayName"] = "FiveSeven", ["weaponIndex"] = "WEAPON_PISTOL_MK2", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "M4A1", ["weaponIndex"] = "WEAPON_CARBINERIFLE", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Glock 18", ["weaponIndex"] = "WEAPON_COMBATPISTOL", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "MPX", ["weaponIndex"] = "WEAPON_COMBATPDW", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Colete", ["weaponIndex"] = "colete3", ["ammoAmount"] = 100, ["isVest"] = true },
                } 
            },
            {
                ["choiceName"] = "D. Kit Tenentes e Comandos",
                ["Nomenclature"] = "Kit Tenentes e Comandos",
                ["Permission"] = { "arsenal.nivel_tres", "arsenal.nivel_special" },
                ["submenuExists"] = true,
                ["submenu"] = {
                    { ["displayName"] = "> Pegar Tudo", ["weaponIndex"] = "all", ["ammoAmount"] = 0, ["isVest"] = false },
                    { ["displayName"] = "Parafal", ["weaponIndex"] = "WEAPON_SPECIALCARBINE", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Escopeta MK2", ["weaponIndex"] = "WEAPON_PUMPSHOTGUN_MK2", ["ammoAmount"] = 50, ["isVest"] = false },
                    { ["displayName"] = "FiveSeven", ["weaponIndex"] = "WEAPON_PISTOL_MK2", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Glock 18", ["weaponIndex"] = "WEAPON_COMBATPISTOL", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "MPX", ["weaponIndex"] = "WEAPON_COMBATPDW", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Colete", ["weaponIndex"] = "colete3", ["ammoAmount"] = 100, ["isVest"] = true },
                    { ["displayName"] = "M4A1", ["weaponIndex"] = "WEAPON_CARBINERIFLE", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Parafal MK2", ["weaponIndex"] = "WEAPON_CARBINERIFLE_MK2", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Pistola AP", ["weaponIndex"] = "WEAPON_APPISTOL", ["ammoAmount"] = 250, ["isVest"] = false },

                } 
            },
            {
                ["choiceName"] = "E. Kit Elite",
                ["Nomenclature"] = "Kit Elite",
                ["Permission"] = { "arsenal.nivel_special" },
                ["submenuExists"] = true,
                ["submenu"] = {
                    { ["displayName"] = "> Pegar Tudo", ["weaponIndex"] = "all", ["ammoAmount"] = 0, ["isVest"] = false },
                    { ["displayName"] = "Parafal", ["weaponIndex"] = "WEAPON_SPECIALCARBINE", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Escopeta MK2", ["weaponIndex"] = "WEAPON_PUMPSHOTGUN_MK2", ["ammoAmount"] = 50, ["isVest"] = false },
                    { ["displayName"] = "FiveSeven", ["weaponIndex"] = "WEAPON_PISTOL_MK2", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Glock 18", ["weaponIndex"] = "WEAPON_COMBATPISTOL", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "MPX", ["weaponIndex"] = "WEAPON_COMBATPDW", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Colete", ["weaponIndex"] = "colete3", ["ammoAmount"] = 100, ["isVest"] = true },
                    { ["displayName"] = "M4A1", ["weaponIndex"] = "WEAPON_CARBINERIFLE", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Mosquete", ["weaponIndex"] = "WEAPON_MUSKET", ["ammoAmount"] = 50, ["isVest"] = false },
                    { ["displayName"] = "Sniper Pesada", ["weaponIndex"] = "WEAPON_HEAVYSNIPER", ["ammoAmount"] = 50, ["isVest"] = false },
                    { ["displayName"] = "Parafal MK2", ["weaponIndex"] = "WEAPON_CARBINERIFLE_MK2", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Pistola AP", ["weaponIndex"] = "WEAPON_APPISTOL", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Rifle Tático", ["weaponIndex"] = "WEAPON_TATICALRIFLE", ["ammoAmount"] = 250, ["isVest"] = false },
                    { ["displayName"] = "Revolver", ["weaponIndex"] = "WEAPON_REVOLVER", ["ammoAmount"] = 75, ["isVest"] = false },
                } 
            },
            {
                ["choiceName"] = "A. Kit Básico",
                ["Nomenclature"] = "Kit Básico",
                ["Permission"] = { "policia.permissao" },
                ["submenuExists"] = true,
                ["submenu"] = {
                    { ["displayName"] = "> Pegar Tudo", ["weaponIndex"] = "all", ["ammoAmount"] = 0, ["isVest"] = false },
                    { ["displayName"] = "Tazer", ["weaponIndex"] = "WEAPON_STUNGUN", ["ammoAmount"] = 0, ["isVest"] = false },
                    { ["displayName"] = "Lanterna", ["weaponIndex"] = "WEAPON_FLASHLIGHT", ["ammoAmount"] = 0, ["isVest"] = false },
                    { ["displayName"] = "Cassetete", ["weaponIndex"] = "WEAPON_NIGHTSTICK", ["ammoAmount"] = 0, ["isVest"] = false },
                    { ["displayName"] = "Faca de Pão", ["weaponIndex"] = "WEAPON_KNIFE", ["ammoAmount"] = 0, ["isVest"] = false },
                    { ["displayName"] = "BZ Gás", ["weaponIndex"] = "WEAPON_BZGAS", ["ammoAmount"] = 10, ["isVest"] = false },
                    { ["displayName"] = "Gás Lacrimogêneo", ["weaponIndex"] = "WEAPON_SMOKEGRENADE", ["ammoAmount"] = 10, ["isVest"] = false },
                    { ["displayName"] = "Paraquedas", ["weaponIndex"] = "GADGET_PARACHUTE", ["ammoAmount"] = 0, ["isVest"] = false },
                } 
            },
            {
                ["choiceName"] = "> Colete Reserva",
                ["Permission"] = { "policia.permissao" },
                ["submenuExists"] = false,
                ["item"] = "colete3",
                ["itemAmount"] = 5,
                ["isVest"] = true
            },
            {
                ["choiceName"] = "> Recarregar Armas",
                ["Permission"] = { "policia.permissao" },
                ["submenuExists"] = false,
                ["item"] = "recharge",
                ["ammoAmount"] = {
                    { ["displayName"] = "Glock 18", ["weaponIndex"] = "WEAPON_COMBATPISTOL", ["ammoAmount"] = 250 },
                    { ["displayName"] = "FiveSeven", ["weaponIndex"] = "WEAPON_PISTOL_MK2", ["ammoAmount"] = 250 },
                    { ["displayName"] = "Pistola AP", ["weaponIndex"] = "WEAPON_APPISTOL", ["ammoAmount"] = 250 },
                    { ["displayName"] = "Revolver", ["weaponIndex"] = "WEAPON_REVOLVER", ["ammoAmount"] = 75 },

                    { ["displayName"] = "SMG", ["weaponIndex"] = "WEAPON_SMG", ["ammoAmount"] = 250 },
                    { ["displayName"] = "MPX", ["weaponIndex"] = "WEAPON_COMBATPDW", ["ammoAmount"] = 250 },

                    { ["displayName"] = "Escopeta", ["weaponIndex"] = "WEAPON_PUMPSHOTGUN", ["ammoAmount"] = 50 },
                    { ["displayName"] = "Escopeta MK2", ["weaponIndex"] = "WEAPON_PUMPSHOTGUN_MK2", ["ammoAmount"] = 50},
                    
                    { ["displayName"] = "M4A1", ["weaponIndex"] = "WEAPON_CARBINERIFLE", ["ammoAmount"] = 250 },
                    { ["displayName"] = "Parafal", ["weaponIndex"] = "WEAPON_SPECIALCARBINE", ["ammoAmount"] = 250 },
                    { ["displayName"] = "Parafal MK2", ["weaponIndex"] = "WEAPON_CARBINERIFLE_MK2", ["ammoAmount"] = 250 }, 
                    { ["displayName"] = "Rifle Tático", ["weaponIndex"] = "WEAPON_TATICALRIFLE", ["ammoAmount"] = 250 },

                    { ["displayName"] = "Mosquete", ["weaponIndex"] = "WEAPON_MUSKET", ["ammoAmount"] = 50 },
                    { ["displayName"] = "Sniper Pesada", ["weaponIndex"] = "WEAPON_HEAVYSNIPER", ["ammoAmount"] = 50 },

                },
                ["isVest"] = false
            },
        },

        ["Locates"] = {
            { -2002.05, -478.37, 12.23 },
            { 452.46, -980.08, 30.69 }
        }
    }
}