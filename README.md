well port is 8000


docker build -t simple_dash:0.0.1 .   

docker run -it --rm -p 1234:8000 docker.io/library/simple_dash:0.0.1 