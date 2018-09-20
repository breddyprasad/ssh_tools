#!/usr/bin/env sh
# Installation script for ssh_tools 

status () {
if [ $? != 0 ]
then
        echo "${red} $1 installation Failed ${reset}"
else
        echo "${green} $1 Installed ${reset}"
fi
}

# OS specific support (must be 'true' or 'false').
cygwin=false
darwin=false
linux=false
case "`uname`" in
  CYGWIN* )
    cygwin=true
    ;;
  Darwin* )
    darwin=true
    ;;
  Linux* )
    linux=true
    ;;
esac


if $cygwin ; then
	echo "Installing for Windows system"
	cp cygwin/sshto /usr/local/bin/
	cp cygwin/get /usr/local/bin/
	cp cygwin/put /usr/local/bin/
	status "Binary"
fi

if $linux ; then
	echo "Installing for Linux system"
	sudo cp linux/sshto /usr/local/bin/
	sudo cp linux/get /usr/local/bin/
	sudo cp linux/put /usr/local/bin/
	status "Binary"			
fi 

if $darwin ; then
	echo "Installing for Mac OS system"
	sudo cp mac/sshto /usr/local/bin/
	sudo cp mac/get /usr/local/bin/
	sudo cp mac/put /usr/local/bin/
	status "Binary"
fi

##common for all os
cp common/config ~/.ssh/
mkdir -p ~/.ssh/sockets
status "common setting"

if [ -z /usr/local/bin/sshinfo ] ; then
	if $cygwin ; then
		touch /usr/local/bin/sshinfo
		chmod a+rw /usr/local/bin/sshinfo
		status "sshinfo"
	else
        	sudo touch /usr/local/bin/sshinfo
        	sudo chmod a+rw /usr/local/bin/sshinfo
		status "sshinfo"
	fi
fi 
