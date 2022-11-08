# Learnerlog - Docker Environment for 

[Link to the certificate](https://www.coursera.org/professional-certificates/tensorflow-in-practice)

---

## Hardware Environment

```
GPU: ZOTAC GeForce® GTX 1060 Mini 6GB
CPU: intel i5-6500
RAM: 16 GB
```

---

## System
This repo works for WSL2 on Windows10

---

## Repo setup
```bash
git clone git@github.com:wyhwong/Learnerlog-docker-env-for-tensorflow-cert.git
```

---

## Docker Environment

```bash
# Build docker image
make build

# Start jupyter notebook server
make jupyter_up

# If you want to specify the port used for jupyter notebook server
make port=<port> jupyter_up

# Kill jupyter notebook server
make jupyter_down

# Clean all containers
make clean
```