DOCKER_HUB_USERNAME = hrithiksawant
DOCKER_HUB_PASSWORD = ZGNrcl9wYXRfUmNCdDFZUUhvUm1IMHRYWmtOakliOVY3MFRzCg==
DOCKER_HUB_REPOSITORY = hrithiksawant/student-crud

build:
	./mvnw clean install

run:
	./mvnw spring-boot:run

# To build app docker container
app_build:
	docker build -t student_app:latest .

# To build and run docker container using local host db
app_connect_db_container:
	docker build -t student_app:latest .
	docker run -it --network=host student_app:latest

# To build app and db container using compose file
docker_build:
	docker-compose build

# To build and run docker container for app and db
app_run_docker:
	docker-compose up

app_down_docker:
	docker-compose down

# To use host reload.
app_run_live_reload:
	docker-compose -f local-docker-compose.yml up

docker_push:
	echo ${DOCKER_HUB_PASSWORD} | base64 -d | docker login --username ${DOCKER_HUB_USERNAME} --password-stdin
	docker tag student_app:1.0 $(DOCKER_HUB_REPOSITORY):latest
	docker push $(DOCKER_HUB_REPOSITORY):latest