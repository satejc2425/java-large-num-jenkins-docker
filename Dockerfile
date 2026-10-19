FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY LargeNum.java .
RUN javac LargeNum.java
CMD ["java" , "LargeNum"]
