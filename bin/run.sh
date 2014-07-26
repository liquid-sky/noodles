#!/bin/bash

/opt/bootstrap/bootstrap.sh
exec "/usr/bin/runsvdir" "-P" "/etc/service"
