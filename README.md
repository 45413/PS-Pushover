PS-Pushover
====================

A PowerShell module to send messages over the [Pushover API]

**Requires**: PowerShell 3.0

Install
-------

Download a copy of this repository and extract to Powershell Module Directory

Setup
-----
You'll need to do the following before making use of the module

### Create a Pushover Application

+ Visit the [new application] page and create an application for yourself
+ Take note of the _API Token/Key_
+ Visit the [Pushover] homepage
+ Take note of your _User Key_

### (Optional) Setting session specific parameters

The function ``Send-PushoverMessage`` (aliased to ``spm``) allows all parameters to be passed in each call.
If you're going to be using the function often, it's easier to set things once.

In your session/script you can do the following:
    
```powershell 
    Import-Module PS-Pushover
    Set-PushoverSession -token <your API Token> -user <your User Key>
```

Other options are also available, call ``Set-PushoverSession -detailed`` for more information

### (Optional) Setting user specific default parameters

If you entend to be import this module in your profile you it is recommend that you utilize the
``PS-Pushover.UserPreferences.ps1`` config file which should be placed in your $PROFILE parent directory. 
Edit the file and modify the settings as desired. These user specific settings will be loaded 
instead of the default shipped in this Module. You can quickly create this file by running the following commands:

```powershell        
    Import-Module PS-Pushover
    new-pspoUserPreferences
    notepad "$(split-path $PROFILE -parent)\PS-Pushover.UserPreferences.ps1"
```        
After modifying this file you must reimport the module or restart your powershell sessions.   

Functions
---------

The full list of functions available are:

+ ``Get-PushoverPriorities`` - Returns a list of valid priorities for use in sending messages
+ ``Get-PushoverSession`` - Returns details of the properties set for the current powershell session
+ ``Get-PushoverSounds`` - Returns a list of valid sounds for use in sending messages
+ ``Send-PushoverMessage`` - Sends a message using the Pushover API
+ ``Set-PushoverSession`` - Sets properties for use throughout the current powershell session
+ ``New-pspoUserPreferences`` - Sets properties for use throughout the current powershell session

Examples
--------


-----

Links
-------
+ [@45413]
+ [@Kieranties]
+ [License]
+ [Pushover]

[@45413]: https://github.com/45413
[@Kieranties]: http://twitter.com/kieranties
[License]: https://raw.githubusercontent.com/45413/PS-Pushover/master/LICENSE.md
[Pushover]: https://pushover.net/
[Pushover API]: https://pushover.net/api
[new application]: https://pushover.net/apps/build