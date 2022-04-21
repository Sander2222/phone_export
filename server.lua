local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterServerCallback('phone_export:canUse', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('phone')
	
	print(xItem)
	if xItem.count >= 1 then
		cb(true)
		print('This user is not an idiot and has bought a phone')
	else
		cb(false)
		print('This user is an idiot and has not purchased a phone')
	end
end)
