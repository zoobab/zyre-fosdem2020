About
=====

Presensation of Zyre: p2p messaging to fuck the cloud, Pieter Hintjens last IOT project

FOSDEM 2020, Brussels, 02022020

Slides
======

## zoobab.com and openwrt
![00-zoobabdotcom.png](00-zoobabdotcom.png)
## openap, my first expensive linux router
![01-openap.png](01-openap.png)
## openap, 4mb of flash and 1mb ram
![02-openap4mb.jpg](02-openap4mb.jpg)
## isl3893, uClinux routers
![03-isl3893.jpg](03-isl3893.jpg)
## wrt54g and the web exploit
![03-wrt54g-web-exploit.jpg](03-wrt54g-web-exploit.jpg)
## Pieter Hintjens, best friend and ZeroMQ master
![04-pietercat.jpg](04-pietercat.jpg)
## Samsung Chord SDK and ZeroMQ
![05-samsung-chord.jpg](05-samsung-chord.jpg)
## ZeroMQ, the lightweight messaging library
![05-zeromq.png](05-zeromq.png)
## Zyre, an open-source framework for proximity-based peer-to-peer applications
![05-zyre.png](05-zyre.png)
## Glinet AR150, the router of choice
![06-glinet-ar150.jpg](06-glinet-ar150.jpg)
## Hardware vending machine at Revspace.nl
![06-revspace.jpg](06-revspace.jpg)
## Midicast at ZMQ hackaton
![07-midicast-child.jpg](07-midicast-child.jpg)
## Midicast at FOSDEM
![07-midicast.png](07-midicast.png)
## Docker bridge architecture to simulate zyre nodes
![08-docker0.jpg](08-docker0.jpg)
## Blink 2 LEDs with CH341A GPIOs and /sys/class/gpio
![09-ch341a-gpio.jpg](09-ch341a-gpio.jpg)

Videos
======

* Rebooting the GL-AR150 cluster: https://www.youtube.com/watch?v=FV3zgVt9HHA
* GL-AR150 blinken lichten: https://www.youtube.com/watch?v=3CRjeFdS4VY
* OpenWRT Summit 2017 presentation "F* the cloud, stay local - OpenWrt Summit 2017": https://www.youtube.com/watch?v=6UxQmvl4aaY
* This presentation at Fosdem2020: https://fosdem.org/2020/schedule/event/iotzyre/

Links
=====

* http://www.zoobab.com/ch341-usb-spi-i2c-uart-isp-dongle
* https://github.com/gschorcht/i2c-ch341-usb
* https://github.com/zoobab/openwrt-zmq-packages
* https://github.com/ZyreApps/DeMidi

Demo
====

Check the `demo` directory, and launch the 3 docker containers (led3, led5,
controller) with the shell scripts:

* Run 3 containers as slaves:
```
$ docker run -d zoobab/glar150
b6d495af00604457061bd13fce0867f097fccfe569c074c9869fb2c0c047bf4e
$ docker run -d zoobab/glar150
5af819f9d7123acc407aa6cefcb992ca2b59fc06a191b6dc4d5fd590cea95f44
$ docker run -d zoobab/glar150
cafe37cf9499d9f64f55b9154b84d93038912ae091033e2f09aecd97b71499cd
```
* one master -c to control them all:
```
$ docker run -it zoobab/glar150 -c
glard v1.0.1 -- GL-AR150 demo'n
I: 17-11-01 17:52:04 using interface=eth0 my_uuid=C3A0AA7977B943D68AD5B7E1A5B8AEB4 my_name=C3A0AA
I: 17-11-01 17:52:04 JOINED peer=5A793D
I: 17-11-01 17:52:04 JOINED peer=CB5DA2
I: 17-11-01 17:52:04 JOINED peer=9EA303
```
* you should then type the command "pwd" and observer that it is launched on the 3 slaves:

```
pwd
9EA303: /

CB5DA2: /

5A793D: /
```

Future
======

* WIP: curve cryto support (SSH replacement)
* update openwrt packaging
* TOR find friends with onioncat
* Turris Omnia Tetris runs ZeroMQ!
