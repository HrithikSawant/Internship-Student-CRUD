build:
	./mvnw clean install

run:
	./mvnw spring-boot:run

# To build app docker container
app_build:
	docker build -t student_app:latest .

# To build and run docker container using local host db
app_connect_db_container: app_build
	docker run -it --network=host student_app:latest

# To build app and db container using compose file
docker_build:
	docker compose build

# To build and run docker container for app and db
app_run_docker:
	docker compose up

app_down_docker:
	docker compose down

# To use host reload.
app_run_live_reload:
	 sudo docker-compose -f local-docker-compose.yml up