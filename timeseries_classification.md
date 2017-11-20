## Dataset classification
1. Implementing a CNN for Human Activity Recognition in Tensorflow,2016 
http://aqibsaeed.github.io/2016-11-04-human-activity-recognition-cnn/
2. The BIDMC Congestive Heart Failure Database, long-term ECG recordings
https://physionet.org/physiobank/database/chfdb/

3.PAMAP2 Physical Activity Monitoring Data Set,multivariate timeseries
https://archive.ics.uci.edu/ml/datasets/PAMAP2+Physical+Activity+Monitoring

4.Timeseries dataset for machine learning
https://archive.ics.uci.edu/ml/datasets.html?format=&task=cla&att=&area=&numAtt=&numIns=&type=ts&sort=nameUp&view=table

5.Personalization on Smartphone-Based Activity Recognition
http://www.cis.fordham.edu/wisdm/dataset.php

## forcatsting dataset
3. Neural networks for algorithmic trading. Simple time series forecasting.
https://medium.com/@alexrachnog/neural-networks-for-algorithmic-trading-part-one-simple-time-series-forecasting-f992daa1045a


## papers
2. This paper has been cited 51 times. 
https://pdfs.semanticscholar.org/b94c/cb595375bf57617575454b418fc6371b1d7c.pdf

## Multiscale CNN for time series
http://www.cse.wustl.edu/~z.cui/projects/mcnn/
Multi-Scale Convolutional Neural Network for Time Series Classification (MCNN)

## Data augmentation
Data augmentation can act as a regularizer in preventing overfitting in neural networks and improve performance in imbalanced class problems.
https://arxiv.org/pdf/1609.08764.pdf

## repeat UCR
FCN : StarLightCurves 0.054


## UCR time series classification 
Hilbert curves ensemble method is run at least 2 times with 4000 epochs.

The testing (not training) classification error rate:

|                                |       |        |       |       |         |          |         |       |       |
|--------------------------------|-------|--------|-------|-------|---------|----------|---------|-------|-------| 
|   TS    | **MLP**                | **FCN**   | **ResNet** | **PROP**  | **COTE**  | **1NN-DTW** | **1NN-BOSS** | **BOSS-VS**| **Multiple Hilberts(MAX)**|  
| Computers                      | 0.460 | 0.152  | 0.176 | 0.116 |         | 0.300    | 0.296   | 0.324 | **0.032** |
| Haptics                        | 0.539 | 0.449  | 0.494 | 0.584 | 0.481   | 0.623    | 0.536   | 0.584 | **0.278** |
| MALLAT                         | 0.064 | 0.02   | 0.021 | 0.050 | 0.036   | 0.066    | 0.058   | 0.064 | **0.018** |
| StarLightCurves                | 0.043 | 0.033  | 0.025 | 0.079 | 0.031   | 0.093    | 0.021   | 0.096 | 0.07   |
| WormsTwoClass                  | 0.403 | 0.271  | 0.265 | /     | /       | 0.337    | 0.243   | 0.315 |  **0.0**|
| LargeKitchenAppliances         | 0.520 | 0.104  | 0.107 | 0.232 | /       | 0.205    | 0.280   | 0.304 | **0.0** |
| RefrigerationDevices           | 0.629 | 0.467  | 0.472 | 0.424 | /       | 0.536    | 0.512   | 0.488 |  **0.003**|
| ScreenType                     | 0.592 | 0.333  | 0.293 | 0.440 | /       | 0.603    | 0.544   | 0.464 | **0.035** |
| SmallKitchenAppliances         | 0.611 | 0.197  | 0.203 | 0.187 | /       | 0.357    | 0.200   | 0.221 | **0.003** |
| Worms                          | 0.657 | 0.331  | 0.381 | /     | /       | 0.536    | 0.392   | 0.398 |  **0.0** |
| yoga                           | 0.145 | 0.155  | 0.142 | 0.121 | 0.113   | 0.164    | 0.081   | 0.169 |  0.181 |
| Earthquakes                    | 0.208 | 0.199  | 0.214 | 0.281 | /       | 0.258    | 0.186   | 0.193 |  **0.051** |

## swish activation function

|                                |       |        |       |       |         |          |         |       |       |      |
|--------------------------------|-------|--------|-------|-------|---------|----------|---------|-------|-------|-------| 
|       | **MLP**                | **FCN**   | **ResNet** | **PROP**  | **COTE**  | **1NN-DTW** | **1NN-BOSS** | **BOSS-VS**| **Hilbert Ensemble**| **Ensemble + swish** |
| StarLightCurves                | 0.043 | 0.033  | 0.025 | 0.079 | 0.031   | 0.093    | 0.021   | 0.096 | 0.07  |0.067 |
| yoga                           | 0.145 | 0.155  | 0.142 | 0.121 | 0.113   | 0.164    | 0.081   | 0.169 |  0.16 |0.30|
| Haptics                        | 0.539 | 0.449  | 0.494 | 0.584 | 0.481   | 0.623    | 0.536   | 0.584 | 0.278 |0.40|

