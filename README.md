# TestTask


1. **Docker-image creation**:

	docker build -t my_web_server ./web_server

2. **Launching containers**:
	
	docker run -d -p 8081:80 --name web_server_1 my_web_server
	docker run -d -p 8082:80 --name web_server_2 my_web_server

3. **Health Check of containers**:

	curl -i http://localhost:8081
	curl -i http://localhost:8082
