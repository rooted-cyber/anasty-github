#!/usr/bin/env bash
msg() {
echo -e "$@" >&2
}
if [ $# -eq 0 ]; then
    msg pp i - install pip package
    msg pp u - uninstall pip package
    msg pp s - show pip package
    msg pp f - list of pip package
    msg pp c - check install/uninstall pip package
    exit 1
fi
if [ $1 == "i" ];then
python3 -m venv rootedcyber
rootedcyber/bin/pip install $2 $3
elif [ $1 == "u" ];then
python3 -m venv rootedcyber
rootedcyber/bin/pip uninstall $2 -y
elif [ $1 == "s" ];then
python3 -m venv rootedcyber
️rootedcyber/bin/pip show $2
elif [ $1 == "f" ];then
python3 -m venv rootedcyber
rootedcyber/bin/pip freeze
elif [ $1 == "c" ];then
fc="$(rootedcyber/bin/pip freeze | grep -e "$2")"
if [ -z "$fc" ];then
printf "$2 "
msg is not install
else
printf "$fc\n "
msg  installed this 👆👆
fi
fi
