<#
.SYNOPSIS
    Script for creating an overview of thin clients and who uses them.
.DESCRIPTION
    This script uses Citrix powershell modules to get an overview of all clients currently connected to the citrix
	environment, and creates a list of clients, with citrix version and user connected.
.NOTES
    File Name     : main.ps1
#>

# Import XenApp modules to session

Add-PSSnapIn Citrix.Common.Commands
Add-PSSnapin Citrix.XenApp.Commands
Add-PSSnapIn Citrix.Common.GroupPolicy

# Import settings from settings.xml for later use if the file exists

if (Test-Path .\settings.xml){
[xml]$SettingsFile = Get-Content .\settings.xml
}

# just a test desceription
