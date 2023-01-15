build:
	./mvnw clean install

run:
	./mvnw spring-boot:run

docker_build:
	docker build -t student_app:1.0 .

app_run_docker: docker_build
	docker run -it --network=host student_app:1.0

all: build run