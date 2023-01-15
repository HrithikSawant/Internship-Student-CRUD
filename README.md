# Containerizing The App

## Overview
In this guide, we will be containerizing the existing REST API developed in [Level 0](https://github.com/HrithikSawant/Internship-Student-CRUD/tree/level-0) using Docker. Containerizing the app will ensure that anyone who has Docker installed can easily set up and run the app, eliminating the "it works on my machine" syndrome.

## Prerequisites
- Docker
- Docker Compose

## Building and Running the app

### Step 1: Only containerize the app
- Create a Dockerfile with instructions to build the image and run the app.
- Compile the code inside the container.
- Do not containerize the PostgreSQL database. Keep it running on the local machine.
- Make any necessary modifications to the code to support running inside the container, such as removing hard-coded PostgreSQL URLs.
- Test building the image with the `docker build` command, tagging the image with the `docker tag` command, and running the image with the `docker run` command.
- Document all commands in the README and make them executable as part of a Makefile.
- Record a demo of the app running inside the container to demonstrate that the existing functionality still works.
- Commit and push the code changes to the GitHub repository.

### Step 2: Containerize the App and Database

- Use **docker-compose** to run the app and database containers together, eliminating the need for a new team member to install PostgreSQL on their local machine.
- Create a basic `docker-compose.yaml` file to specify the requirements for both the app and database containers.
- At this point, the `docker-compose.yaml` should contain a hard-coded reference to the app image built in step 1.
- The `docker-compose.yaml` should use the same version of PostgreSQL that runs on your machine.
- Add DB migrations as a docker entrypoint.
- Test building the image with the `docker build` command, tagging the image with the `docker tag` command, and running the image with the `docker-compose up` command.
- Document all commands in the README and make them executable as part of a Makefile.
- Record a demo of the app and database running inside Docker to demonstrate that the existing functionality still works.
- Commit and push the code changes to the GitHub repository.

## Expectations
- A README explaining the project
- At this point, any new team member should be able to clone the repo and run the `docker-compose up` command to start the app without any additional setup or configuration.
- A video demo showcasing the above 2 steps
