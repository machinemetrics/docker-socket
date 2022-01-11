# docker-socket

This is an example of an issue that occurs where the exposed balena socket does not reconnect in containers when the balenad engine crashes. 

1. `git clone git@github.com:machinemetrics/docker-socket.git`
2. `balena push <YOUR_APP>`
3. Open a host OS terminal and find the PID for the `balenad` process.
4. Issue a SIGKILL `kill -9 {PID}`
5. Connect to the containers that have the docker socket exposed and see if it is still connected by running `docker ps`
6. At least one of the containers should output to STDERR that the docker socket cannot be found
