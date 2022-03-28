# unibo-93315-reti-di-calcolatori
Exercises for the University of Bologna Computer Networks course (a.y. 2021-22).

## Docker
Pull the image from the registry:
```bash
$ docker pull ghcr.io/foxyseta/unibo-93315-reti-di-calcolatori:main
```
Run a new instance of the shell in a new container named `$NAME`:
```bash
$ docker run -it --privileged --name $NAME ghcr.io/foxyseta/unibo-93315-reti-di-calcolatori
```
Open [Termshark](https://github.com/gcla/termshark) from the shell:
```bash
$ termshark
```
`iptables` is also available. After exiting the shell, you can restart your
`$NAME` container at any time with:
```bash
$ docker start -ai $NAME
```
