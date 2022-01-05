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
