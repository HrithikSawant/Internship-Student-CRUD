build:
	./mvnw clean install

run:
	./mvnw spring-boot:run

all: build run
