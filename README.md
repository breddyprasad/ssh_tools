# README #

To Install 

* Just do `./install.sh` from your Linux/Mac/Cygwin system.

How to use ssh_tools

* Update the server details in /usr/local/bin/sshinfo
_example sshinfo file_
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
In above sshinfo file you can have multiple server details separated by #### hash.
1st line should be _alias_.
2nd line should be _relative/absolute path of server private key_.
3rd line should be _hostname@ip/dns of the server_.

* To login to the server example pi just do below command.
```
sshto pi
```
1st time login will ask you a question like this
```
Are you ready with password and otp : 
```
type `y` to proceed or any other key for not to proceed.

* To copy files to pi home directory 
```
put <file/directory> pi
```

* To retrieve file or diectory from pi home path
``` 
get <file/directory> pi
```
