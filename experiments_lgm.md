#  Hilbert_Spiral  filter vs frequency

There are two possible reasons,one is filter size,and the other is frequency.
we increase sigma from 1.5 to 2.0. cnn with filter 3x3  fail to classify images,whereas cnn with 2x2 filter can 
predict images correctly. refer to h_s_2_6 and h_s_1_14.
It proves that frequency play less role but filter size domains when dealing with challeging tasks. 


# which type best with the same filter may be replaced by which filter best regarding to a specified curve.

# Haptics 
Error rate can decrease to 0.28,campared to 0.449(UCR time series classification,arxiv 1611.06455v4)

# StarLightCurves
1. Error rate stays at about 0.15,campared to 0.021(UCR time series classification,arxiv 1611.06455v4)).
2. When the number of epochs is increased to 1500,the error rate drops to 0.08.
3. The accuracy doesn't rise by increasing Dense from 256 to 512

