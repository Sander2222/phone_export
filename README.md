# phone_export
 This is an export for the NPWD Phone for ESX to use it as an item

## Configuration

- Config.json
in the config from [NPWD Phone](https://github.com/project-error/npwd/blob/master/config.json) in the lines 1-6 it must look like this to user this Script:

```json
{
  "PhoneAsItem": {
    "enabled": true,
    "exportResource": "phone_export",
    "exportFunction": "canUsePhone"
  },
  ```
- SQL
After this you must excute the SQL in your database to have the item, you must pick your right ESX verion for this:

This is for ESX Version 1.2:

```sql
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('phone', 'Phone', 1, 0, 1);
```

and this is for ESX Version 1.1:

```sql
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES ('phone', 'Phone', 1, 0, 1);
```

Note: If you already have this item in your database you dont have to add this SQL

- ESX Verion change

If you have ESX Version 1.2 you dont have to change anything, but if you have 1.1 you must change the following line the `weiht`to `limit` :
   [server.lua](https://github.com/Sander2222/phone_export/blob/main/server.lua#L9)

- Notify

and finally you can change the ESX Notify [showAdvancedNotification](https://github.com/Sander2222/phone_export/blob/main/client.lua#L11) for your self. You can find the syntax of it here [Syntax](https://esx-framework.github.io/es_extended/client/functions/showadvancednotification/)

- Note

This Script is only tested on ESX 1.2 and have fun with it, if you use ESX_legacy then use this Version [ESX_legacy](https://github.com/PrivateGiles/phone_export)
