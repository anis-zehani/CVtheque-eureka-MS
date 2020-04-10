### STAGE 1: Build ###
FROM openjdk:8-alpine
ADD target/eureka-MS.jar eureka-MS.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/eureka-MS.jar"]