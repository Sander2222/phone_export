local ESX = exports['es_extended']:getSharedObject()

exports('canUsePhone', function()
  local p = promise.new()

  ESX.TriggerServerCallback('phone_export:canUse', function(canPickUp)

        p:resolve(canPickUp)

        if not canPickUp then
          TriggerEvent('esx:showAdvancedNotification', 'Phone', 'System', 'You dont have a phone', 'CHAR_DETONATEPHONE', 1)
        end
  end)
  return Citizen.Await(p)
end)