# DevOps Internship Assessment

## Author

- **Name:** Hyelngtil Isaac
- **Date:** 2025-11-21
- **Project Description** A DevOps workflow using open-source tools Leanrt (Linux, GitHub, Docker, CI/CD, Nomad, and monitoring).

## Docker Hello World Example

This project demonstrates a minimal Docker container that runs a Python script (`hello.py`) on startup.

### Files
- `hello.py` – simple Python script that prints a message.
- `Dockerfile` – instructions to build the Docker image.

### Build the Docker Image
In the same directory as the `Dockerfile`, run:

```bash
docker build -t hello-docker

### Run the container
docker run hello-docker

### Expected Outout
Hello, DevOps!

### CI Status
![CI](https://github.com/hyelngtil/devops-intern-final/actions/workflows/ci.yml/badge.svg)