swish activation tests:
1. /home/sliu/experiment_multi_curves/structured_test/wins/2_22_62_122_timelag/test_script_source 
2. starlightcurves three channels
3. yoga and starlightcurves ensemble+swish

# Multiple level Hilbert Method
The testing (not training) classification error rate:

MLHD = Multiple level Hilbert Method, testing errors with the minimum training loss.
MLHD-Averaged = Averaged value from ten times run 

|                                |       |        |       |       |         |          |         |       |       |   |
|--------------------------------|-------|--------|-------|-------|---------|----------|---------|-------|-------|-----|
|   TS    | **MLP**                | **FCN**   | **ResNet** | **PROP**  | **COTE**  | **1NN-DTW** | **1NN-BOSS** | **BOSS-VS**| **MLHD**| **MLHD-Averaged** |  
| Computers                      | 0.460 | 0.152  | 0.176 | 0.116 |         | 0.300    | 0.296   | 0.324 | **0.032** |**0.034**|
| Haptics                        | 0.539 | 0.449  | 0.494 | 0.584 | 0.481   | 0.623    | 0.536   | 0.584 | **0.278** |**0.281**|
| MALLAT                         | 0.064 | 0.02   | 0.021 | 0.050 | 0.036   | 0.066    | 0.058   | 0.064 | **0.018** |**0.018**|
| StarLightCurves                | 0.043 | 0.033  | 0.025 | 0.079 | 0.031   | 0.093    | 0.021   | 0.096 | 0.069   | 0.069|
| WormsTwoClass                  | 0.403 | 0.271  | 0.265 | /     | /       | 0.337    | 0.243   | 0.315 |  **0.0**|**0**|
| LargeKitchenAppliances         | 0.520 | 0.104  | 0.107 | 0.232 | /       | 0.205    | 0.280   | 0.304 | **0.0** | **0.0**|
| RefrigerationDevices           | 0.629 | 0.467  | 0.472 | 0.424 | /       | 0.536    | 0.512   | 0.488 |  **0.003**| **0.017** |
| ScreenType                     | 0.592 | 0.333  | 0.293 | 0.440 | /       | 0.603    | 0.544   | 0.464 | **0.035** |**0.036**|
| SmallKitchenAppliances         | 0.611 | 0.197  | 0.203 | 0.187 | /       | 0.357    | 0.200   | 0.221 | **0.003** |**0.004**|
| Worms                          | 0.657 | 0.331  | 0.381 | /     | /       | 0.536    | 0.392   | 0.398 |  **0.0** |**0.0** |
| yoga                           | 0.145 | 0.155  | 0.142 | 0.121 | 0.113   | 0.164    | 0.081   | 0.169 |  0.181 |**0.183**|
| Earthquakes                    | 0.208 | 0.199  | 0.214 | 0.281 | /       | 0.258    | 0.186   | 0.193 |  **0.051** |**0.042**|

## Corrected version(Test error based on minimal train error)
|                                |       |        |       |       |         |          |         |       |       | 
|--------------------------------|-------|--------|-------|-------|---------|----------|---------|-------|-------|
|   TS    | **MLP**                | **FCN**   | **ResNet** | **PROP**  | **COTE**  | **1NN-DTW** | **1NN-BOSS** | **BOSS-VS**| **Multiple-Hilbert-Curves**| 
| Computers                      | 0.460 | 0.152  | 0.176 | 0.116 |         | 0.300    | 0.296   | 0.324 | **0.394** |
| Haptics                        | 0.539 | 0.449  | 0.494 | 0.584 | 0.481   | 0.623    | 0.536   | 0.584 | **0.562** |
| MALLAT                         | 0.064 | 0.02   | 0.021 | 0.050 | 0.036   | 0.066    | 0.058   | 0.064 | **0.068** |
| StarLightCurves                | 0.043 | 0.033  | 0.025 | 0.079 | 0.031   | 0.093    | 0.021   | 0.096 | **0.082**| 
| WormsTwoClass                  | 0.403 | 0.271  | 0.265 | /     | /       | 0.337    | 0.243   | 0.315 |  **0.408**|
| LargeKitchenAppliances         | 0.520 | 0.104  | 0.107 | 0.232 | /       | 0.205    | 0.280   | 0.304 | **0.496** | 
| RefrigerationDevices           | 0.629 | 0.467  | 0.472 | 0.424 | /       | 0.536    | 0.512   | 0.488 |  **0.496**| 
| ScreenType                     | 0.592 | 0.333  | 0.293 | 0.440 | /       | 0.603    | 0.544   | 0.464 | **0.544** |
| SmallKitchenAppliances         | 0.611 | 0.197  | 0.203 | 0.187 | /       | 0.357    | 0.200   | 0.221 | **0.421** |
| Worms                          | 0.657 | 0.331  | 0.381 | /     | /       | 0.536    | 0.392   | 0.398 |  **0.607** |
| yoga                           | 0.145 | 0.155  | 0.142 | 0.121 | 0.113   | 0.164    | 0.081   | 0.169 |  **0.258** |
| Earthquakes                    | 0.208 | 0.199  | 0.214 | 0.281 | /       | 0.258    | 0.186   | 0.193 |  **0.323** |
