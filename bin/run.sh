#!/bin/bash
cd $DATA_DIR
exec "/usr/bin/runsvdir" "-P" "npm start"
