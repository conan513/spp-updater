@echo off
echo 10 mp mulva indulnak a szerverek.
echo Ha nem igy lenne, kerlek jelezd a blog-on!
cd server\xampp\ &
start mysql_start.bat &
cd ../.. &
sleep 10 &
cd Server &
start spp-login.exe & start spp-world.exe &
exit