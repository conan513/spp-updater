@echo off
echo Update 1: MMaps
echo MMaps most telepulni fog a szerverre. Ez tobb percet is igenybe vehet!
sleep 10
wget -c http://dl.dropbox.com/u/9668863/wow/mmaps.rar &
rar.exe x mmaps.rar &
del mmaps.rar &
copy updates\after\start_up1.bat ..\start.bat &
cd .. &
start start.bat &
exit