@echo off
echo Figyelem!!
echo Ezt a fajlt csak abban az esetben hasznald, 
echo ha egy update utan nem mukodne a szerver!
echo Ha a szerver megfeleloen mukodik, akkor zard be ezt az ablakot most.
pause
taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &
cd spp-updater &
..\git\bin\git.exe reset --hard &
