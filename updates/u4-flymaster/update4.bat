@echo off
echo Update 3: Szerver frissites
echo Szerver es az adatbazis frissulni fog. Ez tobb percet is igenybe vehet!
..\..\sleep 10

taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &

..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up4/my.ini
copy my.ini ..\..\server\xampp\mysql\bin\

cd ..\..\server\xampp\ &
start mysql_start.bat &
cd ..\.. &
cls
cd updates\u4-flymaster

..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up4/mangos.rar &
..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up4/scriptdev2.sql &

..\..\rar.exe x mangos.rar &
del mangos.rar &

..\..\mysql -u root -p123456 < delete.sql
..\..\mysql -u root -p123456 < create.sql
..\..\mysql -u root -p123456 mangos < mangos.sql
..\..\mysql -u root -p123456 scriptdev2 < scriptdev2.sql

del mangos.sql
del scriptdev2.sql

copy start.bat ..\..\..\start.bat &
copy update.bat ..\..\..\update.bat &
cd ..\..\..\ &
exit