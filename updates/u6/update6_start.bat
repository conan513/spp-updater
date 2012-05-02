@echo off
echo Update 6: Armageddon!
echo Szerver es az adatbazis frissulni fog. Ez tobb percet is igenybe vehet!
..\..\sleep 10

taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &

..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up5/my.ini &
copy my.ini ..\..\server\xampp\mysql\bin\

cd ..\..\server\xampp\ &
start mysql_start.bat &
cd ..\.. &
cls
cd updates\u6

..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up6/mangos.rar &
..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up6/scriptdev2.sql &
..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up6/server.rar &
..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up6/characters.rar &
..\..\wget -c http://dl.dropbox.com/u/9668863/wow/up6/base_custom_playerbotai_characters_r2.sql &

..\..\rar.exe x y mangos.rar &
..\..\rar.exe x y server.rar ..\..\server\ &
..\..\rar.exe x y characters.rar &

del mangos.rar &
del server.rar &
del characters.rar &

cls

echo Ez a folyamat sokaig nem fog valaszolni.
echo Kerlek ne zard be, amig be nem fejezte teljesen!

..\..\mysql -u root -p123456 < ..\delete.sql
..\..\mysql -u root -p123456 < ..\create.sql
..\..\mysql -u root -p123456 mangos < mangos.sql
..\..\mysql -u root -p123456 scriptdev2 < scriptdev2.sql
..\..\mysql -u root -p123456 characters < wb_002_characters_anticheat_config_update.sql
..\..\mysql -u root -p123456 characters < wb_013_characters_armory_support.sql
..\..\mysql -u root -p123456 characters < wb_028_characters_temp_ban_wpe.sql
..\..\mysql -u root -p123456 characters < wb_032_characters_battle_area.sql
..\..\mysql -u root -p123456 characters < wb_033_characters_backup_items.sql
..\..\mysql -u root -p123456 characters < wb_033_characters_mail_external.sql
..\..\mysql -u root -p123456 characters < base_custom_playerbotai_characters_r2.sql

del mangos.sql
del scriptdev2.sql
del mr01918_characters_characters.sql

copy start.bat ..\..\..\start.bat &
copy update.bat ..\..\..\update.bat &
cd ..\..\..\ &
start start.bat &
exit