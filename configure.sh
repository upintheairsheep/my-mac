#configure.sh VNC_USER_PASSWORD VNC_PASSWORD NGROK_AUTH_TOKEN


#VNC password - http://hints.macworld.com/article.php?story=20071103011608872

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
#install ngrok
choco install ngrok
#configure ngrok and start it
ngrok authtoken $3
ngrok tcp 5900 &
