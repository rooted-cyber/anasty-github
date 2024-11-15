#!/usr/bin/env bash
msg() {
echo -e "$@" >&2
}
if [ $# -eq 0 ]; then
    echo "No arguments provided."
    msg pp i - install pip package
    msg pp u - uninstall pip package
    msg pp s - show pip package
    msg pp f - list of pip package
    msg pp c - check install/uninstall pip package
    exit 1
fi
if [ $1 == "i" ];then
cd /pip
python3 -m pip install $2
elif [ $1 == "u" ];then
cd /pip
python3 -m pip uninstall $2 -y
elif [ $1 == "s" ];then
cd /pip
python3 -m pip show $2
elif [ $1 == "f" ];then
cd /pip
python3 -m pip freeze
elif [ $1 == "c" ];then
cd /pip
fc="$(python3 -m pip freeze | grep -e "$2")"
if [ -z "$fc" ];then
printf "$2 "
msg is not install
else
printf "$fc\n "
msg  installed this 👆👆
fi
fi