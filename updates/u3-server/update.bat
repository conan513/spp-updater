@echo off
taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &
cd spp-updater &
..\git\bin\git.exe pull &
copy updates\u3-server\start.bat .. &
copy IP-config.bat .. &
copy "start(no update).bat" .. &
copy updates\u3-server\update.bat .. &
copy updates\u3-server\restore.bat ..
cd updates\u4-flymaster
start update4.bat