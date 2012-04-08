START wget http://dl.dropbox.com/u/9668863/test.rar &
ad.exe -i .. &
vmapExtractor3.exe &
md vmaps &
vmap_assembler.exe buildings vmaps &
rar.exe x test.rar &
pause