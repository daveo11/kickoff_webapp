#!/bin/bash

# Stop and remove the running Docker container
sudo docker stop $(sudo docker ps -q --filter ancestor=kickoff_app)
sudo docker rm $(sudo docker ps -a -q --filter ancestor=kickoff_app)

# Remove the Docker image
sudo docker rmi kickoff_app

echo "Down script executed successfully."