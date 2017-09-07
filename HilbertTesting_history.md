1. how BathNormalization impact CNN 

Adding BatchNormalization and increasing Filters from 16 to 128 do not improve the accuracy (UCR-starlightcurve).
(/home/sliu/ucr_dataset/starlightcurve/scale_case/hilbert_spiral_2_6)

2. how to use Pooling
--> I can image that pooling process in priciple is to select the derivates of Taylor derivatives. Choosing one or combing several derivates based on stencils would both work.

http://cs231n.github.io/convolutional-networks/
Backpropagation. Recall from the backpropagation chapter that the backward pass for a max(x, y) operation has a simple interpretation as only routing the gradient to the input that had the highest value in the forward pass. Hence, during the forward pass of a pooling layer it is common to keep track of the index of the max activation (sometimes also called the switches) so that gradient routing is efficient during backpropagation.

Getting rid of pooling. Many people dislike the pooling operation and think that we can get away without it. For example, Striving for Simplicity: The All Convolutional Net proposes to discard the pooling layer in favor of architecture that only consists of repeated CONV layers. To reduce the size of the representation they suggest using larger stride in CONV layer once in a while. Discarding pooling layers has also been found to be important in training good generative models, such as variational autoencoders (VAEs) or generative adversarial networks (GANs). It seems likely that future architectures will feature very few to no pooling layers.


3. Generating images

Not same images generated on windows and linux.


& HilbertCurve & D4L0 & D3L2 & D1L4 & D0L30 & Z-type & HilbertCurve & D4L0 & D3L2 & D1L4 & D0L30 & Z-type & HilbertCurve & D4L0 & D3L2 & D1L4 & D0L30 & Z-type & HilbertCurve & D4L0 & D3L2 & D1L4 & D0L30 & Z-type \\
&( 100.00 , 0.00 ) &(!?,!?) &(!?,!?) &(!?,!?) &(!?,!?) &( 100.00 , 0.00 ) &( 100.00 , 0.00 ) &( 100.00 , 0.00 ) &( 100.00 , 0.00 ) &( 100.00 , 0.00 ) &( 100.00 , 0.00 ) &( 100.00 , 0.00 ) &( 95.81 , 3.10 ) &( 94.12 , 4.84 ) &( 90.68 , 9.91 ) &( 86.88 , 9.32 ) &( 93.83 , 10.71 ) &( 100.00 , 0.00 ) &( 70.47 , 6.48 ) &( 60.95 , 12.46 ) &( 62.78 , 12.07 ) &( 53.25 , 8.54 ) &( 33.79 , 9.01 ) &( 99.72 , 0.74 ) \\



122 124 126 128

this is a tex table for  sigma_01_
& HilbertCurve & D4L0 & D3L2 & D2L6 & D1L14 & Z-type \\
&100.00(0.00) &100.00(0.00) &100.00(0.00) &100.00(0.00) &100.00(0.00) &100.00(0.00) \\
this is a tex table for  sigma_05_
& HilbertCurve & D4L0 & D3L2 & D2L6 & D1L14 & Z-type \\
&100.00(0.01) &99.92(0.24) &100.00(0.00) &99.91(0.18) &100.00(0.00) &100.00(0.00) \\
this is a tex table for  sigma_10_
& HilbertCurve & D4L0 & D3L2 & D2L6 & D1L14 & Z-type \\
&78.10(14.67) &72.21(5.22) &74.34(15.82) &72.84(10.32) &81.77(14.84) &99.38(1.21) \\
this is a tex table for  sigma_15_
& HilbertCurve & D4L0 & D3L2 & D2L6 & D1L14 & Z-type \\
&46.41(5.78) &39.54(5.91) &42.29(7.10) &54.82(2.18) &29.46(5.52) &90.81(8.91) \\



22 24  26 28
this is a tex table for  sigma_01_
& HilbertCurve & D4L0 & D3L2 & D2L6 & D1L14 & Z-type \\
&100.00(0.00) &100.00(0.00) &100.00(0.00) &100.00(0.00) &100.00(0.00) &100.00(0.00) \\
this is a tex table for  sigma_05_
& HilbertCurve & D4L0 & D3L2 & D2L6 & D1L14 & Z-type \\
&100.00(0.00) &100.00(0.00) &100.00(0.00) &100.00(0.00) &100.00(0.00) &100.00(0.00) \\
this is a tex table for  sigma_10_
& HilbertCurve & D4L0 & D3L2 & D2L6 & D1L14 & Z-type \\
&100.00(0.00) &99.98(0.06) &99.91(0.25) &100.00(0.00) &100.00(0.00) &98.75(2.72) \\
this is a tex table for  sigma_15_
& HilbertCurve & D4L0 & D3L2 & D2L6 & D1L14 & Z-type \\
&99.89(0.12) &98.22(3.20) &99.84(0.12) &98.72(2.56) &99.76(0.69) &91.64(12.27) \\
