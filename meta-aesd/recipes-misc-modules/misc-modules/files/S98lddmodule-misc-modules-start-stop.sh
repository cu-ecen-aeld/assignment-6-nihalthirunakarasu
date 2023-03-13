#! /bin/sh

case "$1" in
    start)
        echo "Starting Misc Modules"
        /usr/bin/yocto_module_load faulty
        modprobe hello
        ;;
    stop)
        echo "Stopping Misc Modules"
        /usr/bin/yocto_module_unload
        rmmod hello
        ;;
    *)
        echo "Usage: $0 [start|stop]"
    exit 1
esac
exit 0
