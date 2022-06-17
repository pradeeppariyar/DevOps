# DevOps

Dokumentation for Technical Challenges: 
Timescaledb: 
1.	Writing the YAML code in a visual code tool and added TimescaleDb docker images from below instruction: https://docs.timescale.com/install/latest/
2.	Define the Dockerfile for making container images to run into distributed OS. The command which Used for building the images: 

      Docker build.
3.	After running the timescaleDB inside container in the port 9000, PSQL shell is install inside the database and need to create the shell Script for database.


MinIO:  This is similar to S3 storage in Cloud which can be used for store the block data in into different bucket.
1.	Installation:  https://docs.min.io/minio/baremetal/quickstart/container.html#quickstart-container.
2.	Use Docker Images from Docker hub: https://hub.docker.com/r/bitnami/minio
3.	After that, create YML file with official images and running port. Successfully Lunch the storage with the port: Localhost:9000 and using environment login credentials mentioned in Docker-compose.YAML file.


Initialize.sh: This is script file use for creating the database inside the database with the name: my_db and my_tb respectively.
1.	Command for running the script: ./initialize.sh
Note: The data which need to be upload inside the S3 storage couldn’t be able to be done through the script I need few more time to reframe the documentation for better ideas but yes, possible is there. Data volumes are quite large and unable to update. 



 
