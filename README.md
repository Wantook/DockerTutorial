<div align="center">

# Docker Tutorial
  
</div>

### Overview



### Commands

Open Ubuntu and I want you to copy paste them.

To be sure and to avoid errors, let us start by uninstalling docker.

```
sudo apt-get remove docker docker-engine docker.io
```
Then
```
sudo apt-get update
```
Then
```
sudo apt-get install docker-ce
```

```
sudo apt install docker.io
```

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

### Creating a Docker Container

If you don't know the basics yet, you can go to this [link](url)

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
I will assume that you now have a shell script. Or if you don't have one, [click here](url) for a very basic tutorial



