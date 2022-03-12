FROM adoptopenjdk/maven-openjdk11:latest as build
WORKDIR /workspace/app
COPY src src
COPY pom.xml pom.xml
RUN mvn clean install 

FROM adoptopenjdk/openjdk11:latest
RUN mkdir -p /demo/app
COPY --from=build /workspace/app/target/dftfdemo-spring.jar /demo/app
EXPOSE 8080
ENTRYPOINT ["java","-jar","/demo/app/dftfdemo-spring.jar"]