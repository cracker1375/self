# Beyond Self Bot Version 2.0

#Installation
### Install dependencies.
### Tested on Ubuntu 14.04.
```
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev
cd $HOME
git clone https://github.com/cracker1375/mr-Error.git -b supergroups
cd Self-Bot
chmod +x launch.sh
./launch.sh install
cd .luarocks/bin
./luarocks-5.2 install luafilesystem
./luarocks-5.2 install lub
./luarocks-5.2 install luaexpat
./luarocks-5.2 install serpent
./luarocks-5.2 install feedparser
./luarocks-5.2 install redis-lua
./luarocks-5.2 install fakeredis
cd ../..
./launch.sh 
Then Enter Your Phone And Confirmation Code
```
###After you run the bot for first time, send it !id @YourUserName. Get your ID and stop the bot.

###Open ./data/config.lua and add your ID to the "sudo_users" section in the following format:
```
  sudo_users = {
    555552101,
    YourID
  }
```
###Then restart the bot.

###For Launch With AutoLaunch :
```
killall screen
killall tmux
killall telegram-cli
tmux new-session -s script "bash beyond.sh -t"
