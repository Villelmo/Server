Write-Output "Scanning network..."

# Scan network 
C:\Users\William\Downloads\Compressed\wakemeonlan-x64\WakeMeOnLan.exe /scan 

Write-Output "Wake up server..."
# Turn on the server
C:\Users\William\Downloads\Compressed\wakemeonlan-x64\WakeMeOnLan.exe /wakeup 192.168.1.4 

# Outputs to the console 
Write-Host "This is a log message." | Out-File -FilePath "C:\Logs\HostOutput.log" -Append

# Window 10, Windows incompatible with command MSG
#msg DESTKOP-WORK /SERVER:SVRTARSKO "The server ON"

