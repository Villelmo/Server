# WakeMeOnLan v1.93

## Description
This utility allows you to easily turn on one or more computers remotely by sending Wake-on-LAN (WOL) packet to the remote computers.
When your computers are turned on, WakeMeOnLan allows you to scan your network, and collect the MAC addresses of all your computers, and save the computers list into a file. Later, when your computers are turned off or in standby mode, you can use the stored computers list to easily choose the computer you want to turn on, and then turn on all these computers with a single click.
WakeMeOnLan also allows you to turn on a computer from command-line, by specifying the computer name, IP address, or the MAC address of the remote network card.

## System Requirements And Limitations
On some Windows 10/8 systems, the Wake-Up feature doesn't work if the 'Send The Wake-on-LAN Packet To...' option is set to 'Broadcast Address 255.255.255.255'. If you have this problem, you should set this option to 'Broadcast Address According to IP Address'.
On the computer that you run WakeMeOnLan: WakeMeOnLan works on any version of Windows, starting from Windows 2000 and up to Windows 10, including x64 versions of Windows.
On the remote computer: WakeMeOnLan can turn on the remote computer only if this feature is supported and enabled on the remote computer. Be aware that Wake-on-LAN feature only works on wired network. Wireless networks are not supported.
In order to enable the Wake-on-LAN feature on the remote computer:
On some computers, you may need to enable this feature on the BIOS setup.
In the network card properties, you should go to the 'Power Management' and/or 'Advanced' tabs of the network adapter, and turn on the Wake-on-LAN feature.

## Scan Your Network From Command-Line
WakeMeOnLan allows you to scan your network and update the computers list on the .cfg file without displaying any user interface, by using the /scan command-line option:

```WakeMeOnLan.exe /scan ```

You can also specify specific IP addresses range to scan, for example:

```WakeMeOnLan.exe /scan /UseIPAddressesRange 1 /IPAddressFrom 192.168.1.1 /IPAddressTo 192.168.1.254 /UseNetworkAdapter 0```


## More Command-Line Options
````/IPAddressFrom <IP Address>
/IPAddressTo <IP Address>	Specifies the IP adderess range to scan.````
/UseIPAddressesRange <0 | 1>	Specifies whether to scan with specific IP addresses range (Specified in /IPAddressFrom and /IPAddressTo command-line options)
0 = No, 1 = Yes
/UseNetworkAdapter <0 | 1>	Specifies whether to scan the IP addresses range of the specified adapter (/NetworkAdapter)
0 = No, 1 = Yes
/NetworkAdapter <Name>	Specifies the network adapter name when /UseNetworkAdapter is 1
/MacAddressFormat <1 | 2 | 3>	Specifies the MAC address format to display:
1 = XX-XX-XX-XX-XX-XX
2 = XX:XX:XX:XX:XX:XX
3 = XXXXXXXXXXXX
/UseNetBios <0 | 1>	Specifies whether to use NetBIOS scan.
0 = No, 1 = Yes
/cfg <Filename>	Start WakeMeOnLan with the specified configuration file. For example:
WakeMeOnLan.exe /cfg "c:\config\won.cfg"
WakeMeOnLan.exe /cfg "%AppData%\WakeMeOnLan.cfg"
/stext <Filename>	Save the list of computers that you previously scanned into a simple text file.
/stab <Filename>	Save the list of computers that you previously scanned into a tab-delimited text file.
/scomma <Filename>	Save the list of computers that you previously scanned into a comma-delimited text file (csv).
/stabular <Filename>	Save the list of computers that you previously scanned into a tabular text file.
/shtml <Filename>	Save the list of computers that you previously scanned into HTML file (Horizontal).
/sverhtml <Filename>	Save the list of computers that you previously scanned into HTML file (Vertical).
/sxml <Filename>	Save the list of computers that you previously scanned into XML file.
/sort <column>	This command-line option can be used with other save options for sorting by the desired column. If you don't specify this option, the list is sorted according to the last sort that you made from the user interface. The <column> parameter can specify the column index (0 for the first column, 1 for the second column, and so on) or the name of the column, like "Computer Name" and "Workgroup". You can specify the '~' prefix character (e.g: "~MAC Address") if you want to sort in descending order. You can put multiple /sort in the command-line if you want to sort by multiple columns.
Examples:
WakeMeOnLan.exe /shtml "c:\temp\WakeMeOnLan.html" /sort 2 /sort ~1
```
WakeMeOnLan.exe /shtml "c:\temp\WakeMeOnLan.html" /sort "Workgroup" /sort "Computer Name"

/nosort	When you specify this command-line option, the list will be saved without any sorting.
