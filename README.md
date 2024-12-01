# TestTask
Task: Run 2 web-servers with docker. They should return "Welcome" in a home page.
Make load balancing using HA and KeepAlived. (only 2 additional servers available)

Automate everything by using Ansible playbook, store creditionals in ansible vault

0. Clone a repository in any way that convenient for you.

For example: `git clone git@github.com:Vulkii/TestTask.git`

Bash shell interpreter insturcion
1. **Build a docker image**:

	 `sudo docker build -t my_web_server ./web_server `

2. **Run Docker compose to build and run all containers**:
	
	 `sudo docker-compose up`

3. **Check of the first task**:

In order to check web_servers availability you can use
	`curl http://localhost:8081`
for the first web-server

and

	`curl http://localhost:8082`
for the second one.


In order to check haproxy work you can use script load_test.sh

	`./load_test.sh
	sudo docker logs web_server_1
	sudo docker logs web_server_2`

Both web_servers would answer to requests in turn with a one second difference

or you can check it without script

	`curl http://localhost
        sudo docker logs web_server_1
        sudo docker logs web_server_2`
curl should be sended several times.
The time difference of the requests will be different (not one second)
