# Faster Local Development

## Overview
As previously discussed in [Level 1](https://github.com/HrithikSawant/Internship-Student-CRUD/tree/level-1), you have a working application that can be run on any machine using docker. However, the current workflow for making code changes is quite tedious and time-consuming. It involves:

- Making code changes in your IDE
- Building a new container image using `docker build` and tagging it with a newer version
- Updating the image tag in the `docker-compose.yml` file and running `docker-compose up`
- Testing the code changes using Postman
To improve this, we will mount the source code onto a container, allowing changes made in the IDE to be reflected on the container without the need to build and re-run the app. Additionally, we will also implement live debugging using IDE breakpoints.

## Building and Running the app

### Step 1: Mount Source Code Onto a Container
- Create a new `local-docker-compose.yaml` file
    - This file will be similar to the existing `docker-compose.yaml` file
    - To do this, you will need to familiarize yourself with how docker volumes work and how they are implemented in `docker-compose`
    - In summary, the source code will be mounted onto a container in read-only mode, and any changes made in the IDE will be reflected on the container.
- Testing should now be done on the application running in the container.

### Step 2: Implement More REST APIs
- Implement the following APIs in your app:
    - Update the details of a student
    - Get a student
    - Delete a student
- Use the new `local-docker-compose.yaml` file for development
    - Changes should be reflected on the container without the need to restart it. This means that the source code should automatically reload whenever changes are made in the IDE.

## Expectations
- At the end of this level, you will have a better understanding of how docker can not only aid in sharing a working version of the application but also speed up the local development process.
- One of the major benefits of this technique is that it creates an isolated development environment running on a container, where changes made on the local IDE are reflected only on that specific container.
- Record a demo of the local development process and the reflected changes in the container's logs.
- The existing functionality should continue to work, and the source code should preferably have only additions (minimize the need to update existing code as much as possible).
- Add and test the new endpoints to the Postman collection.
- Don't forget to commit and push your code changes to the GitHub repository.