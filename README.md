# COMMSENV_Stream-Chemistry-Response
Significant Stream Chemistry Response to Temperature Variations in a High-Elevation Mountain Watershed

**Abstract**: High-elevation mountains are “water towers for humanity” and experience more rapid warming than low elevation locations. High-elevation streams can potentially offer early glimpse of water and soil response to warming. Here we present hydroclimatic and biogeochemical data from Coal Creek, Colorado in the central Rocky Mountains at elevations of 2,700 to 3,700 m, where air temperatures have increased by about 2°C since 1980. We analyze water chemistry every other day from 2016 to 2019. The data indicate distinct responses of different solutes to inter-annual hydroclimatic variations. Specifically, concentrations of solutes from rock weathering remain relatively stable. In contrast, solutes that are active in soils, including dissolved organic carbon, peak during snowmelt, with maximum concentrations in warm years tripling those in cold years and annual average doubling those in cold years. We therefore advocate for persistent monitoring of high-elevation streams for early signs of rapid earth surface response to warming. 

![](figure/StreamChemistryResponse.png)

![](figure/ConcentrationChange.png)

**Data availability**: The daily discharge data (site ID 09111250) and long-term stream chemistry (site ID 385224106590100) is available from the USGS website (https://waterdata.usgs.gov/co/nwis/). The high-frequency stream chemistry data is available at data portal for East River watershed in Colorado, managed by Lawrence Berkeley National Laboratory (https://watershed.lbl.gov/). 

**Machine learning extrapolation**: To infer the missing USGS dicharge records in 2000 - 2006, we used the machine learning statistical approach Gaussian Process Regression (GPR). We trained a discharge model (Matlab R2018a, Machine Learning Regression Toolbox, 5-fold cross-validation) using the odd years of climate and discharge data from 2006 – 2019, and tested the model using even year data. Specifically, the model uses time series of precipitation, radiation, temperature, pressure, wind speed, SNOTEL data, and discharge data as inputs for training, and output missing discharge data in 2000 – 2006. The Nash–Sutcliffe Efficiency (NSE) values for the training and testing were 0.9 and 0.7, respectively, both are higher than the NSE satisfactory criteria of 0.5 and therefore are satisfactory. ***The model code and input data are deposited in the supporting data folder.***

***Supporting data includes Machine Learning model code and inputs such as time-series meteorology, radiation, and SNOTEL data***
