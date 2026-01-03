FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN ./mvnw package -DskipTests || mvn package -DskipTests

CMD ["java", "-jar", "target/*.jar"]
