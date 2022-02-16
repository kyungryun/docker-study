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
|exec <컨테이너 아이디> <명령어> | 컨테이너에 명령어 입력(ex. docker exec -it -u 0 <컨테이너 아이디> /bin/bash) |

|docker 명령어 옵션| |
|----|----|
| -it | -i(interactive) -t(tty) 옵션을 동시에 사용할 때|
| -d | detached 모드로 컨테이너를 실행, 백그라운드에서 동작하는 애플리케이션으로 실행하도록 설정|
| --name | 컨테이너 생성시 이름 설정|
| -p | 컨테이너의 포트를 호스트의 포트와 바인딩해 연결할 수 있게 설정 함|
| -u 0 | 컨테이너 접속 유저를 설정해서 접속 가능 0은 루트 여기서 0 은 UID임 |


### Dockerfile
완성된 도커 이미지를 생성하기 위해 컨테이너에 설치해야 하는 패키지, 추가해야 하는 소스코드 실행해야 하는 명령어와 셸 스크립트 등을 하나의 파일에 기록하면 도커가 해당 파일 내용대로 이미지를 만들어 줌

|Dockerfile 명령어 | |
|-----|-----|
|FROM| 베이스 이미지 설정 |
|RUN | 컨테이너 내부 명령어 실행 ex)`apt-get update` |
|ADD | 파일을 이미지에 추가 외부URL 및 tar 파일에서도 파일을 추가할 수 있음 |
|COPY | 로컬 디렉토리에서 이미지에 파일을 복사하는 역할을 함, ADD와 동일하게 사용 가능 </br> ADD와 달리 로컬의 파일만 이미지에 추가할 수 있음|
|WORKDIR| 명령어를 실행할 디렉토리를 나타냄 </br> ex)`WORKDIR /var/www/html 이후 RUN touch test 명령 입력시 /var/www/html/test touch 파일이 생성` |
|EXPOSE| 생성된 이미지에서 노출할 포트를 설정 |
|CMD| 컨테이너가 실행될 때마다 실행할 명령어를 설정, Dockerfile에서 한번만 사용할 수 있음|
|ENTRYPOINT| CMD와 동일하게 사용할 수 있지만 entrypoint는 커맨드를 인자로 받아 사용할 수 있는 스크립트의 역할을 할 수 있음 </br> 이미지 생성 후 실행할 스크립트 파일을 입력하여 사용함 `ex) ENTRYPOINT entrypoint.sh`|
