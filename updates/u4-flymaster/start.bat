@echo off
taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &
cd spp-updater &
..\git\bin\git.exe pull &
copy updates\u4-flymaster\start.bat .. &
copy IP-config.bat .. &
copy "start(no update).bat" .. &
copy updates\u4-flymaster\update.bat .. &
copy updates\u4-flymaster\restore.bat ..
cd updates\u5
start update5_start.bat