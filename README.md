# Timbangan Dashboard Web
<h1>Komponen</h1>
Install support nodejs v14.
Install npm
Install pm2

<h2>Instalasi</h2>
create database mysql name : timbangan
git clone url : git clone git@github.com:sourchib/timbangan-dasboard.git
change .env to database connection & mail smtp

<h3>Running Web Dashboard</h3>
pm2 start server.js
<h3>Restart cronjob</h3>
pm2 restart 0 --name timbangan --cron '58 * * * *' --no-autorestart
<h3>Log Node</h3>
pm2 log
<h3>Status ID node</h3>
pm2 status
