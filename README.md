# EnableQuickShare

## Notice
You can enable QuickShare by saving the QuickShare.bat file in the startup folder:
C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp

Access this folder by pressing Windows + R and entering shell:startup.

Disable the “Start on Windows Boot” option in QuickShare settings to prevent duplicate execution.

The installation path of the QuickShare app can be found under C:\Program Files\WindowsApps.
Note that this folder is hidden and requires special permissions to access.

## Troubleshooting
#### Device Detected but File Transfer Fails
QuickShare uses BLE (Bluetooth Low Energy) for file transfer.
We have confirmed that file transfers often fail if Windows and a Samsung smartphone are paired via Bluetooth.

To use QuickShare, unpair the devices from Bluetooth.
