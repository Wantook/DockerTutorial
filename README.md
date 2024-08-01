<div align="center">

# Docker Tutorial
  
</div>


# Overview

A Docker Container includes the dependencies and packages of your project in the container so that the users would not need to download the dependencies themselves. For example, you are making a Python project that includes Matplotlib. If I would download your project and I don't have Matplotlib, then I have to download those dependencies too. This would be too troublesome if your projects has too much dependencies that downloading them all manually would be a problem. Docker packages your apps so that anyone who downloads it won't have to install the dependencies you used.



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
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
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





