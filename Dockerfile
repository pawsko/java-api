FROM maven:3.9.3

WORKDIR /code

COPY . /code




RUN mvn clean install -DskipTests=true

EXPOSE 8080
# EXPOSE 3306

CMD ["java","-jar", "/code/target/JavaWebService-1.0-SNAPSHOT.jar", "server", "/code/config.yml"]
