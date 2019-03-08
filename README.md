# ssh-legacy
Run an old ssh client with legacy options on Alpine Linux with Docker.   

You can use this client if you need to connect to a very old device that only supports legacy algorithms. Since some of the older algorithms have been found to be weak, newer versions of ssh clients leave them disabled.  
WARNING! Please upgrade the old device if possible to a secure alternative! Only if you have no other option, use this client.  

---

## how to use it
If you just want to use the container from docker hub - proceed with step 3.  

### 1.) OPTIONAL: BUILD the docker container
```
docker build -t christianbecker/ssh-legacy .
```

---

### 2.) OPTIONAL: RUN the container - just to try if it works
```
docker run --rm -it christianbecker/ssh-legacy USER@HOST
```
(should connect to your old device "HOST" as user "USER")  


---

### 3.) USE the container
To use the container like a built in command in your system you can add the following alias to `.bash_aliases` or `.bashrc`:  
```
alias ssh-legacy='docker run --rm -it christianbecker/ssh-legacy'
```

Then simply use `ssh-legacy` (like "ssh") followed with options of your choice in bash console on docker host system.  


---

## project links
[GitHub](https://github.com/christian-becker/ssh-legacy)  
[Docker Hub](https://hub.docker.com/r/christianbecker/ssh-legacy/)  


---

## Authors
* **Christian Becker** - [christian-becker](https://github.com/christian-becker)  

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/christian-becker/ssh-legacy/blob/master/LICENSE) file for details.  

