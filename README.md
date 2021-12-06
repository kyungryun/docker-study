# Docker 공부용 repo

## `시작하세요! 도커/쿠버네티스` 를 읽고 정리  
  

### mac 에 설치한 minikube 위에서 테스트 함 (airflow 테스트하면서 깔아둔 환경을 활용)


### docker 명령어

|docker image가 없을 때| |
|----------|------------|
|docker run    | docker pull > docker create > docker start > docker attach (-i -t 옵션을 사용했을 때)  |
|docker create | docker pull > docker create |

보통 컨테이너를 생성함과 동시에 시작하기 때문에 run 명령어를 더 많이 사용 함  

|docker 명령어 | |
|----|----|
|images | 도커 엔진에 존재하는 이미지의 목록 출력|
|ps | 생성된 컨테이너의 목록 확인|
|rename <변경 전 이름> <변경 후 이름>| 컨테이너의 이름 변경|
|rm <컨테이너 이름, ID>| 컨테이너 삭제 |
|rmi <이미지 이름, ID>| 이미지 삭제 |
|exec <컨테이너 아이디> <명령어> | 컨테이너에 명령어 입력

|docker 명령어 옵션| |
|----|----|
| -it | -i(interactive) -t(tty) 옵션을 동시에 사용할 때|
| -d | detached 모드로 컨테이너를 실행, 백그라운드에서 동작하는 애플리케이션으로 실행하도록 설정|
| --name | 컨테이너 생성시 이름 설정|
| -p | 컨테이너의 포트를 호스트의 포트와 바인딩해 연결할 수 있게 설정 함|


