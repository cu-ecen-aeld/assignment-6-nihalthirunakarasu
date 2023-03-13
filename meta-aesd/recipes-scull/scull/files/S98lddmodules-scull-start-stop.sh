#! /bin/sh

case "$1" in
    start)
        echo "Starting scull"
        /usr/bin/yocto_scull_load
        ;;
    stop)
        echo "Stopping scull"
        /usr/bin/yocto_scull_unload
        ;;
    *)
        echo "Usage: $0 [start|stop]"
    exit 1
esac
exit 0
