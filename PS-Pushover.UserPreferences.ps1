<# 
# ---------------------------------------------------------------------------
# You can override individual preferences by passing a hashtable with just those
# preference defined as shown below:
#
#     Import-Module PS-Pushover -arg @{ token = "APPLICATION TOKEN"}
#
# Any value not specified will be retrieved from the default preferences located
# in the PS-Pushover.UserPreferences.ps1 in your modules directory.
#
# If you have a sufficiently large number of altered preferences, copy this file
# to $PROFILE directory, modify it they will be loaded during Import-Module e.g.:
#
#     Import-Module PS-Pushover
#
# ---------------------------------------------------------------------------
#>
@{
        <#
        # Pushover.com API Token Key
        #>
        token = $null
        <#
        # Pushover.com API Token Key
        #>
        user = $null
        <#
        # Pushover.com device name. Can be provide a comma seperate list
        #   eg. device = "iPhone,andriod,desktop"
        #>
        device = $null
        
        <#
        # Default messasge Title. Can be overwritten during Send-PushoverMessage
        #>
        title = "$env:COMPUTERNAME"
        
        <#
        # Available Notification Sounds:
        #     pushover,bike,bugle,cashregister,classical, cosmic, falling, gamelan,incoming,
        #     intermission, magic, mechanical,pianobar, siren, spacealarm, tugboat,
        #     alien, climb, persistent, echo, updown,none
        #>
        sound = "pushover"
        
        <#
        # URL to send with each message.
        #   e.g. url = "http:\\example.com"
        #   
        #   or show default web interface for server
        #   e.g. url = "https:\\$env:computername.$env:userdnsdomain\"
        #>
        url = $null
        
        <#
        # Text to display for URL link
        #>
        url_title = $null
        
        <#
        # Notification Priority Level:
        #     Quiet = -1
        #     Normal = 0
        #     Emergency = 1
        #     Confirmation = 2 
        #>
        priority = "Normal"
 
        <#
        # * Required for Emergency Priority *
        # specifies how often (in seconds) the Pushover servers 
        # will send the same notification to the user.
        #>
        retry = 30
 
        <#
        # * Required for Emergency Priority *
        # specifies how many seconds your notification will continue to be retried 
        # for (every retry seconds). If the notification has not been acknowledged 
        # in expire seconds, it will be marked as expired and will stop being sent
        # to the user. Note that the notification is still shown to the user after
        # it is expired, but it will not prompt the user for acknowledgement. 
        #
        # Max = 86400
        #>
        expire = 3600 
}