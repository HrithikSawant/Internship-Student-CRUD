# Local CI Setup and Local CD

## Overview
At the end of [Level-2](https://github.com/HrithikSawant/Internship-Student-CRUD/tree/level-2), you learned how to do faster local development by mounting the code onto a container. You now have some basic knowledge on how APIs are implemented and are familiar with how Docker can be leveraged to improve the API development.

Our next step is to understand how all the steps that we performed, such as running tests, building the Docker image etc., can be automated so that developers can focus on their development.

The automated stages of compiling the code, running tests, building artifacts, and then making those artifacts available for deployment is known as **Continuous Integration (or CI for short)**.

## Building and Running the app

### Step 1: Local CI setup
- Implement the following CI stages:
  - Compile the source code
  - Check the linting
  - Run tests
  - Generate a docker artifact
  - Push the docker artifact to DockerHub
- Define a GitHub Actions workflow, executing the above stages and commit the file.
  - All of the commands that you have been adding to the Makefile can be used in the CI stages in an automated manner.
- Provided that the GA runner is set up correctly, once the workflow YAML is committed, the local runner will pick up the job and execute the stages.

### Step 2: Local CD (Continuous Delivery)
- Deploy the built docker artifacts onto your local system using the local GitHub Runner

## Expectations
- At the end of this level, you will have a better understanding of how to automate the build and testing process using GitHub Actions.
- Any errors that were missed during local development will be caught by the GitHub Actions workflow and can be fixed in the next commit.
- [**Set up a Self-Hosted GitHub Actions Runner**](https://docs.github.com/en/actions/hosting-your-own-runners/adding-self-hosted-runners)
- Don’t forget to commit and push your code changes to GitHub repo.
