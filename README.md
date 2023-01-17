# EnableQuickShare
## Notice
QuickShare.bat 파일을 시작프로그램 폴더 (C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp)에 저장하여 활성화할 수 있습니다.

해당 경로는 실행 (Windows + R)에 shell:startup을 입력해 접근할 수 있습니다.

QuickShare 설정에서 윈도우 부팅 시 시작을 비활성화해 주세요. 중복실행을 방지합니다.
 
Quickshare 앱이 설치된 경로는 C:\Program Files\WindowsApps 하위에서 확인 가능합니다. 
기본적으로 접근권한이 막혀있고 숨김처리 되어있으니 해제 후 확인해 주세요.

## Troubleshooting
#### 기기는 검색되지만 파일 전송 실패가 뜨는 경우

QuickShare는 BLE (Bluetooth Low Energy)를 활용하여 파일을 송수신합니다.
이 과정에서 Windows와 삼성 스마트폰이 블루투스로 페어링되어 있을 경우 전송 실패가 자주 뜨는 것을 확인했습니다.
QuickShare를 사용하시려면 페어링을 해제해 주세요.
