# Omeka Classic Docker

This repository provides a Docker setup for [Omeka Classic](https://omeka.org/classic/), a web publishing platform for sharing digital collections and creating media-rich online exhibits.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. **Clone the repository:**
  ```sh
  git clone https://github.com/Yuzki/omeka-classic-docker.git
  cd omeka-classic-docker
  ```

2. **Build and start the containers:**
  ```sh
  docker compose up -d
  ```

3. **Access Omeka Classic:**
  Open your web browser and go to `http://localhost:8080`, then install Omeka Classic.

## Configuration

- **Database:**
  The database configuration is set in the `docker-compose.yml` file. You can modify the environment variables as needed.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

