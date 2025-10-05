Write-Output "Scanning network..."

# Scan network 
C:\Users\William\Downloads\Compressed\wakemeonlan-x64\WakeMeOnLan.exe /scan /UseIPAddressesRange 1 /IPAddressFrom 192.168.0.1 /IPAddressTo 192.168.0.230 /stext scan.txt

Write-Output "Wake up server...."
# Turn on the server
C:\Users\William\Downloads\Compressed\wakemeonlan-x64\WakeMeOnLan.exe /wakeup 192.168.0.119

# Window 10, Windows incompatible with command MSG
#msg DESTKOP-WORK /SERVER:SVRTARSKO "The server ON"

