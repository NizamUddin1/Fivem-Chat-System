nufrw = 0
--NUFRW ( Version 1.0.0.0 )
RegisterNetEvent("nufrw:me")
AddEventHandler("nufrw:me", function(text, source, icon)
    local playerId = GetPlayerFromServerId(source)
    local isDisplaying = true
    nufrw = nufrw + 1
    icon = 'comment-dots'
    Citizen.CreateThread(function()
        while isDisplaying do
            Citizen.Wait(0)
            local htmlString = ""
            local sourceCoords = GetEntityCoords(GetPlayerPed(playerId))
            local nearCoords = GetEntityCoords(PlayerPedId())
            local distance = Vdist2(sourceCoords, nearCoords)
            if distance < 25.0 then
                local onScreen, xxx, yyy =
                    GetHudScreenPositionFromWorldPosition(
                        sourceCoords.x + Config.CoordsX,
                        sourceCoords.y + Config.CoordsY,
                        sourceCoords.z + Config.CoordsZ)
                htmlString =
                    htmlString ..
                    '<span style="position: absolute; left: ' ..
                    xxx * 100 ..
                    "%;top: " .. yyy * 100 .. '%;"><div class="me-container"><div class="icon-container"><span style="color:#cb73e6;"><i class="fas fa-'..icon..' fa-lg  "></i></span></div><div class="text-container"><b>ME: </b>' .. text .. "</div></div></span>"
            end
            if lasthtmlString ~= htmlString then
                        SendNUIMessage({
                            toggle = true,
                            html = htmlString
                        })
                        lasthtmlString = htmlString
            end
        end
        if isDisplaying == false then
            SendNUIMessage({toggle = false})
        end
    end)
    Citizen.CreateThread(function()
        Citizen.Wait(Config.Duration)
        nufrw = nufrw -1
        isDisplaying = false
        SendNUIMessage({toggle = false})
    end)
end)


RegisterNetEvent("nufrw:do")
AddEventHandler("nufrw:do", function(text, source, icon)
    local playerId = GetPlayerFromServerId(source)
    local isDisplaying = true
    nufrw = nufrw + 1
    icon = 'user'
    Citizen.CreateThread(function()
        while isDisplaying do
            Citizen.Wait(0)
            local htmlString = ""
            local sourceCoords = GetEntityCoords(GetPlayerPed(playerId))
            local nearCoords = GetEntityCoords(PlayerPedId())
            local distance = Vdist2(sourceCoords, nearCoords)
            if distance < 25.0 then
                local onScreen, xxx, yyy =
                    GetHudScreenPositionFromWorldPosition(
                        sourceCoords.x + Config.CoordsX,
                        sourceCoords.y + Config.CoordsY,
                        sourceCoords.z + Config.CoordsZ)
                htmlString =
                    htmlString ..
                    '<span style="position: absolute; left: ' ..
                    xxx * 100 ..
                    "%;top: " .. yyy * 100 .. '%;"><div class="do-container"><div class="icon-container"><span style="color: #4d66f1;"><i class="fas fa-'..icon..' fa-lg  "></i></span></div><div class="text-container"><b>Welcome to Bangla : Im Mr Imran - Owner Of Bangla City</b>' .. text .. "</div></div></span>"
            end
            if lasthtmlString ~= htmlString then

                        SendNUIMessage({
                            toggle = true,
                            html = htmlString
                        })
                        lasthtmlString = htmlString
            end
        end
        if isDisplaying == false then
            SendNUIMessage({toggle = false})
        end
    end)
    Citizen.CreateThread(function()
        Citizen.Wait(Config.Duration)
        nufrw = nufrw -1
        isDisplaying = false
        SendNUIMessage({toggle = false})
    end)
end)

RegisterNetEvent("nufrw:med")
    AddEventHandler("nufrw:med", function(text, source, icon)
        local playerId = GetPlayerFromServerId(source)
        local isDisplaying = true
        nufrw = nufrw + 1
        icon = 'hand-holding-medical'
        Citizen.CreateThread(function()
            while isDisplaying do
                Citizen.Wait(0)
                local htmlString = ""
                local sourceCoords = GetEntityCoords(GetPlayerPed(playerId))
                local nearCoords = GetEntityCoords(PlayerPedId())
                local distance = Vdist2(sourceCoords, nearCoords)
                if distance < 25.0 then
                    local onScreen, xxx, yyy =
                        GetHudScreenPositionFromWorldPosition(
                            sourceCoords.x + Config.CoordsX,
                            sourceCoords.y + Config.CoordsY,
                            sourceCoords.z + Config.CoordsZ)
                    htmlString =
                        htmlString ..
                        '<span style="position: absolute; left: ' ..
                        xxx * 100 ..
                        "%;top: " .. yyy * 100 .. '%;"><div class="med-container"><div class="icon-container"><span style="color:#c03737;"><i class="fas fa-'..icon..' fa-lg  "></i></span></div><div class="text-container"><b>MED: </b>' .. text .. "</div></div></span>"
                end
                if lasthtmlString ~= htmlString then
                            SendNUIMessage({
                                toggle = true,
                                html = htmlString
                            })
                            lasthtmlString = htmlString
                end
            end
            if isDisplaying == false then
                SendNUIMessage({toggle = false})
            end
        end)
        Citizen.CreateThread(function()
            Citizen.Wait(Config.Duration)
            nufrw = nufrw -1
            isDisplaying = false
            SendNUIMessage({toggle = false})
        end)
    end)