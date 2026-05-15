![Java](https://img.shields.io/badge/Java-17-blue?style=for-the-badge&logo=openjdk)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-3-brightgreen?style=for-the-badge&logo=springboot)
![RabbitMQ](https://img.shields.io/badge/RabbitMQ-Message_Broker-orange?style=for-the-badge&logo=rabbitmq)
![JWT](https://img.shields.io/badge/JWT-Authentication-red?style=for-the-badge&logo=jsonwebtokens)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-blue?style=for-the-badge&logo=postgresql)
![Docker](https://img.shields.io/badge/Docker-Containerization-blue?style=for-the-badge&logo=docker)
![Gradle](https://img.shields.io/badge/Gradle-Build_Tool-black?style=for-the-badge&logo=gradle)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI/CD-blue?style=for-the-badge&logo=githubactions)

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:232526,50:414345,100:2C5364&height=220&section=header&text=Notificacao%20API&fontSize=40&fontColor=ffffff&animation=fadeIn" />
</p>

<p align="center">
  <b>Microsserviço de notificações utilizando Spring Boot, RabbitMQ e JWT.</b>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/ViniciusS4ntos/notificacao-api?style=social" />
  <img src="https://img.shields.io/github/forks/ViniciusS4ntos/notificacao-api?style=social" />
  <img src="https://img.shields.io/github/issues/ViniciusS4ntos/notificacao-api" />
</p>

---

# Notificacao API

**Notificacao API** é um microsserviço desenvolvido com **Java + Spring Boot** responsável pelo gerenciamento e envio de notificações.

O projeto utiliza **RabbitMQ** para comunicação assíncrona entre microsserviços, autenticação utilizando **JWT** e persistência de dados com **PostgreSQL**.

A aplicação possui arquitetura em camadas, suporte para execução com **Docker** e pipeline CI/CD utilizando **GitHub Actions**.

---

# Tecnologias Utilizadas

- Java 17  
- Spring Boot 3  
- Spring Security  
- RabbitMQ  
- JWT (JSON Web Token)  
- PostgreSQL  
- Docker  
- Gradle  
- GitHub Actions  
- Lombok  

---

# Funcionalidades

- Envio de notificações  
- Consumo de filas RabbitMQ  
- Comunicação assíncrona entre microsserviços  
- Autenticação via JWT  
- Persistência de notificações  
- Tratamento global de exceções  
- Containerização com Docker  
- Pipeline CI/CD  

---

# Pré-requisitos

- Java 17 instalado  
- Docker instalado  
- PostgreSQL configurado  
- RabbitMQ configurado  

---

# Rodando o Projeto

## 1. Clone o repositório

```bash
git clone https://github.com/seu-usuario/notificacao-api.git
cd notificacao-api
```

---

## 2. Configure o `application.properties`

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/notificacao
spring.datasource.username=postgres
spring.datasource.password=123456

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

spring.rabbitmq.host=localhost
spring.rabbitmq.port=5672
```

---

## 3. Execute os containers

```bash
docker-compose up --build
```

---

## 4. Rodar manualmente

### Linux/Mac

```bash
./gradlew bootRun
```

### Windows

```bash
gradlew.bat bootRun
```

---

# RabbitMQ

O projeto utiliza RabbitMQ para comunicação assíncrona entre microsserviços.

Fluxo:

1. Um microsserviço envia uma mensagem  
2. A fila RabbitMQ recebe a mensagem  
3. A Notificacao API consome a fila  
4. A notificação é processada e salva  

---

# Autenticação JWT

A API utiliza autenticação baseada em JWT.

Exemplo:

```http
Authorization: Bearer SEU_TOKEN
```

---

# Endpoints Principais

| Método | Endpoint | Descrição |
|---|---|---|
| POST | `/notificacoes` | Cria uma notificação |
| GET | `/notificacoes` | Lista notificações |
| GET | `/notificacoes/{id}` | Busca notificação por ID |
| DELETE | `/notificacoes/{id}` | Remove uma notificação |

---

# Estrutura do Projeto

```text
Directory structure:
└── viniciuss4ntos-notificacao-api/
    ├── Dockerfile
    ├── gradlew
    ├── gradlew.bat
    ├── gradle/
    │   └── wrapper/
    │       └── gradle-wrapper.properties
    ├── src/
    │   └── main/
    │       ├── java/
    │       │   └── com/
    │       │       └── vinicius/
    │       │           └── notificacao_api/
    │       │               ├── NotificacaoApiApplication.java
    │       │               ├── business/
    │       │               │   ├── EmailService.java
    │       │               │   ├── dto/
    │       │               │   │   └── TarefasDTO.java
    │       │               │   └── enums/
    │       │               │       └── StatusNotificacaoEnum.java
    │       │               ├── controller/
    │       │               │   └── EmailController.java
    │       │               └── infrastructure/
    │       │                   └── excecptions/
    │       │                       └── EmailException.java
    │       └── resources/
    │           ├── application.yaml
    │           └── templates/
    │               └── notificacao.html
    └── .github/
        └── workflows/
            └── gradle.yml

```

---

# Segurança

O projeto possui:

- Spring Security  
- JWT Authentication  
- Filtro JWT  
- Rotas protegidas  
- Tratamento global de exceções  

---

# Docker

## Subir containers

```bash
docker-compose up -d
```

## Derrubar containers

```bash
docker-compose down
```

---

# CI/CD

O projeto possui pipeline automatizada utilizando GitHub Actions.

Funcionalidades:

- Build automático  
- Execução de testes  
- Integração contínua  

---

# Melhorias Futuras

- Retry de mensagens RabbitMQ  
- Monitoramento com Prometheus  
- Logs centralizados  
- Deploy em nuvem  
- Testes de integração  

---

# Autor

Desenvolvido por Edson Vinicius.
