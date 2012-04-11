@echo off
echo Most elindul Notepad++ ahol latni fogsz egy sort.
echo Keresd meg benne az IP-t (alapesetben 127.0.0.1) es ird at
echo a LAN vagy INTERNET IP-re, esetleg vissza 127.0.0.1-re. (Offline mod) 
echo ..................................................
echo Ha atirtad az IP-t nyomj meg egy gombot.
echo Ha meggondoltad magad X-el zard be ezt az ablakot.
echo ..................................................
pause
taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &
cd ..\..\server\xampp\ &
start mysql_start.bat &
cd ..\.. &
cls
echo Egy kis turelem...
sleep 10 &
cd updates\u2-lan &
unicode\Notepad++.exe realmlist.sql
..\..\mysql -u root -p123456 realmd < realmlist.sql
taskkill /IM mysqld.exe /F &
