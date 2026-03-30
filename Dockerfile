# Importa o java jdk -> java develop kit
FROM eclipse-temurin:17-jdk-alpine

#Criar uma pasta chamada app
WORKDIR /app

#Copiar o .jar para dentro da pasta /app
COPY build/libs/notificacao-api-0.0.1-SNAPSHOT.jar /app/notificacao-api-0.0.1-SNAPSHOT.jar

#Expor a porta 8082
EXPOSE 8082

#Comandos para executar o executavel .jar
CMD ["java", "-jar", "/app/notificacao-api-0.0.1-SNAPSHOT.jar"]








