<div align="center">

# Docker for Beginners
  
</div>


# Overview

A Docker container includes the dependencies, packages, and the entire runtime environment required for your project, ensuring that it runs consistently across different systems. For example, if you have a Python project that uses Matplotlib, you can create a Docker container that includes your application code, Matplotlib, and all other necessary dependencies. This way, anyone who downloads the container can run your project without needing to manually install the dependencies. Docker containers provide portability, reproducibility, isolation, and efficiency, making them a powerful tool for application deployment.



# Installation Commands

Open Ubuntu and I want you to copy paste them.

To be sure and to avoid errors, let us start by uninstalling docker.

```
sudo apt-get remove docker docker-engine docker.io
```
Let us update our Ubuntu
```
sudo apt-get update
```
Then get docker-ce
```
sudo apt-get install docker-ce
```
And the docker.io
```
sudo apt install docker.io
```
Then this one
```
sudo snap install docker
```
Check version
```
docker --version
```
Pulling an image from the docker hub
```
sudo docker run-hello world
```
Checking
```
sudo docker images
```
To avoid errors in the future like "Unit docker.service could not be found"
```
sudo apt-get install docker-ce-cli containerd.io docker-compose-plugin
```

# Creating a Docker Container

If you don't know the basics yet, you can go to this [link](https://github.com/Wantook/BasicShell)

Go to Ubuntu and start by choosing a directory. For example (DON'T COPY PASTE. USE YOUR DESIRED DIRECTORY)
```
cd "desired_repo_here"
```
For Example (This one you can copy paste)
```
cd Downloads
```
Then I want to make a directory (a folder) on the Downloads directory. I will name that directory as random
```
mkdir random
```
Now, check the list of files on that directory by typing ls
```
ls
```
Now, make the Dockerfile
```
touch Dockerfile
```
If you were to type ls again, you will see the Dockerfile on the directory. Now, type 
```
nano Dockerfile
```
This allows you to edit the Dockerfile inside Ubuntu. Now, I want you to write a shell script. If you are not familiar with shell scripting. Go [here](https://www.shellscript.sh/)
I will assume that you now have a shell script. Or if you don't have one, [click here](https://github.com/Wantook/BasicShell) for a very basic tutorial

Inside the Dockerfile, copy this
```
FROM ubuntu:latest


ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8

#This will be the dependency downloaded
RUN apt-get update && apt-get install -y curl


COPY bashpro.sh /usr/local/bin/bashpro.sh


RUN chmod +x /usr/local/bin/bashpro.sh


ENTRYPOINT ["/usr/local/bin/bashpro.sh"]
```
Let us start building the Dockerfile
```
sudo docker build -t mydocker .
```
You can check for the images
```
sudo docker images
```
Now, run the file
```
sudo docker run mydocker
```
To see the contents (-it means interactive)
```
sudo docker run -it mydocker bash
```
Now you have a Docker Container. Congrats! Example shown here does not really require a docker file since you can just install curl manually. But it's good as an introduction.





