### STAGE 1: Build ###
FROM openjdk:8-alpine
ADD target/eureka-MS.jar eureka-MS.jar
ENTRYPOINT ["java","-jar","/eureka-MS.jar"]