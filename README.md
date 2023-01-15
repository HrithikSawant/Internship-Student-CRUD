# Building a REST API with Spring Boot and Java

## Overview
This project is a basic REST API that can perform CRUD (create, read, update and delete) operations on a resource.

## API Endpoints
- **Create student:** POST [http://localhost:8080/api/v1/students](http://localhost:8080/api/v1/students)
- **Get all students:** GET [http://localhost:8080/api/v1/students](http://localhost:8080/api/v1/students)
    - Note: The students are sorted by their alphabetical names in ascending order.

## Prerequisites
- Java 8 or higher
- Maven
- PostgreSQL
- Make

## DB Schema
- The Student entity has the following fields: `id`, `name`, `date of birth`, `gender`, `email id` (unique constraint), `address`, `created_at`, and `updated_at`.

## Setting the username and password
The application requires a username and password to connect to the database. Follow these steps to set them:
1. Open the application.properties file in the root of the project.
2. Replace "YOUR_USERNAME" with your desired username and "YOUR_PASSWORD" with your desired password for the database.
3. Save the file and you're done!
Please keep in mind that it is important to keep your password secure and never share it with anyone.


## Building and Running
- Clone the repository
- Run `make build` to build the project
- Run the project with `make run`

## Expectations

- Create a GitHub repo with:
    - A README explaining the project
    - Dependency management file (e.g. pom.xml)
    - Instructions to build and run the API locally
    - A Postman collection for the APIs
    - A video demo showcasing the Create and Get all Students APIs
- The exercise should take 1-3 days to complete, depending on familiarity with the language.

## Must-have

- Working code that can be run with a single command
- All code committed and pushed to the repo
- Proper use of .gitignore to avoid committing unnecessary files
- Code following conventions for the chosen language

## Out of scope (but nice to have)

- Unit tests for the code
- DB configuration as an environment variable instead of hardcoded in the code.