@echo off
echo Ha ezzel ind�tod, a szerver aut�matikusan friss�lni fog
echo �s minden �ltalad m�dos�tott config vissza �ll alap�rtelmezettre.
echo  &
echo Ha nem szeretn�d most friss�teni, haszn�ld a "start(no update).bat" f�jlt.
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