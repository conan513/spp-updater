@echo off
taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &
cd spp-updater &
..\git\bin\git.exe pull &
copy updates\u6\start.bat .. &
copy updates\u6\update.bat .. &
copy IP-config.bat .. &
copy "start(no update).bat" .. &