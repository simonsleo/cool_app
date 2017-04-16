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
