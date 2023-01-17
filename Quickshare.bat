:: 이 파일은 bat 확장자로 시작프로그램 (C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp) 폴더 안에 추가합니다.
:: 해당 경로는 실행 (Windows + R)에 shell:startup을 입력해 접근할 수 있습니다.

:: QuickShare 설정에서 윈도우 부팅 시 시작을 비활성화해 주세요. 중복실행을 방지합니다.


::관리자 권한으로 Background에서 Terminal 실행

if not exist %temp%\bgbatch.vbs (
  (echo Set objShell ^= CreateObject("Shell.Application"^)
  echo objShell.ShellExecute "%~f0", "/c lodctr.exe /r" , "", "runas", 0) > %temp%\bgbatch.vbs
  start %temp%\bgbatch.vbs
  exit
)
del /q %temp%\bgbatch.vbs

:: Registry 변조 (재부팅 시 리셋됨)
reg add "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v SystemProductName /t REG_SZ /d "NP950QDB-KA1US" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_1002&DEV_6798&SUBSYS_30001002&REV_00\4&f1d09f1&0&0010" /v HardwareID /t REG_MULTI_SZ /d "PCI\VEN_1002&DEV_6798&SUBSYS_30001002&REV_00\0PCI\VEN_1002&DEV_6798&SUBSYS_30001002\0PCI\VEN_1002&DEV_6798&CC_030000\0PCI\VEN_1002&DEV_6798&CC_0300" /f
regedit /s "(new-object System.Net.WebClient).DownloadFile('https://github.com/obrobrio2000/Samsung-Quick-Share-4-All/releases/download/v0.1.1/DriverCheckBypass.reg','DriverCheckBypass.reg'); rm DriverCheckBypass.reg -r -f"

:: QuickShare 프로그램을 시작합니다. Quickshare 버전이 다른 경우 해당하는 버전으로 폴더명을 교체해주세요. (C:\Program Files\WindowsApps 하위에서 확인 가능, 기본 숨김처리)
start /d "C:\Program Files\WindowsApps\SAMSUNGELECTRONICSCoLtd.SamsungQuickShare_1.2.74.0_x64__wyx1vj98g3asy" /b QuickShare.exe

exit
