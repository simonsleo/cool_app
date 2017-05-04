1. toss coins

This is a central limit theorem question. The trick is to view each toss as a random variable that returns 1 if a head is tossed and 0 if a tail is tossed. Then each such random variable has expected value 1/2 and variance 1/4. So your Z-variable (for using the central limit theorem) will be:

(220-200)/(sqrt(400*(1/4))) = 20/10 = 2

So we've reduced the question to asking what's the probability that Z takes a value bigger than 2. Recall that on the standard normal, the probability that z takes values between -2 and 2 is about 95%, so the probability that it takes values less than 2 is about 97.5% (it's actually more like 97.7% but just estimating). So the probability that we are bigger than 2 is a little less than 2.5%, which after rounding to the nearest percent gives us 2%.

2. possion process
Answers given are nice. However, they hard to apply if you ask, let say, 11 minutes.
So cars arriving in a highway can be modeled by a Poisson process.

The number of arriving cars follows Poisson distribution, with λλ, where 
λ=μTλ=μT
where μμis the avarege number of cars in a minute, TT is the length of time interval (in minutes).

Lets calculate \lambda for the 30-minute interval. Observing at least one car has 0.95 prbability, observing no car has 0.05, its equal to exp−λexp−λ

exp−λ=0.05λ=−log(0.05)=3exp−λ=0.05λ=−log⁡(0.05)=3
AsAsT=30

μ=λ/T=3/30=1/10μ=λ/T=3/30=1/10

This means that 0.1 car arrives on average per minutes (so every 10 minutes a car arrives in the long term)

Observing a car in X minutes:

λ=μT=X/10λ=μT=X/10
P=1−exp−λ=1−exp−μX=1−exp(−X/10)P=1−exp−λ=1−exp−μX=1−exp(−X/10)

So forX=10X=10

P=1−exp−1≈0.67
