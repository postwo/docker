#FROM 어떤 버전을 다운받을건지
FROM mysql 

ENV MYSQL_USER=ssar
ENV MYSQL_PASSWORD=ssar1234
ENV MYSQL_ROOT_PASSWORD=root1234
ENV MYSQL_DATABASE=ssardb 

CMD ["--character-set-server=utf8mb4","--collation-server=utf8mb4_unicode_ci"]

#docker exec -it e3 bash 접속후 echo MYSQL_USER 라고 치면 유저정보를 확인 가능하다 echo 이거는 환경변수를 뜻한다

#docker build -t mysql-image .  여기서 . 은 도커파일 위치를 뜻한다 ex5 밑의 다른 폴더가 있다면 ex) #docker build -t mysql-image ./lib 이런형식으로 쓸수있다

#docker run -d -p 3308:3306 --name mysql-container mysql-image  -p는 포트번호를 입력하는거다 입력안하면 디폴트값으로 입력된단

#docker volume ls 도커 볼륨 상태를 볼수있다
