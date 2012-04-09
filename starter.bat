taskkill /IM mysql.exe
taskkill /IM mysqld.exe
taskkill /spp-world.exe
taskkill /IM spp-login.exe
cd server\xampp\ &
start mysql_start.bat &
cd ../.. &
sleep 10 &
cd Server &
start spp-login.exe & start spp-world.exe