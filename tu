#!/bin/bash
msg() {
echo -e "$@" >&2
}
if [ $# -eq 0 ];then
msg tu [command]
msg usage : tu ip
msg command:
msg ins - install all thing
msg cpp - copy files or plugins
msg env - create env
msg ses - generate session
msg os - setup termux/os
msg st - start ultroid
msg ult - for install ultroid
msg get - get env
msg myult - only my ult
msg up - update tu
msg ip - get ip
msg ytt - install ytt for download video/audio
msg sp - install speedtest as sp
msg dl - download and install deb file
msg
exit
fi
pb() {
cd /bin
cd $PREFIX/bin
}
ytt() {
cd /bin
if [ -e apt ];then
msg only for termux
exit 1
else
msg Termux found !!!
echo
echo
cd $PREFIX/bin
wget -q -O ytt https://gist.githubusercontent.com/rooted-cyber/f4b28dacde6bc3bac07f1f29a3c394a7/raw/ytt
chmod 777 ytt
fi
}
shoor() {
cat >> sm << EOF
cd ~/Termux*/Ult*;bash st*
EOF
chmod 777 sm
}
fol() {
cd ~/Termux-Ultroid/Ultroid
}
uos() {
fol
pip3 install -r req*
fol
pip3 install pillow==9.5.0 telethon==1.28.0 requests
fol
pip3 install -r res*/st*/opt*
shoor
cp sm /bin
chmod 777 /bin/sm
}
termux() {
fol
pip3 install -r req*
fol
pip3 install telethon==1.36.0
for c in pillow==9.5.0 telethon==1.28.0 coloredlogs gitpython bs4 pytz enhancer telegraph aiohttp requests;do
msg installing
pip3 install $c
done
shoor
chmod 777 $PREFIX/bin/sm
}
ins() {
cd /bin
if [ -e apt ];then
msg os found !!!
echo
echo
uos
else
msg Termux found !!!
echo
echo
termux
fi
}
star() {
fol
if [ -e startup ];then
bash startup
else
msg First install ultroid !!
echo
echo
exit 1
fi
}
msg() {
echo -e "\033[1;92m"
echo -e "$@" >&2
}
dw() {
cd /sdcard
wget -q -O term.deb https://github.com/rooted-cyber/setup/raw/main/all-termux.deb
wget -q -O os.deb https://github.com/rooted-cyber/setup/raw/main/all-os.deb
}
dl() {
cd /bin
if [ -e apt ];then
msg os found !!!
echo
echo
dw
dpkg -i *os*
else
msg Termux found !!!
echo
echo
dw
epkg -i *term*deb
fi
}
msg() {
echo -e "\033[1;92m"
echo -e "$@" >&2
}
dw() {
cd /sdcard
wget -q -O term.deb https://github.com/rooted-cyber/setup/raw/main/all-termux.deb
wget -q -O os.deb https://github.com/rooted-cyber/setup/raw/main/all-os.deb
}
dl() {
cd /bin
if [ -e apt ];then
msg os found !!!
echo
echo
dw
dpkg -i *os*
else
msg Termux found !!!
echo
echo
dw
dpkg -i *term*
fi
}
if [ $1 == "ins" ];then
ins
elif  [ $1 == "cpp" ];then
bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/1bd2b7d3eb4d66ab06ab5e83098395e3/raw/cpp)"
elif [ $1 == "env" ];then
fol
python3 -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/02bcbcec333d5698dfb696156f8bdc09/raw/env)"
elif [ $1 == "ses" ];then
python3  -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/832b915e64246556827da92176b41a4b/raw/pyro)"
elif [ $1 == "os" ];then
bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/a9ae0aff5fd27e7e40acb68eadbcd1d9/raw/setup)"
elif [ $1 == "st" ];then
star
elif [ $1 == "ult" ];then
bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/ca65c6b2f3c2c780670be7d87210738f/raw/ultroid)"
elif [ $1 == "get" ];then
wget -O a https://gist.githubusercontent.com/rooted-cyber/8e1c059809e2656a79f90408a6a28af0/raw/env
bash a
elif [ $1 == "myult" ];then
bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/470ec29e2be77ed19830c67aa0dccffe/raw/ult)"
elif [ $1 == "dl" ];then
dl
elif [ $1 == "ip" ];then
curl https://ipinfo.io
elif [ $1 == "sp" ];then
sh -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/6f47f4d7b3455dbe10556008515e0c9f/raw/speed)"
elif [ $1 == "ytt" ];then
ytt
elif [ $1 == "up" ];then
msg updating
pb > /dev/null 2>&1
wget -q -O tu https://gist.githubusercontent.com/rooted-cyber/05ca0b015cdbdb3ac87bb9cdaed3da75/raw/tu
msg updated
else
msg invalid selection
msg check : tu
fi
