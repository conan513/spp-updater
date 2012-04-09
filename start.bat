@echo off
echo Ha ezzel indítod, a szerver autómatikusan frissülni fog
echo és minden általad módosított config vissza áll alapértelmezettre.
echo  &
echo Ha nem szeretnéd most frissíteni, használd a "start(no update).bat" fájlt.
pause &
taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &
cd spp-updater &
..\git\bin\git.exe reset --hard origin/master &
..\git\bin\git.exe pull &
copy start.bat .. &
copy "start(no update).bat" .. &
start starter.bat