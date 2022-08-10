# Timbangan Dashboard Web
<h1>Komponen</h1>
<ul>
  <li>Install support nodejs v14.</li>
  <li>Install npm</li>
  <li>Install pm2</li>
</ul>

<h2>Instalasi</h2>
<ul>
  <li>create database mysql name : timbangan</li>
  <li>git clone url : git clone git@github.com:sourchib/timbangan-dasboard.git</li>
  <li>change .env to database connection & mail smtp</li>
</ul>

<h3>Running Web Dashboard</h3>
pm2 start server.js
<h3>Restart cronjob</h3>
pm2 restart 0 --name timbangan --cron '58 * * * *' --no-autorestart
<h3>Log Node</h3>
pm2 log
<h3>Status ID node</h3>
pm2 status

#Doc File
<img src="https://github.com/sourchib/portofolio/blob/main/web.png">
