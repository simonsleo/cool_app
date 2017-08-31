1. how BathNormalization impact CNN 

Adding BatchNormalization and increasing Filters from 16 to 128 do not improve the accuracy (UCR-starlightcurve).
(/home/sliu/ucr_dataset/starlightcurve/scale_case/hilbert_spiral_2_6)

2. how to use Pooling
--> I can image that pooling process in priciple is to select the derivates of Taylor derivatives. Choosing one or combing several derivates based on stencils would both work.

http://cs231n.github.io/convolutional-networks/
Backpropagation. Recall from the backpropagation chapter that the backward pass for a max(x, y) operation has a simple interpretation as only routing the gradient to the input that had the highest value in the forward pass. Hence, during the forward pass of a pooling layer it is common to keep track of the index of the max activation (sometimes also called the switches) so that gradient routing is efficient during backpropagation.

Getting rid of pooling. Many people dislike the pooling operation and think that we can get away without it. For example, Striving for Simplicity: The All Convolutional Net proposes to discard the pooling layer in favor of architecture that only consists of repeated CONV layers. To reduce the size of the representation they suggest using larger stride in CONV layer once in a while. Discarding pooling layers has also been found to be important in training good generative models, such as variational autoencoders (VAEs) or generative adversarial networks (GANs). It seems likely that future architectures will feature very few to no pooling layers.
