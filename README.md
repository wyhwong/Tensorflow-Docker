# Learnerlog - Docker Environment for DeepLearning.AI TensorFlow Developer Professional Certificate

[Link to the DeepLearning.AI TensorFlow Developer Professional Certificate](https://www.coursera.org/professional-certificates/tensorflow-in-practice)

[Link to my certificate of completion](https://coursera.org/share/e400ca52a2668ccebf9edbce2788e088)

---

## Hardware

```
Desktop:
GPU: ZOTAC GeForce® GTX 1060 Mini 6GB
CPU: Intel® Core™ i5-6500 Processor
RAM: 16 GB DDR4
```

Or

```
Laptop:
Model: Lenovo IdeaPad S540
GPU: NVIDIA® GeForce® MX250
CPU: Intel® Core™ i5-10210U Processor
RAM: 8 GB DDR4
```


---

## System
This repo works for WSL2 on Windows10

---

## Usage
```bash
# Clone the repository and initiate notebooks from public git repo of DeepLearning.AI TensorFlow Developer Professional Certificate
git clone --recurse-submodules https://github.com/wyhwong/Tensorflow-Docker.git
```

---

## Docker Environment

```bash
# Build docker image
make build

# Start jupyter notebook server
make start

# If you want to specify the port used for jupyter notebook server
make PORT=<PORT> start

# Kill jupyter notebook server
make clean
```

---

## Jupyter Notebook Server

Go to [localhost:8888](http://www.localhost:8888) (If you didn't specify other port).
