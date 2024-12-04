# TestTask
Task: Run 2 web-servers with docker. They should return "Welcome" in a home page.
Make load balancing using HA and KeepAlived. (only 2 additional servers available)

Automate everything by using Ansible playbook, store creditionals in ansible vault

0. Clone a repository in any way that convenient for you.

For example: `git clone git@github.com:Vulkii/TestTask.git`
Bash shell interpreter insturcion


Ansible run instruction
**Ansible automation**
1. After repository cloning you need to open TestTask/ansible folder

	`cd TestTask/ansible`

2. Then you need to replace inventory.ini with your servers
```
[web_servers]
server1 ansible_host=ip ansible_user=user ansible_ssh_pass=pass
server2 ansible_host=ip ansible_user=user ansible_ssh_pass=pass

[load_balancers]
server3 ansible_host=ip ansible_user=user ansible_ssh_pass=pass
server4 ansible_host=ip ansible_user=user ansible_ssh_pass=pass
```
3. Encrypt file
`ansible-vault encrypt inventory.ini`

4. Run ansible-playbook
`ansible-playbook -i inventory.ini deploy.yml --ask-vault-pass --ask-become-pass`


P.S. Cons:
1. You need to keep one become-pass among all servers
2. Docker, Docker-compose, HAproxy and Keepalived have to be installed on servers before running.
3. There no script that runs haproxy on server4 after keepalive death on server3. (you need to do it manually RN)
