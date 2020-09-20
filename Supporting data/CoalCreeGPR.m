%% Machine learning extrapolation GPR method
% To infer the missing USGS dicharge records in 2000 - 2006, we used the 
% machine learning statistical approach Gaussian Process Regression (GPR). 
% We trained a discharge model (Matlab R2018a, Machine Learning Regression 
% Toolbox, 5-fold cross-validation) using the odd years of climate and 
% discharge data from 2006 – 2019, and tested the model using even year 
% data. Specifically, the model uses time series of precipitation, 
% radiation, temperature, pressure, wind speed, SNOTEL data, and discharge 
% data as inputs for training, and output missing discharge data in 2000 –
% 2006. The Nash–Sutcliffe Efficiency (NSE) values for the training and 
% testing were 0.9 and 0.7, respectively, both are higher than the NSE 
% satisfactory criteria of 0.5 and therefore are satisfactory.
% https://github.com/ZhiWei2020/COMMSENV_Stream-Chemistry-Response
% contact: weizhi7367@gmail.com

clc;
clear; 

%% loading input
% meterology forcing
model_meterology = readtable("CoalCreek_meteorology.txt", 'HeaderLines', 2); 

% radiation forcing
model_radiation = readtable("CoalCreek_radiation.txt", 'HeaderLines', 2); 

% radiation forcing
model_snotel = readtable("CoalCreek_SNOTEL.txt", 'HeaderLines', 59); 

% dicharge observation
model_discharge = readtable("CoalCreek_discharge.txt"); 

%% Machine Learning Regression Toolbox instruction
% step 1, go to "APPS" for "Regression Learner"
% step 2, start a new session in the Regression Learner window
% step 3, choose "response" from workspace of model_discharge
% step 4, choose "predictors" from workspace of model_meterology,
%         model_radiation, and model_snotel
% step 5, use default "Cross-validation folds: 5 folds"
% step 6, start session and choose "Gaussian Process Regression Models"
% step 7, start training and view results
% step 8, save model into worspace
% step 9, calculate Nash–Sutcliffe efficiency (NSE)for training and testing
% NSE equation = 1 - sum(Qm - Qo)^2 / sum(Qm - Qo_avg)^2

