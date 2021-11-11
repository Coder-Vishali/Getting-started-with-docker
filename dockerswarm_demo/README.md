**To initialize a swarm. It consists of single node:**

docker swarm init	

**To leave the swarm:**

docker swarm leave --force	

**To join the swarm:**

docker swarm join --token SWMTKN-1-2yvjyjowrc7hvl6uscxsyskq0sxfgivrr66824554pzjddo811-aen2um1ubg5zisdzx7xoh2m9i 192.168.65.3:2377	

**To make the node as a manager:**

docker swarm join-token manager	

**To know the details of the swamrm like status, ID:**

docker node ls	 

.* represents that this is the node the docker has executed. Copy the ID

**To inspect the node:**

docker node inspect m1utad9hd9e9ojes4yqkv3a1o	




<h3> With the help of Play with docker you can create nodes in swarm: https://labs.play-with-docker.com/ </h3>

**To make a swarm as a leader:** 

Make sure you give this command in node 1

docker swarm init --advertise-addr=eth0  

**To know the details of the swarm:**

docker node ls

**To promote the node 2 and node 3:**

docker node promote node2 node3

docker node ls
