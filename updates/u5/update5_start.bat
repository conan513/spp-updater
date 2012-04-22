@echo off
echo Update 5: Jarmuvek fix es vinyo terheles teszt fix
echo Szerver es az adatbazis frissulni fog. Ez tobb percet is igenybe vehet!
..\..\sleep 10

taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &

cd ..\..\server\xampp\ &
start mysql_start.bat &
cd ..\.. &
cls
cd updates\u5

..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up5/mangos.rar &
..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up5/scriptdev2.sql &
..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up5/mr01918_characters_characters.sql &
..\..\rar.exe x mangos.rar &
del mangos.rar &

..\..\mysql -u root -p123456 < delete.sql
..\..\mysql -u root -p123456 < create.sql
..\..\mysql -u root -p123456 mangos < mangos.sql
..\..\mysql -u root -p123456 scriptdev2 < scriptdev2.sql
..\..\mysql -u root -p123456 characters < mr01918_characters_characters.sql
..\..\mysql -u root -p123456 characters < auction.sql

del mangos.sql
del scriptdev2.sql
del mr01918_characters_characters.sql

copy start.bat ..\..\..\start.bat &
copy update.bat ..\..\..\update.bat &
cd ..\..\..\ &
start start.bat &
exit