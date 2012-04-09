@echo off
wget http://dl.dropbox.com/u/9668863/wow/dbc.rar &
wget http://dl.dropbox.com/u/9668863/wow/maps.rar &
wget http://dl.dropbox.com/u/9668863/wow/vmaps.rar &
wget http://dl.dropbox.com/u/9668863/wow/xampp.rar &
wget http://dl.dropbox.com/u/9668863/wow/vcredist_x86.exe &
rar.exe x dbc.rar &
rar.exe x maps.rar &
rar.exe x vmaps.rar &
rar.exe x xampp.rar &
vcredist_x86.exe /q /norestart &
del dbc.rar &
del maps.rar &
del vmaps.rar &
del xampp.rar &
del ..\installer.bat &
del ..\start.bat &
copy start.bat .. &
cd .. &
start start.bat