docker stop portainer
docker stop Portainer
docker rm Portainer
docker rm portainer
docker pull portainer/portainer-ce
docker run -d -p 9000:9000 --restart always --name Portainer -v /opt/portainer-data:/data -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer-ce