# escape=`

FROM mcr.microsoft.com/windows/servercore:ltsc2019
LABEL maintainer="JuliBCN <julibcn@gmail.com>"

RUN powershell -Command " `
 Install-WindowsFeature Web-Server,Web-Asp-Net45,Web-Mgmt-Service -Verbose ; `
 New-ItemProperty -Path HKLM:\software\microsoft\WebManagement\Server -Name EnableRemoteManagement -Value 1 -Force ; `
 Set-Service -Name wmsvc -StartupType Automatic ; `
 New-LocalUser iisadmin -Password ( 'Str0ngP@ssword!' | ConvertTo-SecureString -AsPlainText -Force) ; `
 Add-LocalGroupMember -Group Administrators -Member iisadmin `
"

ENTRYPOINT "ping -t localhost > NULL"