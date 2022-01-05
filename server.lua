local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterServerCallback('phone_export:canUse', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('phone')


	print(xItem)
	if xItem.weight > -1 and xItem.count >= xItem.weight   then
		cb(true)
		print('Test')
	else
		cb(false)
	end
end)