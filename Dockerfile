FROM maven:3.9.3

WORKDIR /code

COPY . /code

ARG DB_HOST="100.127.29.164"
ARG DB_PASSWORD="TajneHaslo123!@#"
ARG DB_USERNAME="PawelS"
ARG DB_NAME="employee_ShaunG"

# user: PawelS
# password: TajneHaslo123!@#
# host: academy2020.cpc8rvmbbd9k.eu-west-2.rds.amazonaws.com
# name: employee_ShaunG
ENV DB_HOST 100.127.29.164
ENV DB_PASSWORD TajneHaslo123!@#
ENV DB_USERNAME PawelS
ENV DB_NAME employee_ShaunG

RUN mvn clean install -DskipTests=true

EXPOSE 8080
# EXPOSE 3306

CMD ["java","-jar", "/code/target/JavaWebService-1.0-SNAPSHOT.jar", "server", "/code/config.yml"]