#!/ffp/bin/sh

# PROVIDE: syncthing
# REQUIRE: LOGIN

. /ffp/etc/ffp.subr

name="syncthing"
command="/ffp/bin/syncthing"
restart_cmd="syncthing_restart"
start_cmd="syncthing_start"
stop_cmd="syncthing_stop"

DATE_LOG=$(date +%Y%m%d)

syncthing_start()
{
        echo "Running ${command}"
	export STNORESTART=1
	nohup syncthing -home=/ffp/var/syncthing &
}

syncthing_stop()
{
        killall syncthing
}

syncthing_restart()
{
        killall syncthing
	export STNORESTART=1
	nohup syncthing -home=/ffp/var/syncthing &
}

run_rc_command "$1"

