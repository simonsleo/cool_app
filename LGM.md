GPUs are in the lgm2.

```
ssh lgm2
```
check
```
which nvcc
```
if not found,then tell the path of cuda
```
export PATH=$PATH:/usr/local/cuda/bin
```

runnin on gpu is ten times as fast as running on cpu

with the same case, one epoch takes 40s on cpu,but only 4s on cpu.
CPU:
```
2000/2000 [==============================] - 38s - loss: 11.6477 - acc: 0.2480
```
GPU:
```
2000/2000 [==============================] - 5s - loss: 1.3866 - acc: 0.2495
```
# run shell while logining every time
creat a shell file named .bash_profile,write codes as follow 
```
#!/bin/sh
export PATH=$PATH:/usr/local/cuda/bin

#cuda ppc64le-linux library
export LD_LIBRARY_PATH=/home/sliu/cuda/targets/ppc64le-linux/lib:$LD_LIBRARY_PATH
export CPATH=/home/sliu/cuda/targets/ppc64le-linux/include:$CPATH
export LIBRARY_PATH=/home/sliu/cuda/targets/ppc64le-linux/lib:$LIBRARY_PATH
```
then
```
chmod +x ~/.bash_profile
```
# activate virtual_envs created by conda
```
cd miniconda2/bin
./conda info --envs
source ./activate py2
```
set the default path of   **activate**  to be `~/miniconda2/bin`via `export PATH=$PATH:~/miniconda2/bin`.

# run with multiple GPUs
```
CUDA_VISIBLE_DEVICES=0 or 1 or 2 python xx.py
```

# keep processes still running while exit ssh

You could do that by using `screen`. Type` man screen` to find out more or read this screen man page.

Simple scenario:

1. ssh into your remote box. Type `screen` Then start the process you want.
2. Press Ctrl-A then Ctrl-D. This will "detach" your screen session but leave your processes running. You can now log out of the remote box.
3. If you want to come back later, log on again and type` screen -r` This will "resume" your screen session, and you can see the output of your process.
