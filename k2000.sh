#!/bin/bash
for i in 0 1 2 3 4 5; do
        echo out > /sys/class/gpio/gpio$i/direction
        echo 0 > /sys/class/gpio/gpio$i/value
done

while true; do
  for i in 0 1 2 3 4 5 4 3 2 1; do
#  for i in 5; do
	echo "gpio $i HIGH"
        echo 1 > /sys/class/gpio/gpio$i/value
        sleep 1
	echo "gpio $i LOW"
        echo 0 > /sys/class/gpio/gpio$i/value
  done
done

