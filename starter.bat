taskkill /IM mysql.exe /F &
taskkill /IM mysqld.exe /F &
taskkill /IM spp-world.exe /F &
taskkill /IM spp-login.exe /F &
cd server\xampp\ &
start mysql_start.bat &
cd ../.. &
sleep 10 &
cd Server &
start spp-login.exe & start spp-world.exe