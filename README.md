# README #

To Install 

* Just do ./install.sh from your Linux/Mac/Cygwin box

How to use ssh_tools

* Update your server details in /usr/local/bin/sshinfo
example sshinfo file 
```
####
pi
~/key/pikey
pi@192.168.1.108
####
jumpbox 
/opt/jumpbox.pem
ec2-user@jumpbox.example.com
####
```
In above sshinfo file you can have multiple server details separated by #### hash 
1st alias name 
2nd relative/absolute path of server private key
3rd hostname@ip/dns of the server

* To login to the server example pi just do below command
```
sshto pi
```
1st time login will ask you a question like this
```
Are you ready with password and otp : 
```
type y to proceed or any other key for not to proceed

* To copy files to pi home directory 
```
put <file/directory> pi
```

* To retrieve file or diectory from pi home path
``` 
get <file/directory> pi
```
