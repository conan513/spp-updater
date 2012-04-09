@echo off
echo Ha ezzel inditod, a szerver automatikusan frissulni fog
echo es minden altalad modositott config vissza all alapertelmezettre.
echo Ha nem szeretned most frissiteni, hasznald a "start(no update).bat" fajlt.
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