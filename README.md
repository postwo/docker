## MYsql 도커파일 생성방법

```txt
#FROM 어떤 버전을 다운받을건지
FROM mysql 

ENV MYSQL_USER=ssar
ENV MYSQL_PASSWORD=ssar1234
ENV MYSQL_ROOT_PASSWORD=root1234
ENV MYSQL_DATABASE=ssardb 

CMD ["--character-set-server=utf8mb4","--collation-server=utf8mb4_unicode_ci"]

#docker build -t mysql-image .  여기서 . 은 도커파일 위치를 뜻한다 ex5 밑의 다른 폴더가 있다면 ex) #docker build -t mysql-image ./lib 이런형식으로 쓸수있다

#docker run -d -p 3308:3306 --name mysql-container mysql-image  -p는 포트번호를 입력하는거다 입력안하면 디폴트값으로 입력된단
```

## UTF 8 설정확인
```sh
show variables like 'character_set_%';
```

## 볼륨 옵션으로 실행하는 법
```sh
docker run -d -v c:/workspace1/DOCKER_LAB/ex05/mysql-volume:/var/lib/mysql -p 3308:3306 --name mysql-container mysql-image

```

## 이름이 있는 볼륨 사용법
```sh
docker run -d -v mysql-volumn:/var/lib/mysql -p 3308:3306 --name mysql-container mysql-image
```