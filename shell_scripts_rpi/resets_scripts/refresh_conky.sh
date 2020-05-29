#!/bin/bash
killall conky
exec .conky/conky_start.sh &
