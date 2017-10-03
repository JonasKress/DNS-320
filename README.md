# NAS DNS-320 with funplug

This repository contains files required to run [syncthing](https://github.com/syncthing/syncthing) 
on Dlink DNS-320 with [funplug](https://wolf-u.li/4523/hdd-installation-des-fun_plug-auf-nas-geraeten/).



## Install

Make sure you have [funplug](https://wolf-u.li/4523/hdd-installation-des-fun_plug-auf-nas-geraeten/) installed.
Copy files in this repo to your NAS.
Make sure ffp/start/syncthing.sh is marked as executable
```bash
chmod a+x /ffp/start/syncthing.sh`
```
Restart NAS
Syncthing should be running and config files under /ffp/var/syncthing/ should be created.


Finally edit /ffp/var/syncthing/config.xml and modify to for example enable webinterface with HTTPS.
