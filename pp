#!/usr/bin/env bash
msg() {
echo -e "$@" >&2
}
if [ $# -eq 0 ]; then
    echo "No arguments provided."
    msg pp i
    msg pp u
    msg pp s
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
else
msg Type pi i [name]
fi
